; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_check_glob_iter.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_check_glob_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @check_glob_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_glob_iter(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @git_config_iterator_glob_new(i32** %7, i32* %11, i8* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %19, %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @git_config_next(i32** %8, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  br label %15

22:                                               ; preds = %15
  %23 = load i32, i32* @GIT_ITEROVER, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @cl_assert_equal_i(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cl_assert_equal_i(i32 %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @git_config_iterator_free(i32* %29)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_iterator_glob_new(i32**, i32*, i8*) #1

declare dso_local i32 @git_config_next(i32**, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
