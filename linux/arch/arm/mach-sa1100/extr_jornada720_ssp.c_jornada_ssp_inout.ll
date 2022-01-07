; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_jornada720_ssp.c_jornada_ssp_inout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_jornada720_ssp.c_jornada_ssp_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TXDUMMY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jornada_ssp_inout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TXDUMMY, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @jornada_ssp_byte(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TXDUMMY, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %25, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* @TXDUMMY, align 4
  %21 = call i32 @jornada_ssp_byte(i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %28

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %16

28:                                               ; preds = %23, %16
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %9
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @TXDUMMY, align 4
  %34 = call i32 @jornada_ssp_byte(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @jornada_ssp_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
