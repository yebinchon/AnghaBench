; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__number_suffixes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__number_suffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"config/config5\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"number.simple\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"number.k\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"number.kk\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"number.m\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"number.mm\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"number.g\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"number.gg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__number_suffixes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_config_open_ondisk(i32** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_config_get_int64(i32* %2, i32* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_config_get_int64(i32* %2, i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 1024
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_config_get_int64(i32* %2, i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 1024
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_config_get_int64(i32* %2, i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 1048576
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_config_get_int64(i32* %2, i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 1048576
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_config_get_int64(i32* %2, i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 1073741824
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_config_get_int64(i32* %2, i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 1073741824
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_config_free(i32* %55)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_config_get_int64(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
