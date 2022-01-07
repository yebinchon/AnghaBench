; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_untracked.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.untracked_cache_dir = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.untracked_cache_dir*, i8*)* @add_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_untracked(%struct.untracked_cache_dir* %0, i8* %1) #0 {
  %3 = alloca %struct.untracked_cache_dir*, align 8
  %4 = alloca i8*, align 8
  store %struct.untracked_cache_dir* %0, %struct.untracked_cache_dir** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %6 = icmp ne %struct.untracked_cache_dir* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %30

8:                                                ; preds = %2
  %9 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %10 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %13 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %17 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ALLOC_GROW(i32* %11, i64 %15, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @xstrdup(i8* %20)
  %22 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %23 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %3, align 8
  %26 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %29, align 4
  br label %30

30:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ALLOC_GROW(i32*, i64, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
