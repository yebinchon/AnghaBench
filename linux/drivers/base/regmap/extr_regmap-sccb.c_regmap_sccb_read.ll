; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-sccb.c_regmap_sccb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-sccb.c_regmap_sccb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @regmap_sccb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_sccb_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.i2c_smbus_data, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %19 = call i32 @i2c_lock_bus(i32 %17, i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %32 = call i32 @__i2c_smbus_xfer(i32 %22, i32 %25, i32 %28, i32 %29, i32 %30, i32 %31, %union.i2c_smbus_data* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %56

36:                                               ; preds = %3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I2C_SMBUS_READ, align 4
  %47 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %48 = call i32 @__i2c_smbus_xfer(i32 %39, i32 %42, i32 %45, i32 %46, i32 0, i32 %47, %union.i2c_smbus_data* %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %56

52:                                               ; preds = %36
  %53 = bitcast %union.i2c_smbus_data* %10 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %51, %35
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %61 = call i32 @i2c_unlock_bus(i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @__i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
