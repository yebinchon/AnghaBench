; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_delete.c_test_refs_delete__packed_only.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_delete.c_test_refs_delete__packed_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"refs/heads/new_ref\00", align 1
@current_master_tip = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_delete__packed_only() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @current_master_tip, align 4
  %6 = call i32 @git_oid_fromstr(i32* %3, i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @git_reference_create(i32** %1, i32 %7, i8* %8, i32* %3, i32 0, i32* null)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_reference_free(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @git_reference_lookup(i32** %1, i32 %13, i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @reference_is_packed(i32* %17)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_repository_refdb(i32** %2, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_refdb_compress(i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_reference_free(i32* %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @git_reference_lookup(i32** %1, i32 %30, i8* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @reference_is_packed(i32* %34)
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_reference_delete(i32* %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_reference_free(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_refdb_free(i32* %44)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @reference_is_packed(i32*) #1

declare dso_local i32 @git_repository_refdb(i32**, i32) #1

declare dso_local i32 @git_refdb_compress(i32*) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_refdb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
