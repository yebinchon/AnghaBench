; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_val_endian.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_val_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap_bus = type { i32 }
%struct.regmap_config = type { i32 }

@REGMAP_ENDIAN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@REGMAP_ENDIAN_BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@REGMAP_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"native-endian\00", align 1
@REGMAP_ENDIAN_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_get_val_endian(%struct.device* %0, %struct.regmap_bus* %1, %struct.regmap_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap_bus*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap_bus* %1, %struct.regmap_bus** %6, align 8
  store %struct.regmap_config* %2, %struct.regmap_config** %7, align 8
  %10 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %11 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @REGMAP_ENDIAN_DEFAULT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  store %struct.device_node* %29, %struct.device_node** %8, align 8
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = call i64 @of_property_read_bool(%struct.device_node* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @REGMAP_ENDIAN_BIG, align 4
  store i32 %34, i32* %9, align 4
  br label %49

35:                                               ; preds = %26
  %36 = load %struct.device_node*, %struct.device_node** %8, align 8
  %37 = call i64 @of_property_read_bool(%struct.device_node* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @REGMAP_ENDIAN_LITTLE, align 4
  store i32 %40, i32* %9, align 4
  br label %48

41:                                               ; preds = %35
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = call i64 @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @REGMAP_ENDIAN_NATIVE, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @REGMAP_ENDIAN_DEFAULT, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %21, %18
  %57 = load %struct.regmap_bus*, %struct.regmap_bus** %6, align 8
  %58 = icmp ne %struct.regmap_bus* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.regmap_bus*, %struct.regmap_bus** %6, align 8
  %61 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.regmap_bus*, %struct.regmap_bus** %6, align 8
  %66 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %59, %56
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @REGMAP_ENDIAN_DEFAULT, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @REGMAP_ENDIAN_BIG, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %53, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
