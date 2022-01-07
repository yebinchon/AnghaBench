; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__utimes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__utimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p_timeval = type { i32, i64 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Dummy file.\00", align 1
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_posix__utimes() #0 {
  %1 = alloca [2 x %struct.p_timeval], align 16
  %2 = alloca %struct.stat, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %6 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %5, i32 0, i32 0
  store i32 1234567890, i32* %6, align 16
  %7 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %8 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 1
  %10 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %9, i32 0, i32 0
  store i32 1234567890, i32* %10, align 16
  %11 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 1
  %12 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %15 = call i32 @p_utimes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.p_timeval* %14)
  %16 = call i32 @cl_must_pass(i32 %15)
  %17 = call i32 @p_stat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %18 = call i32 @cl_must_pass(i32 %17)
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i32 1234567890, i32 %20)
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_i(i32 1234567890, i32 %23)
  %25 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %26 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %25, i32 0, i32 0
  store i32 1414141414, i32* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %28 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 1
  %30 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %29, i32 0, i32 0
  store i32 1414141414, i32* %30, align 16
  %31 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 1
  %32 = getelementptr inbounds %struct.p_timeval, %struct.p_timeval* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = call i32 @p_open(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = call i32 @cl_must_pass(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [2 x %struct.p_timeval], [2 x %struct.p_timeval]* %1, i64 0, i64 0
  %38 = call i32 @p_futimes(i32 %36, %struct.p_timeval* %37)
  %39 = call i32 @cl_must_pass(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @p_close(i32 %40)
  %42 = call i32 @cl_must_pass(i32 %41)
  %43 = call i32 @p_stat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %44 = call i32 @cl_must_pass(i32 %43)
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_i(i32 1414141414, i32 %46)
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_i(i32 1414141414, i32 %49)
  %51 = call i32 @p_utimes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.p_timeval* null)
  %52 = call i32 @cl_must_pass(i32 %51)
  %53 = call i32 @time(i32* null)
  store i32 %53, i32* %3, align 4
  %54 = call i32 @p_stat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %55 = call i32 @cl_must_pass(i32 %54)
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp slt i32 %59, 5
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %64, %65
  %67 = icmp slt i32 %66, 5
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = call i32 @p_unlink(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @cl_must_pass(i32 %70)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_utimes(i8*, %struct.p_timeval*) #1

declare dso_local i32 @p_stat(i8*, %struct.stat*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @p_open(i8*, i32) #1

declare dso_local i32 @p_futimes(i32, %struct.p_timeval*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
