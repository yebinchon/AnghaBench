; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_cacheinfo.c_cache_default_attrs_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_cacheinfo.c_cache_default_attrs_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_18__ = type { %struct.attribute }
%struct.TYPE_24__ = type { %struct.attribute }
%struct.TYPE_20__ = type { %struct.attribute }
%struct.TYPE_21__ = type { %struct.attribute }
%struct.TYPE_14__ = type { %struct.attribute }
%struct.TYPE_17__ = type { %struct.attribute }
%struct.TYPE_23__ = type { %struct.attribute }
%struct.TYPE_19__ = type { %struct.attribute }
%struct.TYPE_16__ = type { %struct.attribute }
%struct.TYPE_15__ = type { %struct.attribute }
%struct.TYPE_22__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.cacheinfo = type { i32, i64, i64, i64, i64, i64, i64, %struct.cpumask }
%struct.cpumask = type { i32 }

@dev_attr_id = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@CACHE_ID = common dso_local global i32 0, align 4
@dev_attr_type = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@dev_attr_level = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@dev_attr_shared_cpu_map = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@dev_attr_shared_cpu_list = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@dev_attr_coherency_line_size = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dev_attr_ways_of_associativity = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@dev_attr_number_of_sets = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@dev_attr_size = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@dev_attr_write_policy = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@CACHE_WRITE_POLICY_MASK = common dso_local global i32 0, align 4
@dev_attr_allocation_policy = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CACHE_ALLOCATE_POLICY_MASK = common dso_local global i32 0, align 4
@dev_attr_physical_line_partition = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @cache_default_attrs_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_default_attrs_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.cacheinfo*, align 8
  %10 = alloca %struct.cpumask*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.device* @kobj_to_dev(%struct.kobject* %12)
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = call %struct.cacheinfo* @dev_get_drvdata(%struct.device* %14)
  store %struct.cacheinfo* %15, %struct.cacheinfo** %9, align 8
  %16 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %17 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %16, i32 0, i32 7
  store %struct.cpumask* %17, %struct.cpumask** %10, align 8
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dev_attr_id, i32 0, i32 0)
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %25 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CACHE_ID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %145

32:                                               ; preds = %23, %3
  %33 = load %struct.attribute*, %struct.attribute** %6, align 8
  %34 = icmp eq %struct.attribute* %33, getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_attr_type, i32 0, i32 0)
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %37 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %145

42:                                               ; preds = %35, %32
  %43 = load %struct.attribute*, %struct.attribute** %6, align 8
  %44 = icmp eq %struct.attribute* %43, getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dev_attr_level, i32 0, i32 0)
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %47 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %145

52:                                               ; preds = %45, %42
  %53 = load %struct.attribute*, %struct.attribute** %6, align 8
  %54 = icmp eq %struct.attribute* %53, getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dev_attr_shared_cpu_map, i32 0, i32 0)
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %57 = call i32 @cpumask_empty(%struct.cpumask* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %145

61:                                               ; preds = %55, %52
  %62 = load %struct.attribute*, %struct.attribute** %6, align 8
  %63 = icmp eq %struct.attribute* %62, getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @dev_attr_shared_cpu_list, i32 0, i32 0)
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %66 = call i32 @cpumask_empty(%struct.cpumask* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %145

70:                                               ; preds = %64, %61
  %71 = load %struct.attribute*, %struct.attribute** %6, align 8
  %72 = icmp eq %struct.attribute* %71, getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dev_attr_coherency_line_size, i32 0, i32 0)
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %75 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %145

80:                                               ; preds = %73, %70
  %81 = load %struct.attribute*, %struct.attribute** %6, align 8
  %82 = icmp eq %struct.attribute* %81, getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dev_attr_ways_of_associativity, i32 0, i32 0)
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %85 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %145

90:                                               ; preds = %83, %80
  %91 = load %struct.attribute*, %struct.attribute** %6, align 8
  %92 = icmp eq %struct.attribute* %91, getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @dev_attr_number_of_sets, i32 0, i32 0)
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %95 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %145

100:                                              ; preds = %93, %90
  %101 = load %struct.attribute*, %struct.attribute** %6, align 8
  %102 = icmp eq %struct.attribute* %101, getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @dev_attr_size, i32 0, i32 0)
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %105 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %145

110:                                              ; preds = %103, %100
  %111 = load %struct.attribute*, %struct.attribute** %6, align 8
  %112 = icmp eq %struct.attribute* %111, getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dev_attr_write_policy, i32 0, i32 0)
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %115 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CACHE_WRITE_POLICY_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %145

122:                                              ; preds = %113, %110
  %123 = load %struct.attribute*, %struct.attribute** %6, align 8
  %124 = icmp eq %struct.attribute* %123, getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dev_attr_allocation_policy, i32 0, i32 0)
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %127 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CACHE_ALLOCATE_POLICY_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %145

134:                                              ; preds = %125, %122
  %135 = load %struct.attribute*, %struct.attribute** %6, align 8
  %136 = icmp eq %struct.attribute* %135, getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @dev_attr_physical_line_partition, i32 0, i32 0)
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.cacheinfo*, %struct.cacheinfo** %9, align 8
  %139 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %145

144:                                              ; preds = %137, %134
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %142, %132, %120, %108, %98, %88, %78, %68, %59, %50, %40, %30
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.cacheinfo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cpumask_empty(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
