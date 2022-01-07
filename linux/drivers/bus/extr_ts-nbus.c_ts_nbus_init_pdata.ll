; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_init_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ts-nbus.c_ts_nbus_init_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ts_nbus = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"ts,data\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to retrieve ts,data-gpio from dts\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ts,csn\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to retrieve ts,csn-gpio from dts\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ts,txrx\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"failed to retrieve ts,txrx-gpio from dts\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ts,strobe\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to retrieve ts,strobe-gpio from dts\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ts,ale\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to retrieve ts,ale-gpio from dts\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ts,rdy\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"failed to retrieve ts,rdy-gpio from dts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ts_nbus*)* @ts_nbus_init_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_nbus_init_pdata(%struct.platform_device* %0, %struct.ts_nbus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ts_nbus*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ts_nbus* %1, %struct.ts_nbus** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %9 = call i8* @devm_gpiod_get_array(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %11 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %13 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %12, i32 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %22 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %21, i32 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %126

25:                                               ; preds = %2
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %29 = call i8* @devm_gpiod_get(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %31 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %33 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %42 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %3, align 4
  br label %126

45:                                               ; preds = %25
  %46 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %49 = call i8* @devm_gpiod_get(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %51 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %53 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %62 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %3, align 4
  br label %126

65:                                               ; preds = %45
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %69 = call i8* @devm_gpiod_get(i32* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %71 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %73 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %81 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %82 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %3, align 4
  br label %126

85:                                               ; preds = %65
  %86 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %89 = call i8* @devm_gpiod_get(i32* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  %90 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %91 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %93 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %85
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %101 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %102 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %3, align 4
  br label %126

105:                                              ; preds = %85
  %106 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* @GPIOD_IN, align 4
  %109 = call i8* @devm_gpiod_get(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  %110 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %111 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %113 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @IS_ERR(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %105
  %118 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %121 = load %struct.ts_nbus*, %struct.ts_nbus** %5, align 8
  %122 = getelementptr inbounds %struct.ts_nbus, %struct.ts_nbus* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @PTR_ERR(i8* %123)
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %117, %97, %77, %57, %37, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i8* @devm_gpiod_get_array(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
