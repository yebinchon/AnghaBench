; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i2c.c_regmap_get_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i2c.c_regmap_get_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_bus = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.regmap_config = type { i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@regmap_i2c = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@regmap_i2c_smbus_i2c_block = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@regmap_smbus_word = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@regmap_smbus_word_swapped = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@regmap_smbus_byte = common dso_local global %struct.regmap_bus zeroinitializer, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap_bus* (%struct.i2c_client*, %struct.regmap_config*)* @regmap_get_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap_bus* @regmap_get_i2c_bus(%struct.i2c_client* %0, %struct.regmap_config* %1) #0 {
  %3 = alloca %struct.regmap_bus*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.regmap_config*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %5, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @I2C_FUNC_I2C, align 4
  %10 = call i64 @i2c_check_functionality(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.regmap_bus* @regmap_i2c, %struct.regmap_bus** %3, align 8
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %15 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %20 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %28 = call i64 @i2c_check_functionality(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.regmap_bus* @regmap_i2c_smbus_i2c_block, %struct.regmap_bus** %3, align 8
  br label %82

31:                                               ; preds = %23, %18, %13
  %32 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %33 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %38 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %46 = call i64 @i2c_check_functionality(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %52 = call i32 @regmap_get_val_endian(i32* %50, i32* null, %struct.regmap_config* %51)
  switch i32 %52, label %55 [
    i32 128, label %53
    i32 129, label %54
  ]

53:                                               ; preds = %48
  store %struct.regmap_bus* @regmap_smbus_word, %struct.regmap_bus** %3, align 8
  br label %82

54:                                               ; preds = %48
  store %struct.regmap_bus* @regmap_smbus_word_swapped, %struct.regmap_bus** %3, align 8
  br label %82

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  br label %76

57:                                               ; preds = %41, %36, %31
  %58 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %59 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %64 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %72 = call i64 @i2c_check_functionality(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store %struct.regmap_bus* @regmap_smbus_byte, %struct.regmap_bus** %3, align 8
  br label %82

75:                                               ; preds = %67, %62, %57
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* @ENOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.regmap_bus* @ERR_PTR(i32 %80)
  store %struct.regmap_bus* %81, %struct.regmap_bus** %3, align 8
  br label %82

82:                                               ; preds = %78, %74, %54, %53, %30, %12
  %83 = load %struct.regmap_bus*, %struct.regmap_bus** %3, align 8
  ret %struct.regmap_bus* %83
}

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @regmap_get_val_endian(i32*, i32*, %struct.regmap_config*) #1

declare dso_local %struct.regmap_bus* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
