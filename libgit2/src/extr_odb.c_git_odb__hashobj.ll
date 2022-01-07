; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashobj.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid object type\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__hashobj(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [2 x %struct.TYPE_6__], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @git_object_typeisloose(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %26 = call i32 @git_error_set(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

27:                                               ; preds = %15
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %39 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %72

40:                                               ; preds = %32, %27
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @git_odb__format_object_header(i64* %8, i8* %41, i32 64, i64 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %40
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %54 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 16
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 16
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %6, i64 0, i64 0
  %71 = call i32 @git_hash_vec(i32* %69, %struct.TYPE_6__* %70, i32 2)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %52, %50, %37, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_object_typeisloose(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_odb__format_object_header(i64*, i8*, i32, i64, i32) #1

declare dso_local i32 @git_hash_vec(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
