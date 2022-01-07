; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__attach_multiline_signature.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__attach_multiline_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [833 x i8] c"-----BEGIN PGP SIGNATURE-----\0AVersion: GnuPG v1.4.12 (Darwin)\0A\0AiQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\0Ao6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\0AJGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\0AAsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\0ASphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\0Awho/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\0A6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\0AcmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\0Ac6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\0AZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\0A7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\0AcpxtDQQMGYFpXK/71stq\0A=ozeK\0A-----END PGP SIGNATURE-----\00", align 1
@.str.1 = private unnamed_addr constant [241 x i8] c"tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\0Aparent 8496071c1b46c854b31185ea97743be6a8774479\0Aauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Acommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\0A\0Aa simple commit which works\0A\00", align 1
@.str.2 = private unnamed_addr constant [1097 x i8] c"tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\0Aparent 8496071c1b46c854b31185ea97743be6a8774479\0Aauthor Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Acommitter Ben Burkert <ben@benburkert.com> 1358451456 -0800\0Agpgsig -----BEGIN PGP SIGNATURE-----\0A Version: GnuPG v1.4.12 (Darwin)\0A \0A iQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\0A o6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\0A JGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\0A AsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\0A SphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\0A who/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\0A 6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\0A cmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\0A c6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\0A ZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\0A 7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\0A cpxtDQQMGYFpXK/71stq\0A =ozeK\0A -----END PGP SIGNATURE-----\0A\0Aa simple commit which works\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"gpgsig\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__attach_multiline_signature() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* getelementptr inbounds ([833 x i8], [833 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([1097 x i8], [1097 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @git_commit_create_with_signature(i32* %4, i32 %8, i8* %9, i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @git_commit_create_with_signature(i32* %5, i32 %13, i8* %14, i8* %15, i8* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 @git_oid_cmp(i32* %4, i32* %5)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_repository_odb(i32** %6, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @git_odb_read(i32** %7, i32* %26, i32* %4)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @git_odb_object_data(i32* %30)
  %32 = call i32 @cl_assert_equal_s(i8* %29, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @git_odb_object_free(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @git_odb_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_create_with_signature(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_repository_odb(i32**, i32) #1

declare dso_local i32 @git_odb_read(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_odb_object_data(i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
