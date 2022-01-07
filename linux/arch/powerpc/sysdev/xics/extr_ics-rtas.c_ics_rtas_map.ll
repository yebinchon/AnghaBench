; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-rtas.c_ics_rtas_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-rtas.c_ics_rtas_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ics = type { i32 }

@XICS_IPI = common dso_local global i32 0, align 4
@XICS_IRQ_SPURIOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ibm_get_xive = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ics_rtas_irq_chip = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@ics_rtas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ics*, i32)* @ics_rtas_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics_rtas_map(%struct.ics* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ics*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.ics* %0, %struct.ics** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @virq_to_hw(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @XICS_IPI, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @XICS_IRQ_SPURIOUS, align 4
  %18 = icmp eq i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %19
  %28 = load i32, i32* @ibm_get_xive, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rtas_call(i32 %28, i32 1, i32 3, i32* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @handle_fasteoi_irq, align 4
  %40 = call i32 @irq_set_chip_and_handler(i32 %38, i32* @ics_rtas_irq_chip, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @irq_set_chip_data(i32 %41, i32* @ics_rtas)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %34, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @virq_to_hw(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
