; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__signature.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_parse.c_test_commit_parse__signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.git_signature = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@passing_signature_cases = common dso_local global %struct.TYPE_7__* null, align 8
@failing_signature_cases = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_parse__signature() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.git_signature, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.git_signature, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @passing_signature_cases, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %1, align 8
  br label %10

10:                                               ; preds = %66, %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %69

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %4, align 8
  %23 = bitcast %struct.git_signature* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @git_signature__parse(%struct.git_signature* %5, i8** %3, i8* %26, i32 %29, i8 signext 10)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cl_assert_equal_s(i32 %34, i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cl_assert_equal_s(i32 %40, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @cl_assert_equal_i(i32 %47, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cl_assert_equal_i(i32 %55, i32 %58)
  %60 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @git__free(i32 %61)
  %63 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @git__free(i32 %64)
  br label %66

66:                                               ; preds = %15
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 1
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %1, align 8
  br label %10

69:                                               ; preds = %10
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @failing_signature_cases, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %2, align 8
  br label %71

71:                                               ; preds = %99, %69
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* %82)
  store i64 %83, i64* %7, align 8
  %84 = bitcast %struct.git_signature* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %84, i8 0, i64 32, i1 false)
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @git_signature__parse(%struct.git_signature* %8, i8** %6, i8* %87, i32 %90, i8 signext 10)
  %92 = call i32 @cl_git_fail(i32 %91)
  %93 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %8, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @git__free(i32 %94)
  %96 = getelementptr inbounds %struct.git_signature, %struct.git_signature* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @git__free(i32 %97)
  br label %99

99:                                               ; preds = %76
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 1
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %2, align 8
  br label %71

102:                                              ; preds = %71
  ret void
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_signature__parse(%struct.git_signature*, i8**, i8*, i32, i8 signext) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git__free(i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
