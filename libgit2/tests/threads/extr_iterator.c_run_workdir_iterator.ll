; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_iterator.c_run_workdir_iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_iterator.c_run_workdir_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_workdir_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_workdir_iterator(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @git_repository_path(i32 %11)
  %13 = call i32 @git_repository_open(i32** %4, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @git_iterator_for_workdir(i32** %5, i32* %15, i32* null, i32* null, %struct.TYPE_7__* %6)
  %17 = call i32 @cl_git_pass(i32 %16)
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_iterator_advance_into(%struct.TYPE_8__** %7, i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @GIT_ENOTFOUND, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_iterator_advance(%struct.TYPE_8__** %7, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %31
  br label %44

41:                                               ; preds = %25, %22
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_iterator_advance(%struct.TYPE_8__** %7, i32* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_iterator_current_is_ignored(i32* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %18

51:                                               ; preds = %18
  %52 = load i32, i32* @GIT_ITEROVER, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @cl_assert_equal_i(i32 %52, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @git_iterator_free(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @git_repository_free(i32* %57)
  %59 = call i32 (...) @git_error_clear()
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_iterator_advance_into(%struct.TYPE_8__**, i32*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_8__**, i32*) #2

declare dso_local i32 @git_iterator_current_is_ignored(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_error_clear(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
