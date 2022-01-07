; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_bare.c_test_revert_bare__orphan.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_bare.c_test_revert_bare__orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"296a6d3be1dff05c5d1f631d2459389fa7b619eb\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"file-mainline.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"39467716290f6df775a91cdb9a4eb39295018145\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ebb03002cee5d66c7732dd06241119fe72ab96a5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_bare__orphan() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [1 x %struct.merge_index_entry], align 16
  %7 = getelementptr inbounds [1 x %struct.merge_index_entry], [1 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 0
  store i32 33188, i32* %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 2
  store i8* null, i8** %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.1 to i32), i32* %11, align 8
  %12 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @git_commit_lookup(i32** %1, i32 %13, i32* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_commit_lookup(i32** %2, i32 %17, i32* %4)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_revert_commit(i32** %5, i32 %20, i32* %21, i32* %22, i32 0, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [1 x %struct.merge_index_entry], [1 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %27 = call i32 @merge_test_index(i32* %25, %struct.merge_index_entry* %26, i32 1)
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_commit_free(i32* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_commit_free(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @git_index_free(i32* %33)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_revert_commit(i32**, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
