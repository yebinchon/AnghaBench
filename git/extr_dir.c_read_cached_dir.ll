; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_read_cached_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_read_cached_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dir = type { i64, i64, i32, %struct.untracked_cache_dir*, %struct.untracked_cache_dir*, i32, i64 }
%struct.untracked_cache_dir = type { i64, i64, i32*, i32, %struct.untracked_cache_dir** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dir*)* @read_cached_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cached_dir(%struct.cached_dir* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cached_dir*, align 8
  %4 = alloca %struct.untracked_cache_dir*, align 8
  %5 = alloca %struct.untracked_cache_dir*, align 8
  store %struct.cached_dir* %0, %struct.cached_dir** %3, align 8
  %6 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %7 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %12 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @readdir(i64 %13)
  %15 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %16 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %18 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %90

22:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %49, %23
  %25 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %26 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %29 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %28, i32 0, i32 3
  %30 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %29, align 8
  %31 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %24
  %35 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %36 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %35, i32 0, i32 3
  %37 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %36, align 8
  %38 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %37, i32 0, i32 4
  %39 = load %struct.untracked_cache_dir**, %struct.untracked_cache_dir*** %38, align 8
  %40 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %41 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %39, i64 %42
  %44 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %43, align 8
  store %struct.untracked_cache_dir* %44, %struct.untracked_cache_dir** %4, align 8
  %45 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %46 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %34
  %50 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %51 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %24

54:                                               ; preds = %34
  %55 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %56 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %57 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %56, i32 0, i32 4
  store %struct.untracked_cache_dir* %55, %struct.untracked_cache_dir** %57, align 8
  %58 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %59 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %90

62:                                               ; preds = %24
  %63 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %64 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %63, i32 0, i32 4
  store %struct.untracked_cache_dir* null, %struct.untracked_cache_dir** %64, align 8
  %65 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %66 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %69 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %68, i32 0, i32 3
  %70 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %69, align 8
  %71 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %67, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %62
  %75 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %76 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %75, i32 0, i32 3
  %77 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %76, align 8
  store %struct.untracked_cache_dir* %77, %struct.untracked_cache_dir** %5, align 8
  %78 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %5, align 8
  %79 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %82 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = getelementptr inbounds i32, i32* %80, i64 %83
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cached_dir*, %struct.cached_dir** %3, align 8
  %88 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %90

89:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %74, %54, %22, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @readdir(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
