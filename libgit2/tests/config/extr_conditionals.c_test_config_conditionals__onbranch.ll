; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_conditionals.c_test_config_conditionals__onbranch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_conditionals.c_test_config_conditionals__onbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"onbranch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"m*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"master/\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"f*o\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dir/ref\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dir/*\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dir/**\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dir*\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"dir/subdir/ref\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dir/subdir/\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"dir/subdir/*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_conditionals__onbranch() #0 {
  %1 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %2 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %3 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %4 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %5 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %6 = load i32, i32* @_repo, align 4
  %7 = call i32 @set_head(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %9 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %10 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %11 = load i32, i32* @_repo, align 4
  %12 = call i32 @set_head(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %14 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %15 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %16 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %17 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %18 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %19 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i32 @set_head(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %22 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %23 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %24 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %25 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %26 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %27 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %28 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %29 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %30 = call i32 @assert_condition_includes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @assert_condition_includes(i8*, i8*, i32) #1

declare dso_local i32 @set_head(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
