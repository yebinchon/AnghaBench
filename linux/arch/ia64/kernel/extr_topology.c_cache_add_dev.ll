; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_cache_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_topology.c_cache_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.device = type { i32 }
%struct.cache_info = type { %struct.TYPE_6__ }

@all_cpu_cache_info = common dso_local global %struct.TYPE_7__* null, align 8
@cache_ktype_percpu_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@cache_ktype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"index%1lu\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cache_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_add_dev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cache_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.device* @get_cpu_device(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @cpu_cache_sysfs_init(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.TYPE_6__*
  %39 = call i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i8*, ...) @kobject_init_and_add(%struct.TYPE_6__* %35, i32* @cache_ktype_percpu_entry, %struct.TYPE_6__* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @cpu_cache_sysfs_exit(i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %116

49:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %104, %49
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %51, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call %struct.cache_info* @LEAF_KOBJECT_PTR(i32 %60, i64 %61)
  store %struct.cache_info* %62, %struct.cache_info** %7, align 8
  %63 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %64 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i8*, ...) @kobject_init_and_add(%struct.TYPE_6__* %64, i32* @cache_ktype, %struct.TYPE_6__* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %76

76:                                               ; preds = %86, %75
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call %struct.cache_info* @LEAF_KOBJECT_PTR(i32 %81, i64 %82)
  %84 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %83, i32 0, i32 0
  %85 = call i32 @kobject_put(%struct.TYPE_6__* %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %76

89:                                               ; preds = %76
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = call i32 @kobject_put(%struct.TYPE_6__* %94)
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @cpu_cache_sysfs_exit(i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %116

99:                                               ; preds = %59
  %100 = load %struct.cache_info*, %struct.cache_info** %7, align 8
  %101 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %100, i32 0, i32 0
  %102 = load i32, i32* @KOBJ_ADD, align 4
  %103 = call i32 @kobject_uevent(%struct.TYPE_6__* %101, i32 %102)
  br label %104

104:                                              ; preds = %99
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %5, align 8
  br label %50

107:                                              ; preds = %50
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_cpu_cache_info, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* @KOBJ_ADD, align 4
  %114 = call i32 @kobject_uevent(%struct.TYPE_6__* %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %89, %45, %28, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @cpu_cache_sysfs_init(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @cpu_cache_sysfs_exit(i32) #1

declare dso_local %struct.cache_info* @LEAF_KOBJECT_PTR(i32, i64) #1

declare dso_local i32 @kobject_put(%struct.TYPE_6__*) #1

declare dso_local i32 @kobject_uevent(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
