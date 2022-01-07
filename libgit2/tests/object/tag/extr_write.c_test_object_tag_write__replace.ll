; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__replace.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tagged_commit = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/tags/e90810b\00", align 1
@tagger_name = common dso_local global i32 0, align 4
@tagger_email = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"e90810b\00", align 1
@tagger_message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_write__replace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @tagged_commit, align 4
  %8 = call i32 @git_oid_fromstr(i32* %1, i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %11 = call i32 @git_object_lookup(i32** %6, i32 %9, i32* %1, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_reference_lookup(i32** %5, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @git_reference_target(i32* %16)
  %18 = call i32 @git_oid_cpy(i32* %3, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @git_reference_free(i32* %19)
  %21 = load i32, i32* @tagger_name, align 4
  %22 = load i32, i32* @tagger_email, align 4
  %23 = call i32 @git_signature_new(i32** %4, i32 %21, i32 %22, i32 123456789, i32 60)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @tagger_message, align 4
  %29 = call i32 @git_tag_create(i32* %2, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32* %27, i32 %28, i32 1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_object_free(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @git_signature_free(i32* %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = call i32 @git_reference_lookup(i32** %5, i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_reference_target(i32* %38)
  %40 = call i64 @git_oid_cmp(i32 %39, i32* %2)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @git_reference_target(i32* %44)
  %46 = call i64 @git_oid_cmp(i32 %45, i32* %3)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @git_reference_free(i32* %50)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_new(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @git_tag_create(i32*, i32, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
