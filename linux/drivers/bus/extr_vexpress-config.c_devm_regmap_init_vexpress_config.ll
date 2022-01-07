; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_devm_regmap_init_vexpress_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_vexpress-config.c_devm_regmap_init_vexpress_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.vexpress_config_bridge = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.regmap* (%struct.device*, i32)* }

@vexpress_config_class = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vexpress_config_devres_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @devm_regmap_init_vexpress_config(%struct.device* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vexpress_config_bridge*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regmap**, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @vexpress_config_class, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.regmap* @ERR_PTR(i32 %19)
  store %struct.regmap* %20, %struct.regmap** %2, align 8
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call %struct.vexpress_config_bridge* @dev_get_drvdata(%struct.TYPE_4__* %24)
  store %struct.vexpress_config_bridge* %25, %struct.vexpress_config_bridge** %4, align 8
  %26 = load %struct.vexpress_config_bridge*, %struct.vexpress_config_bridge** %4, align 8
  %27 = icmp ne %struct.vexpress_config_bridge* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.regmap* @ERR_PTR(i32 %34)
  store %struct.regmap* %35, %struct.regmap** %2, align 8
  br label %71

36:                                               ; preds = %21
  %37 = load i32, i32* @vexpress_config_devres_release, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.regmap** @devres_alloc(i32 %37, i32 8, i32 %38)
  store %struct.regmap** %39, %struct.regmap*** %6, align 8
  %40 = load %struct.regmap**, %struct.regmap*** %6, align 8
  %41 = icmp ne %struct.regmap** %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.regmap* @ERR_PTR(i32 %44)
  store %struct.regmap* %45, %struct.regmap** %2, align 8
  br label %71

46:                                               ; preds = %36
  %47 = load %struct.vexpress_config_bridge*, %struct.vexpress_config_bridge** %4, align 8
  %48 = getelementptr inbounds %struct.vexpress_config_bridge, %struct.vexpress_config_bridge* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.regmap* (%struct.device*, i32)*, %struct.regmap* (%struct.device*, i32)** %50, align 8
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.vexpress_config_bridge*, %struct.vexpress_config_bridge** %4, align 8
  %54 = getelementptr inbounds %struct.vexpress_config_bridge, %struct.vexpress_config_bridge* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.regmap* %51(%struct.device* %52, i32 %55)
  store %struct.regmap* %56, %struct.regmap** %5, align 8
  %57 = load %struct.regmap*, %struct.regmap** %5, align 8
  %58 = call i64 @IS_ERR(%struct.regmap* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.regmap**, %struct.regmap*** %6, align 8
  %62 = call i32 @devres_free(%struct.regmap** %61)
  %63 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %63, %struct.regmap** %2, align 8
  br label %71

64:                                               ; preds = %46
  %65 = load %struct.regmap*, %struct.regmap** %5, align 8
  %66 = load %struct.regmap**, %struct.regmap*** %6, align 8
  store %struct.regmap* %65, %struct.regmap** %66, align 8
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load %struct.regmap**, %struct.regmap*** %6, align 8
  %69 = call i32 @devres_add(%struct.device* %67, %struct.regmap** %68)
  %70 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %70, %struct.regmap** %2, align 8
  br label %71

71:                                               ; preds = %64, %60, %42, %32, %17
  %72 = load %struct.regmap*, %struct.regmap** %2, align 8
  ret %struct.regmap* %72
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.vexpress_config_bridge* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local %struct.regmap** @devres_alloc(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @devres_free(%struct.regmap**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
