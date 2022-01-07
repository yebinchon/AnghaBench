; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_create_dummy_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_push.c_create_dummy_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Pusher Joe\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pjoe\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Empty tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"refs/heads/empty-tree\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"commit yo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_dummy_commit(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @git_repository_index(i32** %5, i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @git_index_write_tree(i32* %6, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @git_index_free(i32* %15)
  %17 = call i32 @git_signature_now(i32** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @git_commit_create_from_ids(i32* %7, i32* %19, i32* null, i32* %20, i32* %21, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32 0, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_reference_create(i32** %24, i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_signature_free(i32* %28)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_commit_create_from_ids(i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
