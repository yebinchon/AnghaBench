; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_remotes.c_test_online_remotes__detached_remote_succeeds_ls.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_remotes.c_test_online_remotes__detached_remote_succeeds_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"refs/heads/first-merge\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"refs/heads/no-parent\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"refs/tags/annotated_tag\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"refs/tags/annotated_tag^{}\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"refs/tags/blob\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"refs/tags/commit_tree\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"refs/tags/nearly-dangling\00", align 1
@__const.test_online_remotes__detached_remote_succeeds_ls.refs = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)], align 16
@URL = common dso_local global i32 0, align 4
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_remotes__detached_remote_succeeds_ls() #0 {
  %1 = alloca [9 x i8*], align 16
  %2 = alloca %struct.TYPE_3__**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = bitcast [9 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([9 x i8*]* @__const.test_online_remotes__detached_remote_succeeds_ls.refs to i8*), i64 72, i1 false)
  %9 = load i32, i32* @URL, align 4
  %10 = call i32 @git_remote_create_detached(i32** %3, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %14 = call i32 @git_remote_connect(i32* %12, i32 %13, i32* null, i32* null, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_remote_ls(%struct.TYPE_3__*** %2, i64* %6, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @cl_assert_equal_sz(i64 %19, i32 9)
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %57, %0
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  store i8 0, i8* %7, align 1
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds [9 x i8*], [9 x i8*]* %1, i64 0, i64 0
  %29 = call i64 @ARRAY_SIZE(i8** %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds [9 x i8*], [9 x i8*]* %1, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i32 %37, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i8 1, i8* %7, align 1
  br label %48

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %26

48:                                               ; preds = %43, %26
  %49 = load i8, i8* %7, align 1
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cl_assert_(i8 signext %49, i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %21

60:                                               ; preds = %21
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @git_remote_free(i32* %61)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_create_detached(i32**, i32) #2

declare dso_local i32 @git_remote_connect(i32*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_ls(%struct.TYPE_3__***, i64*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @cl_assert_(i8 signext, i32) #2

declare dso_local i32 @git_remote_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
