; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"refs/heads/dir\00", align 1
@obj = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@checkout_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@GIT_CHECKOUT_OPTIONS_VERSION = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_icase__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @repo, align 4
  %5 = load i32, i32* @repo, align 4
  %6 = call i32 @git_repository_config_snapshot(i32** %2, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @git_config_get_bool(i32* %3, i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_config_free(i32* %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (...) @cl_skip()
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_reference_name_to_id(i32* %1, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %22 = call i32 @git_object_lookup(i32* @obj, i32 %20, i32* %1, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @GIT_CHECKOUT_OPTIONS_VERSION, align 4
  %25 = call i32 @git_checkout_options_init(%struct.TYPE_3__* @checkout_opts, i32 %24)
  %26 = load i32, i32* @GIT_CHECKOUT_NONE, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @checkout_opts, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #1

declare dso_local i32 @git_object_lookup(i32*, i32, i32*, i32) #1

declare dso_local i32 @git_checkout_options_init(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
