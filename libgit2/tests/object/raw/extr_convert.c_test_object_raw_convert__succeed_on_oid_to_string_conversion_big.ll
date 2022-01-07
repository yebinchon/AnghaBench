; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__succeed_on_oid_to_string_conversion_big.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__succeed_on_oid_to_string_conversion_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5e0\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_convert__succeed_on_oid_to_string_conversion_big() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %7, 3
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @git_oid_fromstr(i32* %2, i8* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %11, i64 %17
  store i8 87, i8* %18, align 1
  %19 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %11, i64 %21
  store i8 88, i8* %22, align 1
  %23 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 %25
  store i8 89, i8* %26, align 1
  %27 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %28 = add nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %11, i64 %29
  store i8 90, i8* %30, align 1
  %31 = trunc i64 %9 to i32
  %32 = call i8* @git_oid_tostr(i8* %11, i32 %31, i32* %2)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %0
  %36 = load i8*, i8** %5, align 8
  %37 = icmp eq i8* %36, %11
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %38, %35, %0
  %47 = phi i1 [ false, %35 ], [ false, %0 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @cl_assert_equal_s(i8* %50, i8* %11)
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i8*, i8** %5, align 8
  %56 = icmp eq i8* %55, %11
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 88
  br label %66

66:                                               ; preds = %57, %54, %46
  %67 = phi i1 [ false, %54 ], [ false, %46 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = icmp eq i8* %73, %11
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 89
  br label %84

84:                                               ; preds = %75, %72, %66
  %85 = phi i1 [ false, %72 ], [ false, %66 ], [ %83, %75 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @cl_assert(i32 %86)
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = icmp eq i8* %91, %11
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 90
  br label %102

102:                                              ; preds = %93, %90, %84
  %103 = phi i1 [ false, %90 ], [ false, %84 ], [ %101, %93 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @cl_assert(i32 %104)
  %106 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i8* @git_oid_tostr(i8*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
