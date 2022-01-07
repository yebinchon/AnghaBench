; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parent.c_assert_nth_gen_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parent.c_assert_nth_gen_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @assert_nth_gen_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_nth_gen_parent(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @commit, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @git_commit_nth_gen_ancestor(i32** %5, i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @git_commit_id(i32* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @git_oid_streq(i32 %16, i8* %17)
  %19 = call i32 @cl_assert_equal_i(i32 0, i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @GIT_ENOTFOUND, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @cl_assert_equal_i(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @git_commit_free(i32* %25)
  ret void
}

declare dso_local i32 @git_commit_nth_gen_ancestor(i32**, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_oid_streq(i32, i8*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
