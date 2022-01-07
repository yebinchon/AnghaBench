; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__try_to_retrieve_branch_before_abbrev_sha.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__try_to_retrieve_branch_before_abbrev_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"c47800\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HEAD~3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__try_to_retrieve_branch_before_abbrev_sha() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_revparse_single(i32** %3, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_branch_create(i32** %2, i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_object_id(i32* %23)
  %25 = call i32 @git_oid_tostr(i8* %10, i32 %22, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %10, i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_object_free(i32* %30)
  %32 = call i32 (...) @cl_git_sandbox_cleanup()
  %33 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @test_object_inrepo(i8*, i8*, i32*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #2

declare dso_local i32 @git_branch_create(i32**, i32*, i8*, i32*, i32) #2

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
