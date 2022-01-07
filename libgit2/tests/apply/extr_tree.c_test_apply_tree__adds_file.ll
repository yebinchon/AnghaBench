; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_tree.c_test_apply_tree__adds_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_tree.c_test_apply_tree__adds_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"f51658077d85f2264fa179b4d0848268cb3475c3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"6370543fcfedb3e6516ec53b06158f3687dc1447\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"newfile.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"68af1fc7407fd9addf1701a87eb1c95c7494c598\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"94d2c01087f48213bd157222d54edfefd77c9bba\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"539bd011c4822c560c1d17cab095006b7a10f707\00", align 1
@repo = common dso_local global i32 0, align 4
@DIFF_ADD_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_tree__adds_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [7 x %struct.merge_index_entry], align 16
  store i32* null, i32** %5, align 8
  %7 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 0
  store i32 33188, i32* %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 2
  store i8* null, i8** %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i64 1
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 0
  store i32 33188, i32* %13, align 16
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 2
  store i8* null, i8** %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i64 1
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 0
  store i32 33188, i32* %18, align 16
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 2
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i64 1
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 0
  store i32 33188, i32* %23, align 16
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 2
  store i8* null, i8** %25, align 16
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %26, align 8
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %22, i64 1
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 0
  store i32 33188, i32* %28, align 16
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 2
  store i8* null, i8** %30, align 16
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.9 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i64 1
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 0
  store i32 33188, i32* %33, align 16
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 2
  store i8* null, i8** %35, align 16
  %36 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.11 to i32), i32* %36, align 8
  %37 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %32, i64 1
  %38 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 0
  store i32 33188, i32* %38, align 16
  %39 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 2
  store i8* null, i8** %40, align 16
  %41 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %37, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.13 to i32), i32* %41, align 8
  %42 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %43 = load i32, i32* @repo, align 4
  %44 = call i32 @git_commit_lookup(i32** %2, i32 %43, i32* %1)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @git_commit_tree(i32** %3, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @DIFF_ADD_FILE, align 4
  %50 = load i32, i32* @DIFF_ADD_FILE, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = call i32 @git_diff_from_buffer(i32** %4, i32 %49, i32 %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32, i32* @repo, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @git_apply_to_tree(i32** %5, i32 %54, i32* %55, i32* %56, i32* null)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %61 = call i32 @merge_test_index(i32* %59, %struct.merge_index_entry* %60, i32 7)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @git_index_free(i32* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @git_diff_free(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @git_tree_free(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @git_commit_free(i32* %68)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_apply_to_tree(i32**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
