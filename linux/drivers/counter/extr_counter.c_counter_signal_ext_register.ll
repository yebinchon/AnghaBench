; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_ext_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_signal_ext_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_signal = type { i64, %struct.counter_signal_ext* }
%struct.counter_signal_ext = type { i64, i64, i32 }
%struct.counter_signal_ext_unit = type { %struct.counter_signal_ext*, %struct.counter_signal* }
%struct.counter_attr_parm = type { i8*, %struct.counter_signal_ext_unit*, i32*, i32*, i32, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@counter_signal_ext_show = common dso_local global i32* null, align 8
@counter_signal_ext_store = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_signal*)* @counter_signal_ext_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_signal_ext_register(%struct.counter_device_attr_group* %0, %struct.counter_signal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_signal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.counter_signal_ext*, align 8
  %9 = alloca %struct.counter_signal_ext_unit*, align 8
  %10 = alloca %struct.counter_attr_parm, align 8
  %11 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_signal* %1, %struct.counter_signal** %5, align 8
  %12 = load %struct.counter_signal*, %struct.counter_signal** %5, align 8
  %13 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %75, %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  %20 = load %struct.counter_signal*, %struct.counter_signal** %5, align 8
  %21 = getelementptr inbounds %struct.counter_signal, %struct.counter_signal* %20, i32 0, i32 1
  %22 = load %struct.counter_signal_ext*, %struct.counter_signal_ext** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.counter_signal_ext, %struct.counter_signal_ext* %22, i64 %23
  store %struct.counter_signal_ext* %24, %struct.counter_signal_ext** %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.counter_signal_ext_unit* @kmalloc(i32 16, i32 %25)
  store %struct.counter_signal_ext_unit* %26, %struct.counter_signal_ext_unit** %9, align 8
  %27 = load %struct.counter_signal_ext_unit*, %struct.counter_signal_ext_unit** %9, align 8
  %28 = icmp ne %struct.counter_signal_ext_unit* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %79

32:                                               ; preds = %19
  %33 = load %struct.counter_signal*, %struct.counter_signal** %5, align 8
  %34 = load %struct.counter_signal_ext_unit*, %struct.counter_signal_ext_unit** %9, align 8
  %35 = getelementptr inbounds %struct.counter_signal_ext_unit, %struct.counter_signal_ext_unit* %34, i32 0, i32 1
  store %struct.counter_signal* %33, %struct.counter_signal** %35, align 8
  %36 = load %struct.counter_signal_ext*, %struct.counter_signal_ext** %8, align 8
  %37 = load %struct.counter_signal_ext_unit*, %struct.counter_signal_ext_unit** %9, align 8
  %38 = getelementptr inbounds %struct.counter_signal_ext_unit, %struct.counter_signal_ext_unit* %37, i32 0, i32 0
  store %struct.counter_signal_ext* %36, %struct.counter_signal_ext** %38, align 8
  %39 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %40 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 5
  store %struct.counter_device_attr_group* %39, %struct.counter_device_attr_group** %40, align 8
  %41 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.counter_signal_ext*, %struct.counter_signal_ext** %8, align 8
  %43 = getelementptr inbounds %struct.counter_signal_ext, %struct.counter_signal_ext* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.counter_signal_ext*, %struct.counter_signal_ext** %8, align 8
  %47 = getelementptr inbounds %struct.counter_signal_ext, %struct.counter_signal_ext* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32*, i32** @counter_signal_ext_show, align 8
  br label %53

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32* [ %51, %50 ], [ null, %52 ]
  %55 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 3
  store i32* %54, i32** %55, align 8
  %56 = load %struct.counter_signal_ext*, %struct.counter_signal_ext** %8, align 8
  %57 = getelementptr inbounds %struct.counter_signal_ext, %struct.counter_signal_ext* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32*, i32** @counter_signal_ext_store, align 8
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32* [ %61, %60 ], [ null, %62 ]
  %65 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 2
  store i32* %64, i32** %65, align 8
  %66 = load %struct.counter_signal_ext_unit*, %struct.counter_signal_ext_unit** %9, align 8
  %67 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %10, i32 0, i32 1
  store %struct.counter_signal_ext_unit* %66, %struct.counter_signal_ext_unit** %67, align 8
  %68 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %10)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.counter_signal_ext_unit*, %struct.counter_signal_ext_unit** %9, align 8
  %73 = call i32 @kfree(%struct.counter_signal_ext_unit* %72)
  br label %79

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %15

78:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %84

79:                                               ; preds = %71, %29
  %80 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %81 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %80, i32 0, i32 0
  %82 = call i32 @counter_device_attr_list_free(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %78
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.counter_signal_ext_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_signal_ext_unit*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
