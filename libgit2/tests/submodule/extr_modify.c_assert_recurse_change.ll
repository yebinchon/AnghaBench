; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_assert_recurse_change.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_modify.c_assert_recurse_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_recurse_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @git_submodule_set_fetch_recurse_submodules(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_submodule_lookup(i32** %3, i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_submodule_fetch_recurse_submodules(i32* %12)
  %14 = call i32 @cl_assert_equal_i(i32 %11, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_submodule_free(i32* %15)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_set_fetch_recurse_submodules(i32, i8*, i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_submodule_fetch_recurse_submodules(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
