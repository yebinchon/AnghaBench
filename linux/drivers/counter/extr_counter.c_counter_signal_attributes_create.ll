; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_attributes_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_attributes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.counter_signal = type { i32 }
%struct.counter_signal_unit = type { %struct.counter_signal* }
%struct.counter_attr_parm = type { i8*, i8*, %struct.counter_signal_unit*, i32*, i32*, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@counter_signal_show = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*, %struct.counter_signal*)* @counter_signal_attributes_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_signal_attributes_create(%struct.counter_device_attr_group* %0, %struct.counter_device* %1, %struct.counter_signal* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device_attr_group*, align 8
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_signal*, align 8
  %8 = alloca %struct.counter_signal_unit*, align 8
  %9 = alloca %struct.counter_attr_parm, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %5, align 8
  store %struct.counter_device* %1, %struct.counter_device** %6, align 8
  store %struct.counter_signal* %2, %struct.counter_signal** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.counter_signal_unit* @kmalloc(i32 8, i32 %11)
  store %struct.counter_signal_unit* %12, %struct.counter_signal_unit** %8, align 8
  %13 = load %struct.counter_signal_unit*, %struct.counter_signal_unit** %8, align 8
  %14 = icmp ne %struct.counter_signal_unit* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.counter_signal*, %struct.counter_signal** %7, align 8
  %20 = load %struct.counter_signal_unit*, %struct.counter_signal_unit** %8, align 8
  %21 = getelementptr inbounds %struct.counter_signal_unit, %struct.counter_signal_unit* %20, i32 0, i32 0
  store %struct.counter_signal* %19, %struct.counter_signal** %21, align 8
  %22 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %23 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %22, %struct.counter_device_attr_group** %23, align 8
  %24 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %27 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32*, i32** @counter_signal_show, align 8
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32* [ %33, %32 ], [ null, %34 ]
  %37 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.counter_signal_unit*, %struct.counter_signal_unit** %8, align 8
  %40 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store %struct.counter_signal_unit* %39, %struct.counter_signal_unit** %40, align 8
  %41 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.counter_signal_unit*, %struct.counter_signal_unit** %8, align 8
  %46 = call i32 @kfree(%struct.counter_signal_unit* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %70

48:                                               ; preds = %35
  %49 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %50 = load %struct.counter_signal*, %struct.counter_signal** %7, align 8
  %51 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @counter_name_attribute_create(%struct.counter_device_attr_group* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %65

57:                                               ; preds = %48
  %58 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %59 = load %struct.counter_signal*, %struct.counter_signal** %7, align 8
  %60 = call i32 @counter_signal_ext_register(%struct.counter_device_attr_group* %58, %struct.counter_signal* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %63, %56
  %66 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %67 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %66, i32 0, i32 0
  %68 = call i32 @counter_device_attr_list_free(i32* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %64, %44, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.counter_signal_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_signal_unit*) #1

declare dso_local i32 @counter_name_attribute_create(%struct.counter_device_attr_group*, i32) #1

declare dso_local i32 @counter_signal_ext_register(%struct.counter_device_attr_group*, %struct.counter_signal*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
