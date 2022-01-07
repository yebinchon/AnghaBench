; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_stash_helpers.c_setup_stash.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_stash_helpers.c_setup_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"stash/what\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"stash/how\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"small\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"stash/who\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"world\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stash/when\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"now\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"stash/just.ignore\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"me\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"stash/.gitignore\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"*.ignore\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"goodbye\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"not so small and\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"funky world\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"stash/why\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"would anybody use stash?\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"stash/where\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"????\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"see you later\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"....\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_stash(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @git_repository_index(i32** %5, i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @git_index_add_bypath(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @git_index_add_bypath(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @cl_repo_commit_from_index(i32* null, i32* %27, i32* %28, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %30 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %31 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %32 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %33 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %34 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @git_index_add_bypath(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_index_add_bypath(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @git_index_add_bypath(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @git_index_add_bypath(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @git_index_write(i32* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %51 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_index_free(i32* %52)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
