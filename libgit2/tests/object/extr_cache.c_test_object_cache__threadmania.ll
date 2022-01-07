; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__threadmania.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__threadmania.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@g_data = common dso_local global %struct.TYPE_2__* null, align 8
@REPEAT = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@THREADCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_cache__threadmania() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8* (i8*)*, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_data, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %63, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @REPEAT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @git_repository_open(i32** @g_repo, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %57, %23
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @THREADCOUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = call i8* @git__malloc(i32 8)
  store i8* %32, i8** %4, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = srem i32 %37, %38
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* (i8*)* @cache_parsed, i8* (i8*)* @cache_raw
  store i8* (i8*)* %47, i8* (i8*)** %5, align 8
  %48 = load i8* (i8*)*, i8* (i8*)** %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* %48(i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = icmp eq i8* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @git__free(i8* %55)
  br label %57

57:                                               ; preds = %31
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load i32*, i32** @g_repo, align 8
  %62 = call i32 @git_repository_free(i32* %61)
  store i32* null, i32** @g_repo, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %19

66:                                               ; preds = %19
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i8* @git__malloc(i32) #1

declare dso_local i8* @cache_parsed(i8*) #1

declare dso_local i8* @cache_raw(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
