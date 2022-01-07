; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-w1.c___devm_regmap_init_w1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-w1.c___devm_regmap_init_w1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.regmap_config = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.regmap_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__devm_regmap_init_w1(%struct.device* %0, %struct.regmap_config* %1, %struct.lock_class_key* %2, i8* %3) #0 {
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.regmap_bus*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %7, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %13 = call %struct.regmap_bus* @regmap_get_w1_bus(%struct.device* %11, %struct.regmap_config* %12)
  store %struct.regmap_bus* %13, %struct.regmap_bus** %10, align 8
  %14 = load %struct.regmap_bus*, %struct.regmap_bus** %10, align 8
  %15 = call i64 @IS_ERR(%struct.regmap_bus* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.regmap_bus*, %struct.regmap_bus** %10, align 8
  %19 = call %struct.regmap* @ERR_CAST(%struct.regmap_bus* %18)
  store %struct.regmap* %19, %struct.regmap** %5, align 8
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.regmap_bus*, %struct.regmap_bus** %10, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %25 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call %struct.regmap* @__devm_regmap_init(%struct.device* %21, %struct.regmap_bus* %22, %struct.device* %23, %struct.regmap_config* %24, %struct.lock_class_key* %25, i8* %26)
  store %struct.regmap* %27, %struct.regmap** %5, align 8
  br label %28

28:                                               ; preds = %20, %17
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  ret %struct.regmap* %29
}

declare dso_local %struct.regmap_bus* @regmap_get_w1_bus(%struct.device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.regmap_bus*) #1

declare dso_local %struct.regmap* @ERR_CAST(%struct.regmap_bus*) #1

declare dso_local %struct.regmap* @__devm_regmap_init(%struct.device*, %struct.regmap_bus*, %struct.device*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
