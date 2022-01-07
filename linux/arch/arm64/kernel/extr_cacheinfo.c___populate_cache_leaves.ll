; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cacheinfo.c___populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cacheinfo.c___populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }

@CACHE_TYPE_SEPARATE = common dso_local global i32 0, align 4
@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@CACHE_TYPE_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__populate_cache_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_cacheinfo*, align 8
  %7 = alloca %struct.cacheinfo*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %8)
  store %struct.cpu_cacheinfo* %9, %struct.cpu_cacheinfo** %6, align 8
  %10 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %11 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %10, i32 0, i32 2
  %12 = load %struct.cacheinfo*, %struct.cacheinfo** %11, align 8
  store %struct.cacheinfo* %12, %struct.cacheinfo** %7, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %54, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %16 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %6, align 8
  %22 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  br i1 %26, label %27, label %59

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @get_cache_type(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CACHE_TYPE_SEPARATE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.cacheinfo*, %struct.cacheinfo** %7, align 8
  %35 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %34, i32 1
  store %struct.cacheinfo* %35, %struct.cacheinfo** %7, align 8
  %36 = ptrtoint %struct.cacheinfo* %34 to i32
  %37 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ci_leaf_init(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.cacheinfo*, %struct.cacheinfo** %7, align 8
  %41 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %40, i32 1
  store %struct.cacheinfo* %41, %struct.cacheinfo** %7, align 8
  %42 = ptrtoint %struct.cacheinfo* %40 to i32
  %43 = load i32, i32* @CACHE_TYPE_INST, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @ci_leaf_init(i32 %42, i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %27
  %47 = load %struct.cacheinfo*, %struct.cacheinfo** %7, align 8
  %48 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %47, i32 1
  store %struct.cacheinfo* %48, %struct.cacheinfo** %7, align 8
  %49 = ptrtoint %struct.cacheinfo* %47 to i32
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @ci_leaf_init(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %13

59:                                               ; preds = %25
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @get_cache_type(i32) #1

declare dso_local i32 @ci_leaf_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
