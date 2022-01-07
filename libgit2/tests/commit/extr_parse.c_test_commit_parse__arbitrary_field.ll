; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__arbitrary_field.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__arbitrary_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [833 x i8] c"-----BEGIN PGP SIGNATURE-----\0AVersion: GnuPG v1.4.12 (Darwin)\0A\0AiQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\0Ao6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\0AJGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\0AAsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\0ASphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\0Awho/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\0A6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\0AcmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\0Ac6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\0AZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\0A7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\0AcpxtDQQMGYFpXK/71stq\0A=ozeK\0A-----END PGP SIGNATURE-----\00", align 1
@passing_commit_cases = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"6b79e22d69bf46e289df0345a14ca059dfc9bdf6\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"34734e478d6cf50c27c9d69026d93974d052c454\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"awesomeness\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"par\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Vicent Marti <tanoku@gmail.com> 1273848544 +0200\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__arbitrary_field() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([833 x i8], [833 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32*, i32** @passing_commit_cases, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @parse_commit(i32** %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = call i32 @git_buf_clear(%struct.TYPE_6__* %2)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = call i32 @git_buf_clear(%struct.TYPE_6__* %2)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_s(i8* %27, i32 %29)
  %31 = call i32 @git_buf_clear(%struct.TYPE_6__* %2)
  %32 = load i32, i32* @GIT_ENOTFOUND, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @cl_git_fail_with(i32 %32, i32 %34)
  %36 = load i32, i32* @GIT_ENOTFOUND, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i32 @cl_git_fail_with(i32 %36, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_commit__free(i32* %40)
  %42 = load i32*, i32** @passing_commit_cases, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @parse_commit(i32** %1, i32 %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_commit_header_field(%struct.TYPE_6__* %2, i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_commit__free(i32* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @parse_commit(i32**, i32) #2

declare dso_local i32 @git_commit_header_field(%struct.TYPE_6__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_6__*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_commit__free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
