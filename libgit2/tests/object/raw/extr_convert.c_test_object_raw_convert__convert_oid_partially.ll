; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__convert_oid_partially.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__convert_oid_partially.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5e0\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"16a\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"16a0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"16a01\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5e\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"16a0123456789abcdef4b775213c23a8bd74f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_convert__convert_oid_partially() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %6 = add nsw i32 %5, 1
  %7 = add nsw i32 %6, 3
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @git_oid_fromstr(i32* %2, i8* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = trunc i64 %8 to i32
  %15 = call i32 @git_oid_nfmt(i8* %10, i32 %14, i32* %2)
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @cl_assert_equal_s(i8* %16, i8* %10)
  %18 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @git_oid_nfmt(i8* %10, i32 %19, i32* %2)
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @cl_assert_equal_s(i8* %21, i8* %10)
  %23 = call i32 @check_partial_oid(i8* %10, i32 1, i32* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @check_partial_oid(i8* %10, i32 2, i32* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @check_partial_oid(i8* %10, i32 3, i32* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @check_partial_oid(i8* %10, i32 4, i32* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @check_partial_oid(i8* %10, i32 5, i32* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @check_partial_oid(i8* %10, i32 %28, i32* %2, i8* %29)
  %31 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @check_partial_oid(i8* %10, i32 %32, i32* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %35 = sub nsw i32 %34, 2
  %36 = call i32 @check_partial_oid(i8* %10, i32 %35, i32* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %38 = sub nsw i32 %37, 3
  %39 = call i32 @check_partial_oid(i8* %10, i32 %38, i32* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_oid_nfmt(i8*, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @check_partial_oid(i8*, i32, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
