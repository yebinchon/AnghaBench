; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.btmtkuart_dev = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Should assign RXD to LOW at boot stage\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @btmtkuart_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_parse_dt(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.btmtkuart_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %8 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %9 = call %struct.btmtkuart_dev* @serdev_device_get_drvdata(%struct.serdev_device* %8)
  store %struct.btmtkuart_dev* %9, %struct.btmtkuart_dev** %4, align 8
  %10 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %11 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  store i32 921600, i32* %6, align 4
  %14 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %15 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %154

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %22 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %24 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %23, i32 0, i32 0
  %25 = call i8* @devm_regulator_get(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %27 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %29 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %28, i32 0, i32 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %35 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %34, i32 0, i32 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %177

39:                                               ; preds = %17
  %40 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %41 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %40, i32 0, i32 0
  %42 = call i8* @devm_clk_get_optional(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %44 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %46 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %52 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %51, i32 0, i32 7
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %177

56:                                               ; preds = %39
  %57 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %58 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %57, i32 0, i32 0
  %59 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %60 = call i8* @devm_gpiod_get_optional(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %62 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %64 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %70 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %177

74:                                               ; preds = %56
  %75 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %76 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %75, i32 0, i32 0
  %77 = call i8* @devm_pinctrl_get(%struct.TYPE_7__* %76)
  %78 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %79 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %81 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %87 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %177

91:                                               ; preds = %74
  %92 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %93 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @pinctrl_lookup_state(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %97 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %99 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %91
  %104 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %105 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %104, i32 0, i32 6
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %110 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %7, align 4
  %113 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %114 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %113, i32 0, i32 0
  %115 = call i32 @dev_err(%struct.TYPE_7__* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %177

117:                                              ; preds = %103, %91
  %118 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %119 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @pinctrl_lookup_state(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %122 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %123 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %125 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %117
  %130 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %131 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @PTR_ERR(i8* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %177

135:                                              ; preds = %117
  %136 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %137 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %136, i32 0, i32 0
  %138 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %139 = call i8* @devm_gpiod_get_optional(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %141 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %143 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @IS_ERR(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %135
  %148 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %149 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @PTR_ERR(i8* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %177

153:                                              ; preds = %135
  br label %176

154:                                              ; preds = %1
  %155 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %156 = call i64 @btmtkuart_is_builtin_soc(%struct.btmtkuart_dev* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %160 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %159, i32 0, i32 0
  %161 = call i8* @devm_clk_get(%struct.TYPE_7__* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %162 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %163 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %165 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @IS_ERR(i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %158
  %170 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %171 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @PTR_ERR(i8* %172)
  store i32 %173, i32* %2, align 4
  br label %177

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %153
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %169, %147, %129, %108, %85, %68, %50, %33
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.btmtkuart_dev* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get_optional(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i8* @devm_pinctrl_get(%struct.TYPE_7__*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @btmtkuart_is_builtin_soc(%struct.btmtkuart_dev*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
