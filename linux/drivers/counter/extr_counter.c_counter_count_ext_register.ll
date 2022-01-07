; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_ext_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_ext_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_count = type { i64, %struct.counter_count_ext* }
%struct.counter_count_ext = type { i64, i64, i32 }
%struct.counter_count_ext_unit = type { %struct.counter_count_ext*, %struct.counter_count* }
%struct.counter_attr_parm = type { i8*, %struct.counter_count_ext_unit*, i32*, i32*, i32, %struct.counter_device_attr_group* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@counter_count_ext_show = common dso_local global i32* null, align 8
@counter_count_ext_store = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_count*)* @counter_count_ext_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_count_ext_register(%struct.counter_device_attr_group* %0, %struct.counter_count* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter_device_attr_group*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.counter_count_ext*, align 8
  %8 = alloca %struct.counter_count_ext_unit*, align 8
  %9 = alloca %struct.counter_attr_parm, align 8
  %10 = alloca i32, align 4
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %73, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %14 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %11
  %18 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %19 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %18, i32 0, i32 1
  %20 = load %struct.counter_count_ext*, %struct.counter_count_ext** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.counter_count_ext, %struct.counter_count_ext* %20, i64 %21
  store %struct.counter_count_ext* %22, %struct.counter_count_ext** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.counter_count_ext_unit* @kmalloc(i32 16, i32 %23)
  store %struct.counter_count_ext_unit* %24, %struct.counter_count_ext_unit** %8, align 8
  %25 = load %struct.counter_count_ext_unit*, %struct.counter_count_ext_unit** %8, align 8
  %26 = icmp ne %struct.counter_count_ext_unit* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %77

30:                                               ; preds = %17
  %31 = load %struct.counter_count*, %struct.counter_count** %5, align 8
  %32 = load %struct.counter_count_ext_unit*, %struct.counter_count_ext_unit** %8, align 8
  %33 = getelementptr inbounds %struct.counter_count_ext_unit, %struct.counter_count_ext_unit* %32, i32 0, i32 1
  store %struct.counter_count* %31, %struct.counter_count** %33, align 8
  %34 = load %struct.counter_count_ext*, %struct.counter_count_ext** %7, align 8
  %35 = load %struct.counter_count_ext_unit*, %struct.counter_count_ext_unit** %8, align 8
  %36 = getelementptr inbounds %struct.counter_count_ext_unit, %struct.counter_count_ext_unit* %35, i32 0, i32 0
  store %struct.counter_count_ext* %34, %struct.counter_count_ext** %36, align 8
  %37 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %38 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %37, %struct.counter_device_attr_group** %38, align 8
  %39 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.counter_count_ext*, %struct.counter_count_ext** %7, align 8
  %41 = getelementptr inbounds %struct.counter_count_ext, %struct.counter_count_ext* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load %struct.counter_count_ext*, %struct.counter_count_ext** %7, align 8
  %45 = getelementptr inbounds %struct.counter_count_ext, %struct.counter_count_ext* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32*, i32** @counter_count_ext_show, align 8
  br label %51

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32* [ %49, %48 ], [ null, %50 ]
  %53 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load %struct.counter_count_ext*, %struct.counter_count_ext** %7, align 8
  %55 = getelementptr inbounds %struct.counter_count_ext, %struct.counter_count_ext* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32*, i32** @counter_count_ext_store, align 8
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32* [ %59, %58 ], [ null, %60 ]
  %63 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store i32* %62, i32** %63, align 8
  %64 = load %struct.counter_count_ext_unit*, %struct.counter_count_ext_unit** %8, align 8
  %65 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store %struct.counter_count_ext_unit* %64, %struct.counter_count_ext_unit** %65, align 8
  %66 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.counter_count_ext_unit*, %struct.counter_count_ext_unit** %8, align 8
  %71 = call i32 @kfree(%struct.counter_count_ext_unit* %70)
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %11

76:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %82

77:                                               ; preds = %69, %27
  %78 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %4, align 8
  %79 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %78, i32 0, i32 0
  %80 = call i32 @counter_device_attr_list_free(i32* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %76
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.counter_count_ext_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_count_ext_unit*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
