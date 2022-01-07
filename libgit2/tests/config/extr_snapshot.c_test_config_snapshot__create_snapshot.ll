; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__create_snapshot.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__create_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[old]\0Avalue = 5\0A\00", align 1
@cfg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"old.value\00", align 1
@snapshot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"[old]\0Avalue = 56\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[old]\0Avalue = 999\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_snapshot__create_snapshot() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @git_config_open_ondisk(i32* @cfg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @cfg, align 4
  %6 = call i32 @git_config_get_int32(i32* %1, i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @cl_assert_equal_i(i32 5, i32 %8)
  %10 = load i32, i32* @cfg, align 4
  %11 = call i32 @git_config_snapshot(i32* @snapshot, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @cfg, align 4
  %15 = call i32 @git_config_get_int32(i32* %1, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @cl_assert_equal_i(i32 56, i32 %17)
  %19 = load i32, i32* @snapshot, align 4
  %20 = call i32 @git_config_get_int32(i32* %1, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @cl_assert_equal_i(i32 5, i32 %22)
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* @snapshot, align 4
  %26 = call i32 @git_config_get_int32(i32* %1, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @cl_assert_equal_i(i32 5, i32 %28)
  %30 = load i32, i32* @snapshot, align 4
  %31 = call i32 @git_config_free(i32 %30)
  %32 = load i32, i32* @cfg, align 4
  %33 = call i32 @git_config_snapshot(i32* @snapshot, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @snapshot, align 4
  %36 = call i32 @git_config_get_int32(i32* %1, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @cl_assert_equal_i(i32 999, i32 %38)
  %40 = call i32 @p_unlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32*, i8*) #1

declare dso_local i32 @git_config_get_int32(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_snapshot(i32*, i32) #1

declare dso_local i32 @git_config_free(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
