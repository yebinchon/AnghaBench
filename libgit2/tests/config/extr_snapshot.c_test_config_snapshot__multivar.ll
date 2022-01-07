; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__multivar.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_snapshot.c_test_config_snapshot__multivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[old]\0Avalue = 5\0Avalue = 6\0A\00", align 1
@cfg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"old.value\00", align 1
@count_me = common dso_local global i32 0, align 4
@snapshot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_snapshot__multivar() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @git_config_open_ondisk(i32* @cfg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @cfg, align 4
  %6 = load i32, i32* @count_me, align 4
  %7 = call i32 @git_config_get_multivar_foreach(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %6, i32* %1)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @cl_assert_equal_i(i32 2, i32 %9)
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @cfg, align 4
  %12 = call i32 @git_config_snapshot(i32* @snapshot, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @snapshot, align 4
  %15 = load i32, i32* @count_me, align 4
  %16 = call i32 @git_config_get_multivar_foreach(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %15, i32* %1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @cl_assert_equal_i(i32 2, i32 %18)
  %20 = call i32 @p_unlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32*, i8*) #1

declare dso_local i32 @git_config_get_multivar_foreach(i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_config_snapshot(i32*, i32) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
