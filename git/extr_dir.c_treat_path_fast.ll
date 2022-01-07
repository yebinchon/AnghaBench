; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_treat_path_fast.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_treat_path_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.cached_dir = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.index_state = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.pathspec = type { i32 }

@path_untracked = common dso_local global i32 0, align 4
@path_recurse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.cached_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*)* @treat_path_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_path_fast(%struct.dir_struct* %0, %struct.untracked_cache_dir* %1, %struct.cached_dir* %2, %struct.index_state* %3, %struct.strbuf* %4, i32 %5, %struct.pathspec* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_struct*, align 8
  %10 = alloca %struct.untracked_cache_dir*, align 8
  %11 = alloca %struct.cached_dir*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pathspec*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %9, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %10, align 8
  store %struct.cached_dir* %2, %struct.cached_dir** %11, align 8
  store %struct.index_state* %3, %struct.index_state** %12, align 8
  store %struct.strbuf* %4, %struct.strbuf** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.pathspec* %6, %struct.pathspec** %15, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %17 = load i32, i32* %14, align 4
  %18 = call i32 @strbuf_setlen(%struct.strbuf* %16, i32 %17)
  %19 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %20 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %7
  %24 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %25 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %26 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %24, i32 %27)
  %29 = load i32, i32* @path_untracked, align 4
  store i32 %29, i32* %8, align 4
  br label %62

30:                                               ; preds = %7
  %31 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %32 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %33 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %31, i32 %36)
  %38 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %39 = call i32 @strbuf_complete(%struct.strbuf* %38, i8 signext 47)
  %40 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %41 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %30
  %47 = load %struct.dir_struct*, %struct.dir_struct** %9, align 8
  %48 = load %struct.index_state*, %struct.index_state** %12, align 8
  %49 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cached_dir*, %struct.cached_dir** %11, align 8
  %56 = getelementptr inbounds %struct.cached_dir, %struct.cached_dir* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.pathspec*, %struct.pathspec** %15, align 8
  %59 = call i32 @read_directory_recursive(%struct.dir_struct* %47, %struct.index_state* %48, i32 %51, i32 %54, %struct.TYPE_2__* %57, i32 1, i32 0, %struct.pathspec* %58)
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %30
  %61 = load i32, i32* @path_recurse, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %46, %23
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @read_directory_recursive(%struct.dir_struct*, %struct.index_state*, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.pathspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
