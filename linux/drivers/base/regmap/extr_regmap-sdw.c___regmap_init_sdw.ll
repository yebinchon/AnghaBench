; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-sdw.c___regmap_init_sdw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-sdw.c___regmap_init_sdw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.sdw_slave = type { i32 }
%struct.regmap_config = type { i32 }
%struct.lock_class_key = type { i32 }

@regmap_sdw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__regmap_init_sdw(%struct.sdw_slave* %0, %struct.regmap_config* %1, %struct.lock_class_key* %2, i8* %3) #0 {
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.sdw_slave*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %6, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %7, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %12 = call i32 @regmap_sdw_config_check(%struct.regmap_config* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.regmap* @ERR_PTR(i32 %16)
  store %struct.regmap* %17, %struct.regmap** %5, align 8
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %20 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %19, i32 0, i32 0
  %21 = load %struct.sdw_slave*, %struct.sdw_slave** %6, align 8
  %22 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %21, i32 0, i32 0
  %23 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %24 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.regmap* @__regmap_init(i32* %20, i32* @regmap_sdw, i32* %22, %struct.regmap_config* %23, %struct.lock_class_key* %24, i8* %25)
  store %struct.regmap* %26, %struct.regmap** %5, align 8
  br label %27

27:                                               ; preds = %18, %15
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  ret %struct.regmap* %28
}

declare dso_local i32 @regmap_sdw_config_check(%struct.regmap_config*) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @__regmap_init(i32*, i32*, i32*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
