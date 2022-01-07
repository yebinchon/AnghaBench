; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }
%union.cache_topology = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXTRACT_TOPOLOGY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CACHE_SCOPE_PRIVATE = common dso_local global i64 0, align 8
@CACHE_TYPE_SEPARATE = common dso_local global i32 0, align 4
@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@CACHE_TYPE_INST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_cacheinfo*, align 8
  %5 = alloca %struct.cacheinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cache_topology, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %11)
  store %struct.cpu_cacheinfo* %12, %struct.cpu_cacheinfo** %4, align 8
  %13 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %13, i32 0, i32 2
  %15 = load %struct.cacheinfo*, %struct.cacheinfo** %14, align 8
  store %struct.cacheinfo* %15, %struct.cacheinfo** %5, align 8
  %16 = call i32 @test_facility(i32 34)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = load i32, i32* @EXTRACT_TOPOLOGY, align 4
  %23 = call i32 @ecag(i32 %22, i32 0, i32 0)
  %24 = bitcast %union.cache_topology* %9 to i32*
  store i32 %23, i32* %24, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %92, %21
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %28 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ false, %25 ], [ %36, %31 ]
  br i1 %38, label %39, label %97

39:                                               ; preds = %37
  %40 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %41 = icmp ne %struct.cacheinfo* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %98

45:                                               ; preds = %39
  %46 = bitcast %union.cache_topology* %9 to %struct.TYPE_2__**
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CACHE_SCOPE_PRIVATE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %8, align 4
  %57 = bitcast %union.cache_topology* %9 to %struct.TYPE_2__**
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @get_cache_type(%struct.TYPE_2__* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @CACHE_TYPE_SEPARATE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %45
  %66 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %67 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %66, i32 1
  store %struct.cacheinfo* %67, %struct.cacheinfo** %5, align 8
  %68 = ptrtoint %struct.cacheinfo* %66 to i32
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @ci_leaf_init(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %75 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %74, i32 1
  store %struct.cacheinfo* %75, %struct.cacheinfo** %5, align 8
  %76 = ptrtoint %struct.cacheinfo* %74 to i32
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @CACHE_TYPE_INST, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ci_leaf_init(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %91

82:                                               ; preds = %45
  %83 = load %struct.cacheinfo*, %struct.cacheinfo** %5, align 8
  %84 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %83, i32 1
  store %struct.cacheinfo* %84, %struct.cacheinfo** %5, align 8
  %85 = ptrtoint %struct.cacheinfo* %83 to i32
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ci_leaf_init(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %25

97:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %42, %18
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @test_facility(i32) #1

declare dso_local i32 @ecag(i32, i32, i32) #1

declare dso_local i32 @get_cache_type(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ci_leaf_init(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
