; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.TYPE_6__*, %struct.counter_device_state* }
%struct.TYPE_6__ = type { i32 }
%struct.counter_device_state = type { i32, i32, i32, %struct.counter_device_state*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@counter_ida = common dso_local global i32 0, align 4
@counter_device_type = common dso_local global i32 0, align 4
@counter_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"counter%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_register(%struct.counter_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.counter_device*, align 8
  %4 = alloca %struct.counter_device_state*, align 8
  %5 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.counter_device_state* @kzalloc(i32 56, i32 %6)
  store %struct.counter_device_state* %7, %struct.counter_device_state** %4, align 8
  %8 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %9 = icmp ne %struct.counter_device_state* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %15 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %16 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %15, i32 0, i32 1
  store %struct.counter_device_state* %14, %struct.counter_device_state** %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @ida_simple_get(i32* @counter_ida, i32 0, i32 0, i32 %17)
  %19 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %20 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %22 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %27 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %106

29:                                               ; preds = %13
  %30 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %31 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  store i32* @counter_device_type, i32** %32, align 8
  %33 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %34 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32* @counter_bus_type, i32** %35, align 8
  %36 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %37 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %29
  %41 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %42 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %45 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %48 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %53 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %40, %29
  %56 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %57 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %56, i32 0, i32 4
  %58 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %59 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_set_name(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %63 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %62, i32 0, i32 4
  %64 = call i32 @device_initialize(%struct.TYPE_7__* %63)
  %65 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %66 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %65, i32 0, i32 4
  %67 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %68 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %66, %struct.counter_device* %67)
  %69 = load %struct.counter_device*, %struct.counter_device** %3, align 8
  %70 = call i32 @counter_device_groups_list_prepare(%struct.counter_device* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %101

74:                                               ; preds = %55
  %75 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %76 = call i32 @counter_device_groups_prepare(%struct.counter_device_state* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %93

80:                                               ; preds = %74
  %81 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %82 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %81, i32 0, i32 4
  %83 = call i32 @device_add(%struct.TYPE_7__* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %110

88:                                               ; preds = %86
  %89 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %90 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %89, i32 0, i32 3
  %91 = load %struct.counter_device_state*, %struct.counter_device_state** %90, align 8
  %92 = call i32 @kfree(%struct.counter_device_state* %91)
  br label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %95 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %98 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @counter_device_groups_list_free(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %93, %73
  %102 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %103 = getelementptr inbounds %struct.counter_device_state, %struct.counter_device_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ida_simple_remove(i32* @counter_ida, i32 %104)
  br label %106

106:                                              ; preds = %101, %25
  %107 = load %struct.counter_device_state*, %struct.counter_device_state** %4, align 8
  %108 = call i32 @kfree(%struct.counter_device_state* %107)
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %87, %10
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.counter_device_state* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.counter_device*) #1

declare dso_local i32 @counter_device_groups_list_prepare(%struct.counter_device*) #1

declare dso_local i32 @counter_device_groups_prepare(%struct.counter_device_state*) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.counter_device_state*) #1

declare dso_local i32 @counter_device_groups_list_free(i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
