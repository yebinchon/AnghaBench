; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_init_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_init_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32 }
%union.cache_topology = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXTRACT_TOPOLOGY = common dso_local global i32 0, align 4
@CACHE_TYPE_NOCACHE = common dso_local global i32 0, align 4
@CACHE_TYPE_SEPARATE = common dso_local global i32 0, align 4
@CACHE_MAX_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_cacheinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cache_topology, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %9)
  store %struct.cpu_cacheinfo* %10, %struct.cpu_cacheinfo** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = call i32 @test_facility(i32 34)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %18 = icmp ne %struct.cpu_cacheinfo* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %16
  %23 = load i32, i32* @EXTRACT_TOPOLOGY, align 4
  %24 = call i32 @ecag(i32 %23, i32 0, i32 0)
  %25 = bitcast %union.cache_topology* %7 to i32*
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %44, %22
  %27 = bitcast %union.cache_topology* %7 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @get_cache_type(i32* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CACHE_TYPE_NOCACHE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %49

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CACHE_TYPE_SEPARATE, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 1
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @CACHE_MAX_LEVEL, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %26, label %49

49:                                               ; preds = %44, %35
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %52 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %4, align 8
  %55 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %19, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @test_facility(i32) #1

declare dso_local i32 @ecag(i32, i32, i32) #1

declare dso_local i32 @get_cache_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
