; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_cacheinfo.c___init_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_cacheinfo.c___init_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__init_cache_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__init_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_cacheinfo*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %9)
  store %struct.cpu_cacheinfo* %10, %struct.cpu_cacheinfo** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.device_node* @of_cpu_device_node_get(i32 %11)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i64 @of_property_read_bool(%struct.device_node* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i64 @of_property_read_bool(%struct.device_node* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i64 @of_property_read_bool(%struct.device_node* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %38, %struct.device_node** %5, align 8
  br label %39

39:                                               ; preds = %82, %37
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* %40)
  store %struct.device_node* %41, %struct.device_node** %4, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %46, %struct.device_node** %5, align 8
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i32 @of_device_is_compatible(%struct.device_node* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %84

51:                                               ; preds = %43
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = call i64 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %84

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %84

61:                                               ; preds = %56
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = call i64 @of_property_read_bool(%struct.device_node* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call i64 @of_property_read_bool(%struct.device_node* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.device_node*, %struct.device_node** %4, align 8
  %77 = call i64 @of_property_read_bool(%struct.device_node* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %6, align 4
  br label %39

84:                                               ; preds = %60, %55, %50, %39
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call i32 @of_node_put(%struct.device_node* %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %3, align 8
  %89 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %3, align 8
  %92 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
