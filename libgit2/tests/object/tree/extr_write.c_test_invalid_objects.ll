; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blob_oid = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1
@first_tree = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"0000000000111111111122222222223333333333\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"folder\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_invalid_objects.c\00", align 1
@.str.5 = private unnamed_addr constant [122 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22file.txt\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.6 = private unnamed_addr constant [119 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22file.txt\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.7 = private unnamed_addr constant [120 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22folder\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.8 = private unnamed_addr constant [117 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22folder\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"invalid_file.txt\00", align 1
@.str.10 = private unnamed_addr constant [130 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22invalid_file.txt\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.11 = private unnamed_addr constant [127 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22invalid_file.txt\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"invalid_folder\00", align 1
@.str.13 = private unnamed_addr constant [128 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22invalid_folder\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.14 = private unnamed_addr constant [125 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22invalid_folder\22, &invalid_blob_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"file_as_folder\00", align 1
@.str.16 = private unnamed_addr constant [126 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22file_as_folder\22, &valid_blob_id, GIT_FILEMODE_TREE)\00", align 1
@.str.17 = private unnamed_addr constant [123 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22file_as_folder\22, &valid_blob_id, GIT_FILEMODE_TREE)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"folder_as_file.txt\00", align 1
@.str.19 = private unnamed_addr constant [130 x i8] c"Expected function call to succeed: git_treebuilder_insert(NULL, builder, \22folder_as_file.txt\22, &valid_tree_id, GIT_FILEMODE_BLOB)\00", align 1
@.str.20 = private unnamed_addr constant [127 x i8] c"Expected function call to fail: git_treebuilder_insert(NULL, builder, \22folder_as_file.txt\22, &valid_tree_id, GIT_FILEMODE_BLOB)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_invalid_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_objects(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i8*, i8** @blob_oid, align 8
  %9 = call i32 @git_oid_fromstr(i32* %4, i8* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i8*, i8** @first_tree, align 8
  %14 = call i32 @git_oid_fromstr(i32* %6, i8* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_treebuilder_new(i32** %3, i32 %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %23 = call i32 @git_treebuilder_insert(i32* null, i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %4, i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %27 = call i32 @git_treebuilder_insert(i32* null, i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %6, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %31 = call i32 @git_treebuilder_insert(i32* null, i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.6, i64 0, i64 0)
  %42 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %37, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 55, i8* %41, i8* null, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %45 = call i32 @git_treebuilder_insert(i32* null, i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.8, i64 0, i64 0)
  %56 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %51, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 56, i8* %55, i8* null, i32 1)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %59 = call i32 @git_treebuilder_insert(i32* null, i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %5, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %2, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.11, i64 0, i64 0)
  %70 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %65, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 59, i8* %69, i8* null, i32 1)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %73 = call i32 @git_treebuilder_insert(i32* null, i32* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %5, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.14, i64 0, i64 0)
  %84 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %79, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 60, i8* %83, i8* null, i32 1)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %87 = call i32 @git_treebuilder_insert(i32* null, i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %4, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %2, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %2, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.17, i64 0, i64 0)
  %98 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %93, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 63, i8* %97, i8* null, i32 1)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %101 = call i32 @git_treebuilder_insert(i32* null, i32* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32* %6, i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.20, i64 0, i64 0)
  %112 = call i32 (i32, i8*, i32, i8*, i8*, i32, ...) bitcast (i32 (...)* @clar__assert to i32 (i32, i8*, i32, i8*, i8*, i32, ...)*)(i32 %107, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 64, i8* %111, i8* null, i32 1)
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @git_treebuilder_free(i32* %113)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @clar__assert(...) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
