; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_apply_binary_delta.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_apply_binary_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"inflated delta does not match expected length\00", align 1
@GIT_DIFF_BINARY_DELTA = common dso_local global i64 0, align 8
@GIT_DIFF_BINARY_LITERAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown binary delta type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, %struct.TYPE_11__*)* @apply_binary_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_binary_delta(%struct.TYPE_12__* %0, i8* %1, i64 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %14 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 24, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @git_buf_put(%struct.TYPE_12__* %20, i8* %21, i64 %22)
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @git_zstream_inflatebuf(%struct.TYPE_12__* %10, i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i32 @apply_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = call i32 @git_buf_dispose(%struct.TYPE_12__* %43)
  br label %45

45:                                               ; preds = %41, %34, %24
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %85

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GIT_DIFF_BINARY_DELTA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @git_delta_apply(i8** %12, i64* %13, i8* %56, i64 %57, i8* %59, i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %84

72:                                               ; preds = %49
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GIT_DIFF_BINARY_LITERAL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = call i32 @git_buf_swap(%struct.TYPE_12__* %79, %struct.TYPE_12__* %10)
  br label %83

81:                                               ; preds = %72
  %82 = call i32 @apply_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %82, i32* %11, align 4
  br label %85

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84, %81, %48
  %86 = call i32 @git_buf_dispose(%struct.TYPE_12__* %10)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %19
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_put(%struct.TYPE_12__*, i8*, i64) #2

declare dso_local i32 @git_zstream_inflatebuf(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @apply_err(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @git_delta_apply(i8**, i64*, i8*, i64, i8*, i64) #2

declare dso_local i32 @git_buf_swap(%struct.TYPE_12__*, %struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
