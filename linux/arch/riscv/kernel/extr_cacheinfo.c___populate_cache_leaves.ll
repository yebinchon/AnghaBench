; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_cacheinfo.c___populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_cacheinfo.c___populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@CACHE_TYPE_UNIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@CACHE_TYPE_INST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__populate_cache_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_cacheinfo*, align 8
  %4 = alloca %struct.cacheinfo*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %9)
  store %struct.cpu_cacheinfo* %10, %struct.cpu_cacheinfo** %3, align 8
  %11 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %11, i32 0, i32 0
  %13 = load %struct.cacheinfo*, %struct.cacheinfo** %12, align 8
  store %struct.cacheinfo* %13, %struct.cacheinfo** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.device_node* @of_cpu_device_node_get(i32 %14)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i64 @of_property_read_bool(%struct.device_node* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %21 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %20, i32 1
  store %struct.cacheinfo* %21, %struct.cacheinfo** %4, align 8
  %22 = ptrtoint %struct.cacheinfo* %20 to i32
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ci_leaf_init(i32 %22, %struct.device_node* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i64 @of_property_read_bool(%struct.device_node* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %33 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %32, i32 1
  store %struct.cacheinfo* %33, %struct.cacheinfo** %4, align 8
  %34 = ptrtoint %struct.cacheinfo* %32 to i32
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = load i32, i32* @CACHE_TYPE_INST, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ci_leaf_init(i32 %34, %struct.device_node* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %27
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i64 @of_property_read_bool(%struct.device_node* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %45 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %44, i32 1
  store %struct.cacheinfo* %45, %struct.cacheinfo** %4, align 8
  %46 = ptrtoint %struct.cacheinfo* %44 to i32
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ci_leaf_init(i32 %46, %struct.device_node* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %39
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %52, %struct.device_node** %6, align 8
  br label %53

53:                                               ; preds = %111, %51
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* %54)
  store %struct.device_node* %55, %struct.device_node** %5, align 8
  %56 = icmp ne %struct.device_node* %55, null
  br i1 %56, label %57, label %113

57:                                               ; preds = %53
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %60, %struct.device_node** %6, align 8
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_device_is_compatible(%struct.device_node* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %113

65:                                               ; preds = %57
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = call i64 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %113

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %113

75:                                               ; preds = %70
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i64 @of_property_read_bool(%struct.device_node* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %81 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %80, i32 1
  store %struct.cacheinfo* %81, %struct.cacheinfo** %4, align 8
  %82 = ptrtoint %struct.cacheinfo* %80 to i32
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @ci_leaf_init(i32 %82, %struct.device_node* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i64 @of_property_read_bool(%struct.device_node* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %93 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %92, i32 1
  store %struct.cacheinfo* %93, %struct.cacheinfo** %4, align 8
  %94 = ptrtoint %struct.cacheinfo* %92 to i32
  %95 = load %struct.device_node*, %struct.device_node** %5, align 8
  %96 = load i32, i32* @CACHE_TYPE_INST, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ci_leaf_init(i32 %94, %struct.device_node* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %87
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = call i64 @of_property_read_bool(%struct.device_node* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %105 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %104, i32 1
  store %struct.cacheinfo* %105, %struct.cacheinfo** %4, align 8
  %106 = ptrtoint %struct.cacheinfo* %104 to i32
  %107 = load %struct.device_node*, %struct.device_node** %5, align 8
  %108 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @ci_leaf_init(i32 %106, %struct.device_node* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %99
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %7, align 4
  br label %53

113:                                              ; preds = %74, %69, %64, %53
  %114 = load %struct.device_node*, %struct.device_node** %5, align 8
  %115 = call i32 @of_node_put(%struct.device_node* %114)
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @ci_leaf_init(i32, %struct.device_node*, i32, i32) #1

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
