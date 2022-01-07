; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diff_helpers.c_resolve_commit_oid_to_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diff_helpers.c_resolve_commit_oid_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @resolve_commit_oid_to_tree(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @git_oid_fromstrn(i32* %6, i8* %11, i64 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %19 = call i32 @git_object_lookup_prefix(i32** %7, i32* %16, i32* %6, i64 %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %24 = call i32 @git_object_peel(i32** %8, i32* %22, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_object_free(i32* %26)
  %28 = load i32*, i32** %8, align 8
  ret i32* %28
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git_oid_fromstrn(i32*, i8*, i64) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup_prefix(i32**, i32*, i32*, i64, i32) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
