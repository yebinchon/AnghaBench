; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_invalidate_directory.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_invalidate_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache = type { i32 }
%struct.untracked_cache_dir = type { i32, %struct.TYPE_2__**, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.untracked_cache*, %struct.untracked_cache_dir*)* @invalidate_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_directory(%struct.untracked_cache* %0, %struct.untracked_cache_dir* %1) #0 {
  %3 = alloca %struct.untracked_cache*, align 8
  %4 = alloca %struct.untracked_cache_dir*, align 8
  %5 = alloca i32, align 4
  store %struct.untracked_cache* %0, %struct.untracked_cache** %3, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %4, align 8
  %6 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %7 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  %12 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %17 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %19 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %23 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %4, align 8
  %28 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
