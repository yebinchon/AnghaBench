; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_treat_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_treat_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.cached_dir = type { %struct.dirent* }
%struct.dirent = type { i32 }
%struct.index_state = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.pathspec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@path_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.cached_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*)* @treat_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_path(%struct.dir_struct* %0, %struct.untracked_cache_dir* %1, %struct.cached_dir* %2, %struct.index_state* %3, %struct.strbuf* %4, i32 %5, %struct.pathspec* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_struct*, align 8
  %10 = alloca %struct.untracked_cache_dir*, align 8
  %11 = alloca %struct.cached_dir*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pathspec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dirent*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %9, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %10, align 8
  store %struct.cached_dir* %2, %struct.cached_dir** %11, align 8
  store %struct.index_state* %3, %struct.index_state** %12, align 8
  store %struct.strbuf* %4, %struct.strbuf** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.pathspec* %6, %struct.pathspec** %15, align 8
  %18 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %19 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %18, i32 0, i32 0
  %20 = load %struct.dirent*, %struct.dirent** %19, align 8
  store %struct.dirent* %20, %struct.dirent** %17, align 8
  %21 = load %struct.dirent*, %struct.dirent** %17, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %7
  %24 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %25 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %10, align 8
  %26 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %27 = load %struct.index_state*, %struct.index_state** %12, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.pathspec*, %struct.pathspec** %15, align 8
  %31 = call i32 @treat_path_fast(%struct.dir_struct* %24, %struct.untracked_cache_dir* %25, %struct.cached_dir* %26, %struct.index_state* %27, %struct.strbuf* %28, i32 %29, %struct.pathspec* %30)
  store i32 %31, i32* %8, align 4
  br label %78

32:                                               ; preds = %7
  %33 = load %struct.dirent*, %struct.dirent** %17, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_dot_or_dotdot(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.dirent*, %struct.dirent** %17, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fspathcmp(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @path_none, align 4
  store i32 %45, i32* %8, align 4
  br label %78

46:                                               ; preds = %38
  %47 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @strbuf_setlen(%struct.strbuf* %47, i32 %48)
  %50 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %51 = load %struct.dirent*, %struct.dirent** %17, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strbuf_addstr(%struct.strbuf* %50, i32 %53)
  %55 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pathspec*, %struct.pathspec** %15, align 8
  %62 = call i64 @simplify_away(i32 %57, i32 %60, %struct.pathspec* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i32, i32* @path_none, align 4
  store i32 %65, i32* %8, align 4
  br label %78

66:                                               ; preds = %46
  %67 = load %struct.dirent*, %struct.dirent** %17, align 8
  %68 = call i32 @DTYPE(%struct.dirent* %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %70 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %10, align 8
  %71 = load %struct.index_state*, %struct.index_state** %12, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.pathspec*, %struct.pathspec** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.dirent*, %struct.dirent** %17, align 8
  %77 = call i32 @treat_one_path(%struct.dir_struct* %69, %struct.untracked_cache_dir* %70, %struct.index_state* %71, %struct.strbuf* %72, i32 %73, %struct.pathspec* %74, i32 %75, %struct.dirent* %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %66, %64, %44, %23
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @treat_path_fast(%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.cached_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*) #1

declare dso_local i64 @is_dot_or_dotdot(i32) #1

declare dso_local i32 @fspathcmp(i32, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i64 @simplify_away(i32, i32, %struct.pathspec*) #1

declare dso_local i32 @DTYPE(%struct.dirent*) #1

declare dso_local i32 @treat_one_path(%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*, i32, %struct.dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
