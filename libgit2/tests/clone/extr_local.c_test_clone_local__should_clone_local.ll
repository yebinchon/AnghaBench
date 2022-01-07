; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_local.c_test_clone_local__should_clone_local.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_local.c_test_clone_local__should_clone_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_CLONE_LOCAL_AUTO = common dso_local global i32 0, align 4
@GIT_CLONE_LOCAL = common dso_local global i32 0, align 4
@GIT_CLONE_LOCAL_NO_LINKS = common dso_local global i32 0, align 4
@GIT_CLONE_NO_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"other-host.mycompany.com\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%2e%67%69%74\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_local__should_clone_local() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca i8*, align 8
  %3 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %4 = call i8* @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @file_url(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* @GIT_CLONE_LOCAL_AUTO, align 4
  %11 = call i32 @git_clone__should_clone_local(i8* %9, i32 %10)
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @GIT_CLONE_LOCAL, align 4
  %16 = call i32 @git_clone__should_clone_local(i8* %14, i32 %15)
  %17 = call i32 @cl_assert_equal_i(i32 1, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @GIT_CLONE_LOCAL_NO_LINKS, align 4
  %21 = call i32 @git_clone__should_clone_local(i8* %19, i32 %20)
  %22 = call i32 @cl_assert_equal_i(i32 1, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  %26 = call i32 @git_clone__should_clone_local(i8* %24, i32 %25)
  %27 = call i32 @cl_assert_equal_i(i32 0, i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @file_url(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @GIT_CLONE_LOCAL_AUTO, align 4
  %34 = call i32 @git_clone__should_clone_local(i8* %32, i32 %33)
  %35 = call i32 @cl_assert_equal_i(i32 0, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @GIT_CLONE_LOCAL, align 4
  %39 = call i32 @git_clone__should_clone_local(i8* %37, i32 %38)
  %40 = call i32 @cl_assert_equal_i(i32 1, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @GIT_CLONE_LOCAL_NO_LINKS, align 4
  %44 = call i32 @git_clone__should_clone_local(i8* %42, i32 %43)
  %45 = call i32 @cl_assert_equal_i(i32 1, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  %49 = call i32 @git_clone__should_clone_local(i8* %47, i32 %48)
  %50 = call i32 @cl_assert_equal_i(i32 0, i32 %49)
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @file_url(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @GIT_CLONE_LOCAL_AUTO, align 4
  %57 = call i32 @git_clone__should_clone_local(i8* %55, i32 %56)
  %58 = call i32 @cl_assert_equal_i(i32 0, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @GIT_CLONE_LOCAL, align 4
  %62 = call i32 @git_clone__should_clone_local(i8* %60, i32 %61)
  %63 = call i32 @cl_assert_equal_i(i32 0, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @GIT_CLONE_LOCAL_NO_LINKS, align 4
  %67 = call i32 @git_clone__should_clone_local(i8* %65, i32 %66)
  %68 = call i32 @cl_assert_equal_i(i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  %72 = call i32 @git_clone__should_clone_local(i8* %70, i32 %71)
  %73 = call i32 @cl_assert_equal_i(i32 0, i32 %72)
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @file_url(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = call i32 @git_buf_shorten(%struct.TYPE_7__* %1, i32 4)
  %78 = call i32 @git_buf_puts(%struct.TYPE_7__* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @GIT_CLONE_LOCAL_AUTO, align 4
  %83 = call i32 @git_clone__should_clone_local(i8* %81, i32 %82)
  %84 = call i32 @cl_assert_equal_i(i32 0, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @GIT_CLONE_LOCAL, align 4
  %88 = call i32 @git_clone__should_clone_local(i8* %86, i32 %87)
  %89 = call i32 @cl_assert_equal_i(i32 1, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @GIT_CLONE_LOCAL_NO_LINKS, align 4
  %93 = call i32 @git_clone__should_clone_local(i8* %91, i32 %92)
  %94 = call i32 @cl_assert_equal_i(i32 1, i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  %98 = call i32 @git_clone__should_clone_local(i8* %96, i32 %97)
  %99 = call i32 @cl_assert_equal_i(i32 0, i32 %98)
  %100 = load i8*, i8** %2, align 8
  %101 = load i32, i32* @GIT_CLONE_LOCAL_AUTO, align 4
  %102 = call i32 @git_clone__should_clone_local(i8* %100, i32 %101)
  %103 = call i32 @cl_assert_equal_i(i32 1, i32 %102)
  %104 = load i8*, i8** %2, align 8
  %105 = load i32, i32* @GIT_CLONE_LOCAL, align 4
  %106 = call i32 @git_clone__should_clone_local(i8* %104, i32 %105)
  %107 = call i32 @cl_assert_equal_i(i32 1, i32 %106)
  %108 = load i8*, i8** %2, align 8
  %109 = load i32, i32* @GIT_CLONE_LOCAL_NO_LINKS, align 4
  %110 = call i32 @git_clone__should_clone_local(i8* %108, i32 %109)
  %111 = call i32 @cl_assert_equal_i(i32 1, i32 %110)
  %112 = load i8*, i8** %2, align 8
  %113 = load i32, i32* @GIT_CLONE_NO_LOCAL, align 4
  %114 = call i32 @git_clone__should_clone_local(i8* %112, i32 %113)
  %115 = call i32 @cl_assert_equal_i(i32 0, i32 %114)
  %116 = call i32 @git_buf_dispose(%struct.TYPE_7__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @cl_fixture(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @file_url(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_clone__should_clone_local(i8*, i32) #2

declare dso_local i32 @git_buf_shorten(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
