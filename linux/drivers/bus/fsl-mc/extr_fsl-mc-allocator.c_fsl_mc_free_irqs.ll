; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-allocator.c_fsl_mc_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.fsl_mc_device_irq**, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.fsl_mc_device_irq = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsl_mc_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_free_irqs(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_bus*, align 8
  %6 = alloca %struct.fsl_mc_device_irq**, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %7 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %7, i32 0, i32 0
  %9 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %8, align 8
  store %struct.fsl_mc_device_irq** %9, %struct.fsl_mc_device_irq*** %6, align 8
  %10 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %6, align 8
  %11 = icmp ne %struct.fsl_mc_device_irq** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %19 = call i64 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %23 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %22)
  store %struct.fsl_mc_bus* %23, %struct.fsl_mc_bus** %5, align 8
  br label %31

24:                                               ; preds = %13
  %25 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %26 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.fsl_mc_device* @to_fsl_mc_device(i32 %28)
  %30 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %29)
  store %struct.fsl_mc_bus* %30, %struct.fsl_mc_bus** %5, align 8
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %62

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %43, i64 %45
  %47 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %46, align 8
  %48 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %6, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %49, i64 %51
  %53 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %52, align 8
  %54 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %53, i32 0, i32 0
  %55 = call i32 @fsl_mc_resource_free(i32* %54)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %61 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %60, i32 0, i32 0
  store %struct.fsl_mc_device_irq** null, %struct.fsl_mc_device_irq*** %61, align 8
  br label %62

62:                                               ; preds = %59, %36, %12
  ret void
}

declare dso_local i64 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device*) #1

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(i32) #1

declare dso_local i32 @fsl_mc_resource_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
