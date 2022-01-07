; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c___devm_regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c___devm_regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.regmap_bus = type { i32 }
%struct.regmap_config = type { i32 }
%struct.lock_class_key = type { i32 }

@devm_regmap_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__devm_regmap_init(%struct.device* %0, %struct.regmap_bus* %1, i8* %2, %struct.regmap_config* %3, %struct.lock_class_key* %4, i8* %5) #0 {
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regmap_bus*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.regmap_config*, align 8
  %12 = alloca %struct.lock_class_key*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.regmap**, align 8
  %15 = alloca %struct.regmap*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.regmap_bus* %1, %struct.regmap_bus** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.regmap_config* %3, %struct.regmap_config** %11, align 8
  store %struct.lock_class_key* %4, %struct.lock_class_key** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @devm_regmap_release, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.regmap** @devres_alloc(i32 %16, i32 8, i32 %17)
  store %struct.regmap** %18, %struct.regmap*** %14, align 8
  %19 = load %struct.regmap**, %struct.regmap*** %14, align 8
  %20 = icmp ne %struct.regmap** %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.regmap* @ERR_PTR(i32 %23)
  store %struct.regmap* %24, %struct.regmap** %7, align 8
  br label %47

25:                                               ; preds = %6
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %30 = load %struct.lock_class_key*, %struct.lock_class_key** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call %struct.regmap* @__regmap_init(%struct.device* %26, %struct.regmap_bus* %27, i8* %28, %struct.regmap_config* %29, %struct.lock_class_key* %30, i8* %31)
  store %struct.regmap* %32, %struct.regmap** %15, align 8
  %33 = load %struct.regmap*, %struct.regmap** %15, align 8
  %34 = call i32 @IS_ERR(%struct.regmap* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.regmap*, %struct.regmap** %15, align 8
  %38 = load %struct.regmap**, %struct.regmap*** %14, align 8
  store %struct.regmap* %37, %struct.regmap** %38, align 8
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load %struct.regmap**, %struct.regmap*** %14, align 8
  %41 = call i32 @devres_add(%struct.device* %39, %struct.regmap** %40)
  br label %45

42:                                               ; preds = %25
  %43 = load %struct.regmap**, %struct.regmap*** %14, align 8
  %44 = call i32 @devres_free(%struct.regmap** %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %46, %struct.regmap** %7, align 8
  br label %47

47:                                               ; preds = %45, %21
  %48 = load %struct.regmap*, %struct.regmap** %7, align 8
  ret %struct.regmap* %48
}

declare dso_local %struct.regmap** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @__regmap_init(%struct.device*, %struct.regmap_bus*, i8*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regmap**) #1

declare dso_local i32 @devres_free(%struct.regmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
