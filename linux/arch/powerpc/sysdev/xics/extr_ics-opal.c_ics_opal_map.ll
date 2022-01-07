; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-opal.c_ics_opal_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-opal.c_ics_opal_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ics = type { i32 }

@XICS_IPI = common dso_local global i32 0, align 4
@XICS_IRQ_SPURIOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ics_opal_irq_chip = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@ics_hal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ics*, i32)* @ics_opal_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics_opal_map(%struct.ics* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ics*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ics* %0, %struct.ics** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @virq_to_hw(i32 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @XICS_IPI, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @XICS_IRQ_SPURIOUS, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ true, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @opal_get_xive(i32 %29, i32* %8, i32* %9)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @OPAL_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @handle_fasteoi_irq, align 4
  %40 = call i32 @irq_set_chip_and_handler(i32 %38, i32* @ics_opal_irq_chip, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @irq_set_chip_data(i32 %41, i32* @ics_hal)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %34, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @virq_to_hw(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @opal_get_xive(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
