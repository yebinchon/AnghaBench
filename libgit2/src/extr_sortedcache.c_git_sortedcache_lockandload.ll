; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_lockandload.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_lockandload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.stat = type { i64 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat file\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to load file larger than size_t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_sortedcache_lockandload(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @git_sortedcache_wlock(%struct.TYPE_5__* %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_futils_filestamp_check(i32* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %66

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_futils_open_ro(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @p_fstat(i32 %32, %struct.stat* %8)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @GIT_ERROR_OS, align 4
  %37 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @p_close(i32 %38)
  br label %66

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @git__is_sizet(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %47 = call i32 @git_error_set(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @p_close(i32 %48)
  br label %66

50:                                               ; preds = %40
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @git_futils_readbuffer_fd(i32* %54, i32 %55, i64 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @p_close(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %70

66:                                               ; preds = %64, %45, %35, %29, %22
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = call i32 @git_sortedcache_wunlock(%struct.TYPE_5__* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %65, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @git_sortedcache_wlock(%struct.TYPE_5__*) #1

declare dso_local i32 @git_futils_filestamp_check(i32*, i32) #1

declare dso_local i32 @git_futils_open_ro(i32) #1

declare dso_local i64 @p_fstat(i32, %struct.stat*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git__is_sizet(i64) #1

declare dso_local i32 @git_futils_readbuffer_fd(i32*, i32, i64) #1

declare dso_local i32 @git_sortedcache_wunlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
