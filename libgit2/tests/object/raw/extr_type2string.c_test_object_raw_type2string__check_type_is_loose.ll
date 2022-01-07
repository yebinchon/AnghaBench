; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__check_type_is_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__check_type_is_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@GIT_OBJECT_TAG = common dso_local global i32 0, align 4
@GIT_OBJECT_OFS_DELTA = common dso_local global i32 0, align 4
@GIT_OBJECT_REF_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_type2string__check_type_is_loose() #0 {
  %1 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %2 = call i32 @git_object_typeisloose(i32 %1)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @cl_assert(i32 %4)
  %6 = call i32 @git_object_typeisloose(i32 0)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %11 = call i32 @git_object_typeisloose(i32 %10)
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %16 = call i32 @git_object_typeisloose(i32 %15)
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %21 = call i32 @git_object_typeisloose(i32 %20)
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* @GIT_OBJECT_TAG, align 4
  %26 = call i32 @git_object_typeisloose(i32 %25)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_object_typeisloose(i32 5)
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @GIT_OBJECT_OFS_DELTA, align 4
  %35 = call i32 @git_object_typeisloose(i32 %34)
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32, i32* @GIT_OBJECT_REF_DELTA, align 4
  %40 = call i32 @git_object_typeisloose(i32 %39)
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_object_typeisloose(i32 -2)
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @git_object_typeisloose(i32 8)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = call i32 @git_object_typeisloose(i32 1234)
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_object_typeisloose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
