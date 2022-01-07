; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__extract_signature.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__extract_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [833 x i8] c"-----BEGIN PGP SIGNATURE-----\0AVersion: GnuPG v1.4.12 (Darwin)\0A\0AiQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\0Ao6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\0AJGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\0AAsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\0ASphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\0Awho/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\0A6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\0AcmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\0Ac6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\0AZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\0A7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\0AcpxtDQQMGYFpXK/71stq\0A=ozeK\0A-----END PGP SIGNATURE-----\00", align 1
@.str.1 = private unnamed_addr constant [241 x i8] c"tree 6b79e22d69bf46e289df0345a14ca059dfc9bdf6\0Aparent 34734e478d6cf50c27c9d69026d93974d052c454\0Aauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Acommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\0A\0Aa simple commit which works\0A\00", align 1
@.str.2 = private unnamed_addr constant [238 x i8] c"tree 51832e6397b30309c8bcad9c55fa6ae67778f378\0Aparent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\0Aauthor Some User <someuser@gmail.com> 1454537944 -0700\0Acommitter Some User <someuser@gmail.com> 1454537944 -0700\0Agpgsig bad\0A\0Acorrupt signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [227 x i8] c"tree 51832e6397b30309c8bcad9c55fa6ae67778f378\0Aparent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\0Aauthor Some User <someuser@gmail.com> 1454537944 -0700\0Acommitter Some User <someuser@gmail.com> 1454537944 -0700\0A\0Acorrupt signature\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@passing_commit_cases = common dso_local global i8** null, align 8
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"45dd856fdd4d89b884c340ba0e047752d9b085d6\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"bad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__extract_signature() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([833 x i8], [833 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_repository_odb__weakptr(i32** %1, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i8**, i8*** @passing_commit_cases, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 4
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** @passing_commit_cases, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %23 = call i32 @git_odb_write(i32* %2, i32* %14, i8* %17, i32 %21, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_commit_extract_signature(%struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %25, i32* %2, i8* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_s(i8* %28, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cl_assert_equal_s(i8* %32, i32 %34)
  %36 = call i32 @git_buf_clear(%struct.TYPE_8__* %3)
  %37 = call i32 @git_buf_clear(%struct.TYPE_8__* %4)
  %38 = load i32, i32* @g_repo, align 4
  %39 = call i32 @git_commit_extract_signature(%struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %38, i32* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* %41, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_s(i8* %45, i32 %47)
  %49 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32, i32* @GIT_ENOTFOUND, align 4
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @git_commit_extract_signature(%struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %52, i32* %2, i8* null)
  %54 = call i32 @cl_git_fail_with(i32 %51, i32 %53)
  %55 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %56 = call %struct.TYPE_9__* (...) @git_error_last()
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_i(i32 %55, i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = load i8**, i8*** @passing_commit_cases, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** @passing_commit_cases, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %69 = call i32 @git_odb_write(i32* %2, i32* %60, i8* %63, i32 %67, i32 %68)
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32, i32* @GIT_ENOTFOUND, align 4
  %72 = load i32, i32* @g_repo, align 4
  %73 = call i32 @git_commit_extract_signature(%struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %72, i32* %2, i8* null)
  %74 = call i32 @cl_git_fail_with(i32 %71, i32 %73)
  %75 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %76 = call %struct.TYPE_9__* (...) @git_error_last()
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cl_assert_equal_i(i32 %75, i32 %78)
  %80 = call i32 @git_buf_clear(%struct.TYPE_8__* %3)
  %81 = call i32 @git_buf_clear(%struct.TYPE_8__* %4)
  %82 = load i32*, i32** %1, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %87 = call i32 @git_odb_write(i32* %2, i32* %82, i8* %83, i32 %85, i32 %86)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32, i32* @g_repo, align 4
  %90 = call i32 @git_commit_extract_signature(%struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32 %89, i32* %2, i8* null)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cl_assert_equal_s(i8* %95, i32 %97)
  %99 = call i32 @git_buf_dispose(%struct.TYPE_8__* %3)
  %100 = call i32 @git_buf_dispose(%struct.TYPE_8__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32) #2

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_commit_extract_signature(%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_8__*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local %struct.TYPE_9__* @git_error_last(...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
