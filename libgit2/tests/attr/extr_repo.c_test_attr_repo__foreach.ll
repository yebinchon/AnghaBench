; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"root_test1\00", align 1
@count_attrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sub/subdir_test1\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sub/subdir_test2.txt\00", align 1
@CANCEL_VALUE = common dso_local global i32 0, align 4
@cancel_iteration = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__foreach() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @git_attr_foreach(i32 %2, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @count_attrs, i32* %1)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 2
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_attr_foreach(i32 %9, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* @count_attrs, i32* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  store i32 0, i32* %1, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_attr_foreach(i32 %16, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* @count_attrs, i32* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 6
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  store i32 2, i32* %1, align 4
  %23 = load i32, i32* @CANCEL_VALUE, align 4
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_attr_foreach(i32 %24, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* @cancel_iteration, i32* %1)
  %26 = call i32 @cl_assert_equal_i(i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_foreach(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
