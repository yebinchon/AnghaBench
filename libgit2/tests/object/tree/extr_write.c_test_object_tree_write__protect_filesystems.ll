; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__protect_filesystems.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__protect_filesystems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"fa49b077972391ad58037050f2a75f74e3671e92\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".git.\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"git~1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".git\EF\BB\BF\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".git\E2\80\AD\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"core.protectHFS\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"core.protectNTFS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__protect_filesystems() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_treebuilder_new(i32** %1, i32 %5, i32* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %10 = call i32 @git_treebuilder_insert(i32* null, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %2, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %14 = call i32 @git_treebuilder_insert(i32* null, i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %2, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %18 = call i32 @git_treebuilder_insert(i32* null, i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %22 = call i32 @git_treebuilder_insert(i32* null, i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %2, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_treebuilder_free(i32* %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @cl_repo_set_bool(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @cl_repo_set_bool(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_treebuilder_new(i32** %1, i32 %30, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %35 = call i32 @git_treebuilder_insert(i32* null, i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %2, i32 %34)
  %36 = call i32 @cl_git_fail(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %39 = call i32 @git_treebuilder_insert(i32* null, i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %2, i32 %38)
  %40 = call i32 @cl_git_fail(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %43 = call i32 @git_treebuilder_insert(i32* null, i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %2, i32 %42)
  %44 = call i32 @cl_git_fail(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %47 = call i32 @git_treebuilder_insert(i32* null, i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %2, i32 %46)
  %48 = call i32 @cl_git_fail(i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_treebuilder_free(i32* %49)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
