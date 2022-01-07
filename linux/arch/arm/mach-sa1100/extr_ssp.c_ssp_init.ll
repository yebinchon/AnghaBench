; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_ssp.c_ssp_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_ssp.c_ssp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPAR = common dso_local global i32 0, align 4
@PPAR_SPR = common dso_local global i32 0, align 4
@Ser4MCCR0 = common dso_local global i32 0, align 4
@MCCR0_MCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@Ser4SSCR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SSP\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SSSR_ROR = common dso_local global i32 0, align 4
@Ser4SSSR = common dso_local global i32 0, align 4
@IRQ_Ser4SSP = common dso_local global i32 0, align 4
@ssp_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PPAR, align 4
  %4 = load i32, i32* @PPAR_SPR, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @Ser4MCCR0, align 4
  %9 = load i32, i32* @MCCR0_MCE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %37

15:                                               ; preds = %7, %0
  %16 = load i32, i32* @Ser4SSCR0, align 4
  %17 = call i32 @__PREG(i32 %16)
  %18 = call i32 @request_mem_region(i32 %17, i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %37

23:                                               ; preds = %15
  %24 = load i32, i32* @SSSR_ROR, align 4
  store i32 %24, i32* @Ser4SSSR, align 4
  %25 = load i32, i32* @IRQ_Ser4SSP, align 4
  %26 = load i32, i32* @ssp_interrupt, align 4
  %27 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %37

32:                                               ; preds = %30
  %33 = load i32, i32* @Ser4SSCR0, align 4
  %34 = call i32 @__PREG(i32 %33)
  %35 = call i32 @release_mem_region(i32 %34, i32 24)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %31, %20, %12
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @__PREG(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
