; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_connect.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.input_handler = type { i32 }
%struct.input_dev = type { i32, i32 }
%struct.input_device_id = type { i32 }
%struct.bh_priv = type { i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.input_handler*, %struct.input_dev*, %struct.bh_priv* }

@button_map = common dso_local global %struct.TYPE_7__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"connected to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @button_hotplug_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_hotplug_connect(%struct.input_handler* %0, %struct.input_dev* %1, %struct.input_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_device_id*, align 8
  %8 = alloca %struct.bh_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store %struct.input_device_id* %2, %struct.input_device_id** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @button_map, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @button_map, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @test_bit(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @button_map, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @button_map, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %42)
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = add i64 40, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.bh_priv* @kzalloc(i32 %47, i32 %48)
  store %struct.bh_priv* %49, %struct.bh_priv** %8, align 8
  %50 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %51 = icmp ne %struct.bh_priv* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %103

55:                                               ; preds = %41
  %56 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %57 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %56, i64 1
  %58 = bitcast %struct.bh_priv* %57 to i64*
  %59 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %60 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %59, i32 0, i32 0
  store i64* %58, i64** %60, align 8
  %61 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %62 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %63 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store %struct.bh_priv* %61, %struct.bh_priv** %64, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %67 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store %struct.input_dev* %65, %struct.input_dev** %68, align 8
  %69 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %70 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %71 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store %struct.input_handler* %69, %struct.input_handler** %72, align 8
  %73 = load i32, i32* @DRV_NAME, align 4
  %74 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %75 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %78 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %77, i32 0, i32 1
  %79 = call i32 @input_register_handle(%struct.TYPE_6__* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %55
  br label %99

83:                                               ; preds = %55
  %84 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %85 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %84, i32 0, i32 1
  %86 = call i32 @input_open_device(%struct.TYPE_6__* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %95

90:                                               ; preds = %83
  %91 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BH_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32 0, i32* %4, align 4
  br label %103

95:                                               ; preds = %89
  %96 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %97 = getelementptr inbounds %struct.bh_priv, %struct.bh_priv* %96, i32 0, i32 1
  %98 = call i32 @input_unregister_handle(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %95, %82
  %100 = load %struct.bh_priv*, %struct.bh_priv** %8, align 8
  %101 = call i32 @kfree(%struct.bh_priv* %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %90, %52, %38
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.bh_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @input_register_handle(%struct.TYPE_6__*) #1

declare dso_local i32 @input_open_device(%struct.TYPE_6__*) #1

declare dso_local i32 @BH_DBG(i8*, i32) #1

declare dso_local i32 @input_unregister_handle(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.bh_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
