; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__reverse.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_VECTOR_INIT = common dso_local global i32 0, align 4
@__const.test_core_vector__reverse.in1 = private unnamed_addr constant [4 x i8*] [i8* null, i8* inttoptr (i64 1 to i8*), i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 3 to i8*)], align 16
@__const.test_core_vector__reverse.out1 = private unnamed_addr constant [4 x i8*] [i8* inttoptr (i64 3 to i8*), i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 1 to i8*), i8* null], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__reverse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [4 x i8*], align 16
  %4 = alloca [4 x i8*], align 16
  %5 = alloca [5 x i8*], align 16
  %6 = alloca [5 x i8*], align 16
  %7 = load i32, i32* @GIT_VECTOR_INIT, align 4
  store i32 %7, i32* %1, align 4
  %8 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.test_core_vector__reverse.in1 to i8*), i64 32, i1 false)
  %9 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i8*]* @__const.test_core_vector__reverse.out1 to i8*), i64 32, i1 false)
  %10 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 40, i1 false)
  %11 = bitcast i8* %10 to [5 x i8*]*
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 3
  store i8* inttoptr (i64 3 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i32 0, i32 4
  store i8* inttoptr (i64 4 to i8*), i8** %15, align 16
  %16 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to [5 x i8*]*
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 0
  store i8* inttoptr (i64 4 to i8*), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 1
  store i8* inttoptr (i64 3 to i8*), i8** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 3
  store i8* inttoptr (i64 1 to i8*), i8** %21, align 8
  store i64 0, i64* %2, align 8
  br label %22

22:                                               ; preds = %31, %0
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @git_vector_insert(i32* %1, i8* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %2, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %2, align 8
  br label %22

34:                                               ; preds = %22
  %35 = call i32 @git_vector_reverse(i32* %1)
  store i64 0, i64* %2, align 8
  br label %36

36:                                               ; preds = %46, %34
  %37 = load i64, i64* %2, align 8
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @git_vector_get(i32* %1, i64 %43)
  %45 = call i32 @cl_assert_equal_p(i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %2, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %2, align 8
  br label %36

49:                                               ; preds = %36
  %50 = call i32 @git_vector_clear(i32* %1)
  store i64 0, i64* %2, align 8
  br label %51

51:                                               ; preds = %60, %49
  %52 = load i64, i64* %2, align 8
  %53 = icmp ult i64 %52, 5
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @git_vector_insert(i32* %1, i8* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %2, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %2, align 8
  br label %51

63:                                               ; preds = %51
  %64 = call i32 @git_vector_reverse(i32* %1)
  store i64 0, i64* %2, align 8
  br label %65

65:                                               ; preds = %75, %63
  %66 = load i64, i64* %2, align 8
  %67 = icmp ult i64 %66, 5
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i64, i64* %2, align 8
  %70 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %2, align 8
  %73 = call i32 @git_vector_get(i32* %1, i64 %72)
  %74 = call i32 @cl_assert_equal_p(i8* %71, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i64, i64* %2, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %2, align 8
  br label %65

78:                                               ; preds = %65
  %79 = call i32 @git_vector_free(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_vector_insert(i32*, i8*) #2

declare dso_local i32 @git_vector_reverse(i32*) #2

declare dso_local i32 @cl_assert_equal_p(i8*, i32) #2

declare dso_local i32 @git_vector_get(i32*, i64) #2

declare dso_local i32 @git_vector_clear(i32*) #2

declare dso_local i32 @git_vector_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
