; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__query_refspecs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_remotes.c_test_network_remote_remotes__query_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"git://github.com/libgit2/libgit2\00", align 1
@fetch_refspecs = common dso_local global i32* null, align 8
@push_refspecs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_remotes__query_refspecs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @_repo, align 4
  %5 = call i32 @git_remote_create_with_fetchspec(i32** %1, i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_remote_free(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load i32, i32* @_repo, align 4
  %14 = load i32*, i32** @fetch_refspecs, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_remote_add_fetch(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_repo, align 4
  %22 = load i32*, i32** @push_refspecs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_remote_add_push(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  br label %29

29:                                               ; preds = %12
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load i32, i32* @_repo, align 4
  %34 = call i32 @git_remote_lookup(i32** %1, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_remote_get_fetch_refspecs(%struct.TYPE_5__* %2, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %55, %32
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32*, i32** @fetch_refspecs, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cl_assert_equal_s(i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %39

58:                                               ; preds = %39
  %59 = call i32 @git_strarray_free(%struct.TYPE_5__* %2)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_remote_get_push_refspecs(%struct.TYPE_5__* %2, i32* %60)
  %62 = call i32 @cl_git_pass(i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %79, %58
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32*, i32** @push_refspecs, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cl_assert_equal_s(i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %63

82:                                               ; preds = %63
  %83 = call i32 @git_strarray_free(%struct.TYPE_5__* %2)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @git_remote_free(i32* %84)
  %86 = load i32, i32* @_repo, align 4
  %87 = call i32 @git_remote_delete(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_create_with_fetchspec(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_remote_add_fetch(i32, i8*, i32) #1

declare dso_local i32 @git_remote_add_push(i32, i8*, i32) #1

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_remote_get_fetch_refspecs(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_5__*) #1

declare dso_local i32 @git_remote_get_push_refspecs(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @git_remote_delete(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
