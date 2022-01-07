; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_attributes_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_attributes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device_attr_group = type { i32 }
%struct.counter_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.counter_count = type { i32, i32, i32 }
%struct.counter_count_unit = type { i32, i32, %struct.counter_count* }
%struct.counter_attr_parm = type { i8*, i8*, %struct.counter_func_avail_unit*, i32*, i32*, %struct.counter_device_attr_group* }
%struct.counter_func_avail_unit = type { i32, i32, %struct.counter_count* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@counter_count_show = common dso_local global i32* null, align 8
@counter_count_store = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@counter_function_show = common dso_local global i32* null, align 8
@counter_function_store = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"function_available\00", align 1
@counter_count_function_available_show = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device_attr_group*, %struct.counter_device*, %struct.counter_count*)* @counter_count_attributes_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_count_attributes_create(%struct.counter_device_attr_group* %0, %struct.counter_device* %1, %struct.counter_count* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter_device_attr_group*, align 8
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca %struct.counter_count_unit*, align 8
  %9 = alloca %struct.counter_attr_parm, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.counter_count_unit*, align 8
  %12 = alloca %struct.counter_func_avail_unit*, align 8
  store %struct.counter_device_attr_group* %0, %struct.counter_device_attr_group** %5, align 8
  store %struct.counter_device* %1, %struct.counter_device** %6, align 8
  store %struct.counter_count* %2, %struct.counter_count** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.counter_func_avail_unit* @kmalloc(i32 16, i32 %13)
  %15 = bitcast %struct.counter_func_avail_unit* %14 to %struct.counter_count_unit*
  store %struct.counter_count_unit* %15, %struct.counter_count_unit** %8, align 8
  %16 = load %struct.counter_count_unit*, %struct.counter_count_unit** %8, align 8
  %17 = icmp ne %struct.counter_count_unit* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %171

21:                                               ; preds = %3
  %22 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %23 = load %struct.counter_count_unit*, %struct.counter_count_unit** %8, align 8
  %24 = getelementptr inbounds %struct.counter_count_unit, %struct.counter_count_unit* %23, i32 0, i32 2
  store %struct.counter_count* %22, %struct.counter_count** %24, align 8
  %25 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %26 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %25, %struct.counter_device_attr_group** %26, align 8
  %27 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %30 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32*, i32** @counter_count_show, align 8
  br label %38

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32* [ %36, %35 ], [ null, %37 ]
  %40 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32* %39, i32** %40, align 8
  %41 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %42 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32*, i32** @counter_count_store, align 8
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32* [ %48, %47 ], [ null, %49 ]
  %52 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* %51, i32** %52, align 8
  %53 = load %struct.counter_count_unit*, %struct.counter_count_unit** %8, align 8
  %54 = bitcast %struct.counter_count_unit* %53 to %struct.counter_func_avail_unit*
  %55 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store %struct.counter_func_avail_unit* %54, %struct.counter_func_avail_unit** %55, align 8
  %56 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.counter_count_unit*, %struct.counter_count_unit** %8, align 8
  %61 = bitcast %struct.counter_count_unit* %60 to %struct.counter_func_avail_unit*
  %62 = call i32 @kfree(%struct.counter_func_avail_unit* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %171

64:                                               ; preds = %50
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.counter_func_avail_unit* @kmalloc(i32 16, i32 %65)
  %67 = bitcast %struct.counter_func_avail_unit* %66 to %struct.counter_count_unit*
  store %struct.counter_count_unit* %67, %struct.counter_count_unit** %11, align 8
  %68 = load %struct.counter_count_unit*, %struct.counter_count_unit** %11, align 8
  %69 = icmp ne %struct.counter_count_unit* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %166

73:                                               ; preds = %64
  %74 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %75 = load %struct.counter_count_unit*, %struct.counter_count_unit** %11, align 8
  %76 = getelementptr inbounds %struct.counter_count_unit, %struct.counter_count_unit* %75, i32 0, i32 2
  store %struct.counter_count* %74, %struct.counter_count** %76, align 8
  %77 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %78 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %77, %struct.counter_device_attr_group** %78, align 8
  %79 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %80, align 8
  %81 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %82 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32*, i32** @counter_function_show, align 8
  br label %90

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32* [ %88, %87 ], [ null, %89 ]
  %92 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32* %91, i32** %92, align 8
  %93 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %94 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32*, i32** @counter_function_store, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32* [ %100, %99 ], [ null, %101 ]
  %104 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* %103, i32** %104, align 8
  %105 = load %struct.counter_count_unit*, %struct.counter_count_unit** %11, align 8
  %106 = bitcast %struct.counter_count_unit* %105 to %struct.counter_func_avail_unit*
  %107 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store %struct.counter_func_avail_unit* %106, %struct.counter_func_avail_unit** %107, align 8
  %108 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.counter_count_unit*, %struct.counter_count_unit** %11, align 8
  %113 = bitcast %struct.counter_count_unit* %112 to %struct.counter_func_avail_unit*
  %114 = call i32 @kfree(%struct.counter_func_avail_unit* %113)
  br label %166

115:                                              ; preds = %102
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.counter_func_avail_unit* @kmalloc(i32 16, i32 %116)
  store %struct.counter_func_avail_unit* %117, %struct.counter_func_avail_unit** %12, align 8
  %118 = load %struct.counter_func_avail_unit*, %struct.counter_func_avail_unit** %12, align 8
  %119 = icmp ne %struct.counter_func_avail_unit* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %166

123:                                              ; preds = %115
  %124 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %125 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.counter_func_avail_unit*, %struct.counter_func_avail_unit** %12, align 8
  %128 = getelementptr inbounds %struct.counter_func_avail_unit, %struct.counter_func_avail_unit* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %130 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.counter_func_avail_unit*, %struct.counter_func_avail_unit** %12, align 8
  %133 = getelementptr inbounds %struct.counter_func_avail_unit, %struct.counter_func_avail_unit* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %135 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 5
  store %struct.counter_device_attr_group* %134, %struct.counter_device_attr_group** %135, align 8
  %136 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %136, align 8
  %137 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %137, align 8
  %138 = load i32*, i32** @counter_count_function_available_show, align 8
  %139 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 4
  store i32* %138, i32** %139, align 8
  %140 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 3
  store i32* null, i32** %140, align 8
  %141 = load %struct.counter_func_avail_unit*, %struct.counter_func_avail_unit** %12, align 8
  %142 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %9, i32 0, i32 2
  store %struct.counter_func_avail_unit* %141, %struct.counter_func_avail_unit** %142, align 8
  %143 = call i32 @counter_attribute_create(%struct.counter_attr_parm* %9)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %123
  %147 = load %struct.counter_func_avail_unit*, %struct.counter_func_avail_unit** %12, align 8
  %148 = call i32 @kfree(%struct.counter_func_avail_unit* %147)
  br label %166

149:                                              ; preds = %123
  %150 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %151 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %152 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @counter_name_attribute_create(%struct.counter_device_attr_group* %150, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %166

158:                                              ; preds = %149
  %159 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %160 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %161 = call i32 @counter_count_ext_register(%struct.counter_device_attr_group* %159, %struct.counter_count* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %166

165:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %171

166:                                              ; preds = %164, %157, %146, %120, %111, %70
  %167 = load %struct.counter_device_attr_group*, %struct.counter_device_attr_group** %5, align 8
  %168 = getelementptr inbounds %struct.counter_device_attr_group, %struct.counter_device_attr_group* %167, i32 0, i32 0
  %169 = call i32 @counter_device_attr_list_free(i32* %168)
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %165, %59, %18
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.counter_func_avail_unit* @kmalloc(i32, i32) #1

declare dso_local i32 @counter_attribute_create(%struct.counter_attr_parm*) #1

declare dso_local i32 @kfree(%struct.counter_func_avail_unit*) #1

declare dso_local i32 @counter_name_attribute_create(%struct.counter_device_attr_group*, i32) #1

declare dso_local i32 @counter_count_ext_register(%struct.counter_device_attr_group*, %struct.counter_count*) #1

declare dso_local i32 @counter_device_attr_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
