; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_irq-common.c_mxc_set_irq_fiq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_irq-common.c_mxc_set_irq_fiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { %struct.mxc_extra_irq* }
%struct.mxc_extra_irq = type { i32 (i32, i32)* }
%struct.irq_data = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxc_set_irq_fiq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca %struct.mxc_extra_irq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ENOSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.irq_chip_generic* @irq_get_chip_data(i32 %11)
  store %struct.irq_chip_generic* %12, %struct.irq_chip_generic** %5, align 8
  %13 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %14 = icmp ne %struct.irq_chip_generic* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %17 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %16, i32 0, i32 0
  %18 = load %struct.mxc_extra_irq*, %struct.mxc_extra_irq** %17, align 8
  %19 = icmp ne %struct.mxc_extra_irq* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %22 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %21, i32 0, i32 0
  %23 = load %struct.mxc_extra_irq*, %struct.mxc_extra_irq** %22, align 8
  store %struct.mxc_extra_irq* %23, %struct.mxc_extra_irq** %6, align 8
  %24 = load %struct.mxc_extra_irq*, %struct.mxc_extra_irq** %6, align 8
  %25 = getelementptr inbounds %struct.mxc_extra_irq, %struct.mxc_extra_irq* %24, i32 0, i32 0
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = icmp ne i32 (i32, i32)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.irq_data* @irq_get_irq_data(i32 %29)
  store %struct.irq_data* %30, %struct.irq_data** %8, align 8
  %31 = load %struct.mxc_extra_irq*, %struct.mxc_extra_irq** %6, align 8
  %32 = getelementptr inbounds %struct.mxc_extra_irq, %struct.mxc_extra_irq* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %35 = call i32 @irqd_to_hwirq(%struct.irq_data* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 %33(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %28, %20
  br label %39

39:                                               ; preds = %38, %15, %2
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %struct.irq_chip_generic* @irq_get_chip_data(i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
