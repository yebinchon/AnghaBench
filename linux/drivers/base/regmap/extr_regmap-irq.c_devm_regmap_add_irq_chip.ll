; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_devm_regmap_add_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-irq.c_devm_regmap_add_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.regmap_irq_chip = type { i32 }
%struct.regmap_irq_chip_data = type { i32 }

@devm_regmap_irq_chip_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_regmap_add_irq_chip(%struct.device* %0, %struct.regmap* %1, i32 %2, i32 %3, i32 %4, %struct.regmap_irq_chip* %5, %struct.regmap_irq_chip_data** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.regmap_irq_chip*, align 8
  %15 = alloca %struct.regmap_irq_chip_data**, align 8
  %16 = alloca %struct.regmap_irq_chip_data**, align 8
  %17 = alloca %struct.regmap_irq_chip_data*, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.regmap* %1, %struct.regmap** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.regmap_irq_chip* %5, %struct.regmap_irq_chip** %14, align 8
  store %struct.regmap_irq_chip_data** %6, %struct.regmap_irq_chip_data*** %15, align 8
  %19 = load i32, i32* @devm_regmap_irq_chip_release, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.regmap_irq_chip_data** @devres_alloc(i32 %19, i32 8, i32 %20)
  store %struct.regmap_irq_chip_data** %21, %struct.regmap_irq_chip_data*** %16, align 8
  %22 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %16, align 8
  %23 = icmp ne %struct.regmap_irq_chip_data** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %48

27:                                               ; preds = %7
  %28 = load %struct.regmap*, %struct.regmap** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %14, align 8
  %33 = call i32 @regmap_add_irq_chip(%struct.regmap* %28, i32 %29, i32 %30, i32 %31, %struct.regmap_irq_chip* %32, %struct.regmap_irq_chip_data** %17)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %16, align 8
  %38 = call i32 @devres_free(%struct.regmap_irq_chip_data** %37)
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %17, align 8
  %42 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %16, align 8
  store %struct.regmap_irq_chip_data* %41, %struct.regmap_irq_chip_data** %42, align 8
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %16, align 8
  %45 = call i32 @devres_add(%struct.device* %43, %struct.regmap_irq_chip_data** %44)
  %46 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %17, align 8
  %47 = load %struct.regmap_irq_chip_data**, %struct.regmap_irq_chip_data*** %15, align 8
  store %struct.regmap_irq_chip_data* %46, %struct.regmap_irq_chip_data** %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %40, %36, %24
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.regmap_irq_chip_data** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.regmap*, i32, i32, i32, %struct.regmap_irq_chip*, %struct.regmap_irq_chip_data**) #1

declare dso_local i32 @devres_free(%struct.regmap_irq_chip_data**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regmap_irq_chip_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
