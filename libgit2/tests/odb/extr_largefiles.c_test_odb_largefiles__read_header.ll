; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__read_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GITTEST_SLOW\00", align 1
@odb = common dso_local global i32 0, align 4
@LARGEFILE_SIZE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_largefiles__read_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @cl_skip()
  %5 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @cl_skip()
  br label %12

12:                                               ; preds = %10, %7
  %13 = call i32 @writefile(i32* %1)
  %14 = load i32, i32* @odb, align 4
  %15 = call i32 @git_odb_read_header(i64* %2, i32* %3, i32 %14, i32* %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @LARGEFILE_SIZE, align 4
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @cl_assert_equal_sz(i32 %17, i64 %18)
  %20 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @cl_assert_equal_i(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_is_env_set(i8*) #1

declare dso_local i32 @writefile(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_read_header(i64*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
