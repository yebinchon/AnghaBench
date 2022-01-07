; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_multivar.c_check_get_multivar_foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_multivar.c_check_get_multivar_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_name = common dso_local global i32 0, align 4
@cb = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"example\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @check_get_multivar_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_get_multivar_foreach(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @_name, align 4
  %13 = load i32, i32* @cb, align 4
  %14 = call i32 @git_config_get_multivar_foreach(i32* %11, i32 %12, i8* null, i32 %13, i32* %7)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cl_assert_equal_i(i32 %16, i32 %17)
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @_name, align 4
  %23 = load i32, i32* @cb, align 4
  %24 = call i32 @git_config_get_multivar_foreach(i32* %21, i32 %22, i8* null, i32 %23, i32* %7)
  %25 = call i32 @cl_assert_equal_i(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %10
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @_name, align 4
  %32 = load i32, i32* @cb, align 4
  %33 = call i32 @git_config_get_multivar_foreach(i32* %30, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32, i32* %7)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @cl_assert_equal_i(i32 %35, i32 %36)
  br label %45

38:                                               ; preds = %26
  %39 = load i32, i32* @GIT_ENOTFOUND, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @_name, align 4
  %42 = load i32, i32* @cb, align 4
  %43 = call i32 @git_config_get_multivar_foreach(i32* %40, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42, i32* %7)
  %44 = call i32 @cl_assert_equal_i(i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %38, %29
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_get_multivar_foreach(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
