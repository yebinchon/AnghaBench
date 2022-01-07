; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__includes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"including\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[include]\0Apath = included\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"included\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"[section]\0Akey = 1\0A\00", align 1
@cfg = common dso_local global i32 0, align 4
@snapshot = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"section.key\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"[section]\0Akey = 11\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_snapshot__includes() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 @git_config_open_ondisk(i32* @cfg, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @cfg, align 4
  %7 = call i32 @git_config_snapshot(i32* @snapshot, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @snapshot, align 4
  %10 = call i32 @git_config_get_int32(i32* %1, i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @cl_assert_equal_i(i32 %12, i32 1)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @cfg, align 4
  %16 = call i32 @git_config_get_int32(i32* %1, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @cl_assert_equal_i(i32 %18, i32 11)
  %20 = load i32, i32* @snapshot, align 4
  %21 = call i32 @git_config_get_int32(i32* %1, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @cl_assert_equal_i(i32 %23, i32 1)
  %25 = call i32 @p_unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @p_unlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32*, i8*) #1

declare dso_local i32 @git_config_snapshot(i32*, i32) #1

declare dso_local i32 @git_config_get_int32(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
