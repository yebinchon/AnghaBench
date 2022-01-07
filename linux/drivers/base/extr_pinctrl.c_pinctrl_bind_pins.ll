; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_pinctrl.c_pinctrl_bind_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_pinctrl.c_pinctrl_bind_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no pinctrl handle\0A\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no default pinctrl state\0A\00", align 1
@PINCTRL_STATE_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no init pinctrl state\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to activate initial pinctrl state\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PINCTRL_STATE_IDLE = common dso_local global i32 0, align 4
@PINCTRL_STATE_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_bind_pins(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %149

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_3__* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %149

23:                                               ; preds = %10
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i8* @devm_pinctrl_get(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %4, align 4
  br label %127

46:                                               ; preds = %23
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %53 = call i8* @pinctrl_lookup_state(i8* %51, i32 %52)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i8* %53, i8** %57, align 8
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %46
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %120

68:                                               ; preds = %46
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @PINCTRL_STATE_INIT, align 4
  %75 = call i8* @pinctrl_lookup_state(i8* %73, i32 %74)
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i8* %75, i8** %79, align 8
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @pinctrl_select_state(i8* %94, i8* %99)
  store i32 %100, i32* %4, align 4
  br label %113

101:                                              ; preds = %68
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @pinctrl_select_state(i8* %106, i8* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %101, %87
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.device*, %struct.device** %3, align 8
  %118 = call i32 @dev_dbg(%struct.device* %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %120

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %149

120:                                              ; preds = %116, %65
  %121 = load %struct.device*, %struct.device** %3, align 8
  %122 = getelementptr inbounds %struct.device, %struct.device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @devm_pinctrl_put(i8* %125)
  br label %127

127:                                              ; preds = %120, %37
  %128 = load %struct.device*, %struct.device** %3, align 8
  %129 = load %struct.device*, %struct.device** %3, align 8
  %130 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @devm_kfree(%struct.device* %128, %struct.TYPE_3__* %131)
  %133 = load %struct.device*, %struct.device** %3, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @EPROBE_DEFER, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %149

141:                                              ; preds = %127
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %149

148:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %146, %139, %119, %20, %9
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_3__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i32) #1

declare dso_local i32 @pinctrl_select_state(i8*, i8*) #1

declare dso_local i32 @devm_pinctrl_put(i8*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
