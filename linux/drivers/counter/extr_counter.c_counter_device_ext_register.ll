; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_device_ext_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.counter_ext_unit = type { %struct.TYPE_2__* }
%struct.counter_attr_parm = type { i8*, %struct.counter_ext_unit*, i32*, i32*, i32, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@counter_device_ext_show = common dso_local global i32* null, align 8
@counter_device_ext_store = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*)* @counter_device_ext_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_device_ext_register(%struct.counter_device_attr_group* %0, %struct.counter_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.counter_ext_unit*, align 8
  %8 = alloca %struct.counter_attr_parm, align 8
  %9 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_device* %1, %struct.counter_device** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %13 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.counter_ext_unit* @kmalloc(i32 8, i32 %17)
  store %struct.counter_ext_unit* %18, %struct.counter_ext_unit** %7, align 8
  %19 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %7, align 8
  %20 = icmp ne %struct.counter_ext_unit* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %84

24:                                               ; preds = %16
  %25 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %26 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %7, align 8
  %31 = getelementptr inbounds %struct.counter_ext_unit, %struct.counter_ext_unit* %30, i32 0, i32 0
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %33 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 5
  store %struct.counter_device_attr_group* %32, %struct.counter_device_attr_group** %33, align 8
  %34 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %36 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %44 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %24
  %52 = load i32*, i32** @counter_device_ext_show, align 8
  br label %54

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32* [ %52, %51 ], [ null, %53 ]
  %56 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = load %struct.counter_device*, %struct.counter_device** %5, align 8
  %58 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32*, i32** @counter_device_ext_store, align 8
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32* [ %66, %65 ], [ null, %67 ]
  %70 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 2
  store i32* %69, i32** %70, align 8
  %71 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %7, align 8
  %72 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 1
  store %struct.counter_ext_unit* %71, %struct.counter_ext_unit** %72, align 8
  %73 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.counter_ext_unit*, %struct.counter_ext_unit** %7, align 8
  %78 = call i32 @kfree(%struct.counter_ext_unit* %77)
  br label %84

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %10

83:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %89

84:                                               ; preds = %76, %21
  %85 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %86 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %85, i32 0, i32 0
  %87 = call i32 @counter_device_attr_list_free(i32* %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.counter_ext_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_ext_unit*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
