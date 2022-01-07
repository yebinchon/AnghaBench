; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_open_cached_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_open_cached_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dir = type { i32, %struct.untracked_cache_dir* }
%struct.dir_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.index_state = type { i32 }
%struct.strbuf = type { i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not open directory '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dir*, %struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32)* @open_cached_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cached_dir(%struct.cached_dir* %0, %struct.dir_struct* %1, %struct.untracked_cache_dir* %2, %struct.index_state* %3, %struct.strbuf* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cached_dir*, align 8
  %9 = alloca %struct.dir_struct*, align 8
  %10 = alloca %struct.untracked_cache_dir*, align 8
  %11 = alloca %struct.index_state*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.cached_dir* %0, %struct.cached_dir** %8, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %9, align 8
  store %struct.untracked_cache_dir* %2, %struct.untracked_cache_dir** %10, align 8
  store %struct.index_state* %3, %struct.index_state** %11, align 8
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.cached_dir*, %struct.cached_dir** %8, align 8
  %16 = call i32 @memset(%struct.cached_dir* %15, i32 0, i32 16)
  %17 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %10, align 8
  %18 = load %struct.cached_dir*, %struct.cached_dir** %8, align 8
  %19 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %18, i32 0, i32 1
  store %struct.untracked_cache_dir* %17, %struct.untracked_cache_dir** %19, align 8
  %20 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %21 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %10, align 8
  %22 = load %struct.index_state*, %struct.index_state** %11, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @valid_cached_dir(%struct.dir_struct* %20, %struct.untracked_cache_dir* %21, %struct.index_state* %22, %struct.strbuf* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %76

28:                                               ; preds = %6
  %29 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %37 ]
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @opendir(i8* %40)
  %42 = load %struct.cached_dir*, %struct.cached_dir** %8, align 8
  %43 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cached_dir*, %struct.cached_dir** %8, align 8
  %45 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @warning_errno(i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %54 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp ne %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %59 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %10, align 8
  %62 = call i32 @invalidate_directory(%struct.TYPE_2__* %60, %struct.untracked_cache_dir* %61)
  %63 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %64 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %57, %52
  %70 = load %struct.cached_dir*, %struct.cached_dir** %8, align 8
  %71 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 -1, i32* %7, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %74, %27
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @memset(%struct.cached_dir*, i32, i32) #1

declare dso_local i64 @valid_cached_dir(%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32) #1

declare dso_local i32 @opendir(i8*) #1

declare dso_local i32 @warning_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @invalidate_directory(%struct.TYPE_2__*, %struct.untracked_cache_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
