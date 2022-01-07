; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i2c.c_regmap_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-i2c.c_regmap_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i64, i8*, i64, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @regmap_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_i2c_read(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca [2 x %struct.i2c_msg], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.device*
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.device*, %struct.device** %12, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %13, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i64 0, i64* %26, align 16
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 16
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 1
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @I2C_M_RD, align 8
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 1
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 16
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 1
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %51 = call i32 @i2c_transfer(i32 %49, %struct.i2c_msg* %50, i32 2)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

55:                                               ; preds = %5
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %6, align 4
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %58, %54
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
