; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_write_object_permission.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_write_object_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"test-objects\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Test data\0A\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"test-objects/67\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"test-objects/67/b808feb36201507a77f85e6d898f0a2836e4a5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_write_object_permission(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 511, i32* %14, align 4
  %15 = call i32 @p_umask(i32 0)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i32 @p_umask(i32 %16)
  %18 = call i32 @git_odb_new(i32** %9)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @git_odb_backend_loose(i32** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1, i32 0, i32 %20, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @git_odb_add_backend(i32* %24, i32* %25, i32 1)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %30 = call i32 @git_odb_write(i32* %11, i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @p_stat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %12)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %13, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %14, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @cl_assert_equal_i(i32 %37, i32 %43)
  %45 = call i32 @p_stat(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %12)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %13, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @cl_assert_equal_i(i32 %50, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @git_odb_free(i32* %58)
  ret void
}

declare dso_local i32 @p_umask(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_new(i32**) #1

declare dso_local i32 @git_odb_backend_loose(i32**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @git_odb_add_backend(i32*, i32*, i32) #1

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @p_stat(i8*, %struct.stat*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
