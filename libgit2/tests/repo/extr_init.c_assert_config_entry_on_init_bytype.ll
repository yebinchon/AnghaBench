; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_assert_config_entry_on_init_bytype.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_assert_config_entry_on_init_bytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"config_entry/test.bare.git\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"config_entry/test.non.bare.git\00", align 1
@cleanup_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"config_entry\00", align 1
@_repo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @assert_config_entry_on_init_bytype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_config_entry_on_init_bytype(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %10, align 8
  %15 = call i32 @cl_set_cleanup(i32* @cleanup_repository, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @git_repository_init(i32* @_repo, i8* %16, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i32 @git_repository_config(i32** %7, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @git_config_get_bool(i32* %9, i32* %23, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_config_free(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cl_assert_equal_i(i32 0, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cl_assert_equal_i(i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @cl_assert_equal_i(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
