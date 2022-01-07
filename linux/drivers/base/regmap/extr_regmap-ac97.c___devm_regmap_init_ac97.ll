; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-ac97.c___devm_regmap_init_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-ac97.c___devm_regmap_init_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.snd_ac97 = type { i32 }
%struct.regmap_config = type { i32 }
%struct.lock_class_key = type { i32 }

@ac97_regmap_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__devm_regmap_init_ac97(%struct.snd_ac97* %0, %struct.regmap_config* %1, %struct.lock_class_key* %2, i8* %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca %struct.lock_class_key*, align 8
  %8 = alloca i8*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %6, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %12 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %13 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.regmap* @__devm_regmap_init(i32* %10, i32* @ac97_regmap_bus, %struct.snd_ac97* %11, %struct.regmap_config* %12, %struct.lock_class_key* %13, i8* %14)
  ret %struct.regmap* %15
}

declare dso_local %struct.regmap* @__devm_regmap_init(i32*, i32*, %struct.snd_ac97*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
