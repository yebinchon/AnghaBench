; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_include.c_test_config_include__rewriting_include_refreshes_values.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_include.c_test_config_include__rewriting_include_refreshes_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"top-level\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[include]\0Apath = first\0A[include]\0Apath = second\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"[first]\0Afoo = bar\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"[second]\0Afoo = bar\00", align 1
@cfg = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"[first]\0Aother = value\00", align 1
@buf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"foo.bar\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"first.other\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_include__rewriting_include_refreshes_values() #0 {
  %1 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %4 = call i32 @git_config_open_ondisk(i32* @cfg, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %7 = load i32, i32* @cfg, align 4
  %8 = call i32 @git_config_get_string_buf(%struct.TYPE_3__* @buf, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = load i32, i32* @cfg, align 4
  %11 = call i32 @git_config_get_string_buf(%struct.TYPE_3__* @buf, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @buf, i32 0, i32 0), align 4
  %14 = call i32 @cl_assert_equal_s(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @p_unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @p_unlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @p_unlink(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_config_get_string_buf(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
