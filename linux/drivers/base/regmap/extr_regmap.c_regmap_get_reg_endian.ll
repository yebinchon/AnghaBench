; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_reg_endian.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_reg_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_bus = type { i32 }
%struct.regmap_config = type { i32 }

@REGMAP_ENDIAN_DEFAULT = common dso_local global i32 0, align 4
@REGMAP_ENDIAN_BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap_bus*, %struct.regmap_config*)* @regmap_get_reg_endian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_get_reg_endian(%struct.regmap_bus* %0, %struct.regmap_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap_bus*, align 8
  %5 = alloca %struct.regmap_config*, align 8
  %6 = alloca i32, align 4
  store %struct.regmap_bus* %0, %struct.regmap_bus** %4, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %5, align 8
  %7 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %8 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @REGMAP_ENDIAN_DEFAULT, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.regmap_bus*, %struct.regmap_bus** %4, align 8
  %17 = icmp ne %struct.regmap_bus* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.regmap_bus*, %struct.regmap_bus** %4, align 8
  %20 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.regmap_bus*, %struct.regmap_bus** %4, align 8
  %25 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %18, %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @REGMAP_ENDIAN_DEFAULT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @REGMAP_ENDIAN_BIG, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
