; ModuleID = '/home/carl/AnghaBench/libgit2/tests/describe/extr_t6120.c_commit_and_tag.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/describe/extr_t6120.c_commit_and_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"describe/file\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @commit_and_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_and_tag(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @repo, align 4
  %11 = call i32 @git_repository_index__weakptr(i32** %7, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @git_index_add_bypath(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @git_index_write(i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 10
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @repo, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @cl_repo_commit_from_index(i32* %8, i32 %23, i32* null, i32 %25, i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* @repo, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @git_reference_create(i32** %9, i32 %32, i8* %33, i32* %8, i32 0, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @git_reference_free(i32* %36)
  br label %38

38:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #1

declare dso_local i32 @cl_git_append2file(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
