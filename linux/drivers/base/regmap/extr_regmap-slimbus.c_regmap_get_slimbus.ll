; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-slimbus.c_regmap_get_slimbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-slimbus.c_regmap_get_slimbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_bus = type { i32 }
%struct.slim_device = type { i32 }
%struct.regmap_config = type { i32, i32 }

@regmap_slimbus_bus = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap_bus* (%struct.slim_device*, %struct.regmap_config*)* @regmap_get_slimbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap_bus* @regmap_get_slimbus(%struct.slim_device* %0, %struct.regmap_config* %1) #0 {
  %3 = alloca %struct.regmap_bus*, align 8
  %4 = alloca %struct.slim_device*, align 8
  %5 = alloca %struct.regmap_config*, align 8
  store %struct.slim_device* %0, %struct.slim_device** %4, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %5, align 8
  %6 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %7 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %12 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.regmap_bus* @regmap_slimbus_bus, %struct.regmap_bus** %3, align 8
  br label %20

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.regmap_bus* @ERR_PTR(i32 %18)
  store %struct.regmap_bus* %19, %struct.regmap_bus** %3, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.regmap_bus*, %struct.regmap_bus** %3, align 8
  ret %struct.regmap_bus* %21
}

declare dso_local %struct.regmap_bus* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
