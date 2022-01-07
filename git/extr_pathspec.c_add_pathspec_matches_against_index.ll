; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_add_pathspec_matches_against_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_add_pathspec_matches_against_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_pathspec_matches_against_index(%struct.pathspec* %0, %struct.index_state* %1, i8* %2) #0 {
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %13 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %57

34:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.index_state*, %struct.index_state** %5, align 8
  %38 = getelementptr inbounds %struct.index_state, %struct.index_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.index_state*, %struct.index_state** %5, align 8
  %43 = getelementptr inbounds %struct.index_state, %struct.index_state* %42, i32 0, i32 1
  %44 = load %struct.cache_entry**, %struct.cache_entry*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %44, i64 %46
  %48 = load %struct.cache_entry*, %struct.cache_entry** %47, align 8
  store %struct.cache_entry* %48, %struct.cache_entry** %9, align 8
  %49 = load %struct.index_state*, %struct.index_state** %5, align 8
  %50 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %51 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @ce_path_match(%struct.index_state* %49, %struct.cache_entry* %50, %struct.pathspec* %51, i8* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %35

57:                                               ; preds = %33, %35
  ret void
}

declare dso_local i32 @ce_path_match(%struct.index_state*, %struct.cache_entry*, %struct.pathspec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
