; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i3c.c___devm_regmap_init_i3c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i3c.c___devm_regmap_init_i3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.i3c_device = type { i32 }
%struct.regmap_config = type { i32 }
%struct.lock_class_key = type { i32 }

@regmap_i3c = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__devm_regmap_init_i3c(%struct.i3c_device* %0, %struct.regmap_config* %1, %struct.lock_class_key* %2, i8* %3) #0 {
  %5 = alloca %struct.i3c_device*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca %struct.lock_class_key*, align 8
  %8 = alloca i8*, align 8
  store %struct.i3c_device* %0, %struct.i3c_device** %5, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %6, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.i3c_device*, %struct.i3c_device** %5, align 8
  %10 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %9, i32 0, i32 0
  %11 = load %struct.i3c_device*, %struct.i3c_device** %5, align 8
  %12 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %11, i32 0, i32 0
  %13 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %14 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.regmap* @__devm_regmap_init(i32* %10, i32* @regmap_i3c, i32* %12, %struct.regmap_config* %13, %struct.lock_class_key* %14, i8* %15)
  ret %struct.regmap* %16
}

declare dso_local %struct.regmap* @__devm_regmap_init(i32*, i32*, i32*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
