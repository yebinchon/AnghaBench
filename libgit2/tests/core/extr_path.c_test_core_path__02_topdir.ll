; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__02_topdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__02_topdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".git/\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/.git/\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"usr/local/.git/\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"./.git/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/usr/.git/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"a/\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"/usr/.git\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_path__02_topdir() #0 {
  %1 = call i32 @check_topdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @check_topdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @check_topdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @check_topdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @check_topdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @check_topdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @check_topdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32* @git_path_topdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = call i32* @git_path_topdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = call i32* @git_path_topdir(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = call i32* @git_path_topdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  ret void
}

declare dso_local i32 @check_topdir(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_path_topdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
