; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_get_cache_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_get_cache_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_info = type { i64, i64 }

@CACHE_MAX_LEVEL = common dso_local global i32 0, align 4
@CACHE_TYPE_NOCACHE = common dso_local global i32 0, align 4
@CACHE_SCOPE_SHARED = common dso_local global i64 0, align 8
@CACHE_SCOPE_PRIVATE = common dso_local global i64 0, align 8
@cache_type_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_info*, i32)* @get_cache_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cache_type(%struct.cache_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_info*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_info* %0, %struct.cache_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CACHE_MAX_LEVEL, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @CACHE_TYPE_NOCACHE, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cache_info*, %struct.cache_info** %4, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %13, i64 %14
  store %struct.cache_info* %15, %struct.cache_info** %4, align 8
  %16 = load %struct.cache_info*, %struct.cache_info** %4, align 8
  %17 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CACHE_SCOPE_SHARED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.cache_info*, %struct.cache_info** %4, align 8
  %23 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CACHE_SCOPE_PRIVATE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @CACHE_TYPE_NOCACHE, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %21, %11
  %30 = load i32*, i32** @cache_type_map, align 8
  %31 = load %struct.cache_info*, %struct.cache_info** %4, align 8
  %32 = getelementptr inbounds %struct.cache_info, %struct.cache_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %27, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
