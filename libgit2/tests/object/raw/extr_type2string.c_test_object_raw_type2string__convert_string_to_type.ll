; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__convert_string_to_type.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__convert_string_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"OFS_DELTA\00", align 1
@GIT_OBJECT_OFS_DELTA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"REF_DELTA\00", align 1
@GIT_OBJECT_REF_DELTA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"CoMmIt\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hohoho\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_type2string__convert_string_to_type() #0 {
  %1 = call i64 @git_object_string2type(i8* null)
  %2 = load i64, i64* @GIT_OBJECT_INVALID, align 8
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @cl_assert(i32 %4)
  %6 = call i64 @git_object_string2type(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @GIT_OBJECT_INVALID, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i64 @git_object_string2type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = call i64 @git_object_string2type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = call i64 @git_object_string2type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i64 @git_object_string2type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = call i64 @git_object_string2type(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  %36 = call i64 @git_object_string2type(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = call i64 @git_object_string2type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i64, i64* @GIT_OBJECT_INVALID, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = call i64 @git_object_string2type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %47 = load i64, i64* @GIT_OBJECT_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_object_string2type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
