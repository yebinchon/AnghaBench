; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__oid_unknown_succeeds_without_strict.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_create.c_test_refs_create__oid_unknown_succeeds_without_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"refs/heads/new-head\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"deadbeef3f795b2b4353bcce3a527ad0a4f7f644\00", align 1
@GIT_OPT_ENABLE_STRICT_OBJECT_CREATION = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_create__oid_unknown_succeeds_without_strict() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, align 4
  %7 = call i32 @git_libgit2_opts(i32 %6, i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @git_reference_create(i32** %1, i32 %9, i8* %10, i32* %3, i32 0, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_free(i32* %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @git_reference_lookup(i32** %2, i32 %15, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_reference_free(i32* %19)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
