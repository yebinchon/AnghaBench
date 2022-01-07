; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__extra_header_fields.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__extra_header_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@silly_tag = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"v1_0_1 release\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_read__extra_header_fields() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_odb__weakptr(i32** %2, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @silly_tag, align 4
  %9 = load i32, i32* @silly_tag, align 4
  %10 = call i32 @strlen(i32 %9)
  %11 = load i32, i32* @GIT_OBJECT_TAG, align 4
  %12 = call i32 @git_odb_write(i32* %3, i32* %7, i32 %8, i32 %10, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i32 @git_tag_lookup(i32** %1, i32 %14, i32* %3)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_tag_message(i32* %17)
  %19 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_tag_free(i32* %20)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32) #1

declare dso_local i32 @git_odb_write(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_tag_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_tag_message(i32*) #1

declare dso_local i32 @git_tag_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
