; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_cacheinfo.c_populate_cache_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_cacheinfo.c_populate_cache_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cacheinfo = type { i32, i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32 }

@CACHE_TYPE_DATA = common dso_local global i32 0, align 4
@CACHE_TYPE_INST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @populate_cache_leaves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_cacheinfo*, align 8
  %6 = alloca %struct.cacheinfo*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %7)
  store %struct.cpu_cacheinfo* %8, %struct.cpu_cacheinfo** %5, align 8
  %9 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %5, align 8
  %10 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %9, i32 0, i32 2
  %11 = load %struct.cacheinfo*, %struct.cacheinfo** %10, align 8
  store %struct.cacheinfo* %11, %struct.cacheinfo** %6, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %5, align 8
  %15 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ule i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ false, %12 ], [ %23, %18 ]
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %28 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %27, i32 1
  store %struct.cacheinfo* %28, %struct.cacheinfo** %6, align 8
  %29 = ptrtoint %struct.cacheinfo* %27 to i32
  %30 = load i32, i32* @CACHE_TYPE_DATA, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ci_leaf_init(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cacheinfo*, %struct.cacheinfo** %6, align 8
  %34 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %33, i32 1
  store %struct.cacheinfo* %34, %struct.cacheinfo** %6, align 8
  %35 = ptrtoint %struct.cacheinfo* %33 to i32
  %36 = load i32, i32* @CACHE_TYPE_INST, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ci_leaf_init(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %12

44:                                               ; preds = %24
  ret i32 0
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @ci_leaf_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
