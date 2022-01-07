; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__succeed_on_oid_to_string_conversion.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_convert.c_test_object_raw_convert__succeed_on_oid_to_string_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"16a0123456789abcdef4b775213c23a8bd74f5e0\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_convert__succeed_on_oid_to_string_conversion() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @git_oid_fromstr(i32* %2, i8* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = trunc i64 %9 to i32
  %16 = call i8* @git_oid_tostr(i8* null, i32 %15, i32* %2)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %0
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, %11
  br label %27

27:                                               ; preds = %24, %19, %0
  %28 = phi i1 [ false, %19 ], [ false, %0 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = call i8* @git_oid_tostr(i8* %11, i32 0, i32* %2)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, %11
  br label %42

42:                                               ; preds = %39, %34, %27
  %43 = phi i1 [ false, %34 ], [ false, %27 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = trunc i64 %9 to i32
  %47 = call i8* @git_oid_tostr(i8* %11, i32 %46, i32* null)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = icmp eq i8* %56, %11
  br label %58

58:                                               ; preds = %55, %50, %42
  %59 = phi i1 [ false, %50 ], [ false, %42 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = call i8* @git_oid_tostr(i8* %11, i32 1, i32* %2)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = icmp eq i8* %71, %11
  br label %73

73:                                               ; preds = %70, %65, %58
  %74 = phi i1 [ false, %65 ], [ false, %58 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %121, %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %11, i64 %84
  store i8 90, i8* %85, align 1
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i8* @git_oid_tostr(i8* %11, i32 %87, i32* %2)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i8*, i8** %5, align 8
  %93 = icmp eq i8* %92, %11
  br label %94

94:                                               ; preds = %91, %81
  %95 = phi i1 [ false, %81 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @cl_assert(i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @cl_assert(i32 %105)
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 90
  %115 = zext i1 %114 to i32
  %116 = call i32 @cl_assert(i32 %115)
  %117 = load i8*, i8** %1, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @strncmp(i8* %117, i8* %11, i32 %118)
  %120 = call i32 @cl_git_pass(i32 %119)
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %77

124:                                              ; preds = %77
  %125 = trunc i64 %9 to i32
  %126 = call i8* @git_oid_tostr(i8* %11, i32 %125, i32* %2)
  store i8* %126, i8** %5, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i8*, i8** %5, align 8
  %131 = icmp eq i8* %130, %11
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br label %140

140:                                              ; preds = %132, %129, %124
  %141 = phi i1 [ false, %129 ], [ false, %124 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @cl_assert(i32 %142)
  %144 = load i8*, i8** %1, align 8
  %145 = call i32 @cl_assert_equal_s(i8* %144, i8* %11)
  %146 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %146)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i8* @git_oid_tostr(i8*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

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
