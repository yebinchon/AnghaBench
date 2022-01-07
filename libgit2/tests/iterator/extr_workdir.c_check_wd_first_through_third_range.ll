; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_check_wd_first_through_third_range.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_check_wd_first_through_third_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@check_wd_first_through_third_range.expected = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"THIRD\00", align 1
@GIT_ITERATOR_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @check_wd_first_through_third_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_wd_first_through_third_range(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 24, i1 false)
  %13 = load i32, i32* @GIT_ITERATOR_IGNORE_CASE, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_iterator_for_workdir(i32** %7, i32* %19, i32* null, i32* null, %struct.TYPE_7__* %8)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_iterator_current(%struct.TYPE_8__** %9, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %49, %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* @check_wd_first_through_third_range.expected, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i8* %32, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @git_iterator_advance(%struct.TYPE_8__** %9, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @GIT_ITEROVER, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %28
  %46 = phi i1 [ true, %28 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8*], [4 x i8*]* @check_wd_first_through_third_range.expected, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @cl_assert(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @git_iterator_free(i32* %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @git_iterator_current(%struct.TYPE_8__**, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_8__**, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
