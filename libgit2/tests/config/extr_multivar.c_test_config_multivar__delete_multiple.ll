; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_multivar.c_test_config_multivar__delete_multiple.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_multivar.c_test_config_multivar__delete_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"config/config11\00", align 1
@_name = common dso_local global i32 0, align 4
@cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_multivar__delete_multiple() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  store i32 0, i32* %2, align 4
  %5 = load i32*, i32** %1, align 8
  %6 = load i32, i32* @_name, align 4
  %7 = load i32, i32* @cb, align 4
  %8 = call i32 @git_config_get_multivar_foreach(i32* %5, i32 %6, i32* null, i32 %7, i32* %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @_name, align 4
  %16 = call i32 @git_config_delete_multivar(i32* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  store i32 0, i32* %2, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @_name, align 4
  %20 = load i32, i32* @cb, align 4
  %21 = call i32 @git_config_get_multivar_foreach(i32* %18, i32 %19, i32* null, i32 %20, i32* %2)
  %22 = load i32, i32* @GIT_ENOTFOUND, align 4
  %23 = call i32 @cl_git_fail_with(i32 %21, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_config_free(i32* %24)
  %26 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  store i32 0, i32* %2, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @_name, align 4
  %30 = load i32, i32* @cb, align 4
  %31 = call i32 @git_config_get_multivar_foreach(i32* %28, i32 %29, i32* null, i32 %30, i32* %2)
  %32 = load i32, i32* @GIT_ENOTFOUND, align 4
  %33 = call i32 @cl_git_fail_with(i32 %31, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_config_free(i32* %34)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_get_multivar_foreach(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_delete_multivar(i32*, i32, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
