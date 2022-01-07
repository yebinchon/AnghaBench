; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_duplicateentries.c_tree_checker.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_duplicateentries.c_tree_checker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @tree_checker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_checker(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @_repo, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @git_tree_lookup(i32** %7, i32 %10, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @git_tree_entrycount(i32* %14)
  %16 = trunc i64 %15 to i32
  %17 = call i32 @cl_assert_equal_i(i32 1, i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @git_tree_entry_byindex(i32* %18, i32 0)
  store i32* %19, i32** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_oid_fromstr(i32* %9, i8* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @git_tree_entry_id(i32* %23)
  %25 = call i32 @git_oid_cmp(i32* %9, i32 %24)
  %26 = call i32 @cl_assert_equal_i(i32 0, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_tree_entry_filemode(i32* %28)
  %30 = call i32 @cl_assert_equal_i(i32 %27, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @git_tree_free(i32* %31)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
