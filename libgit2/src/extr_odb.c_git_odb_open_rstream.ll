; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_open_rstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_open_rstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)* }

@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read object streamed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_open_rstream(i32** %0, i64* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* @GIT_ERROR, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32**, i32*** %6, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i1 [ false, %5 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %63, %22
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i1 [ false, %26 ], [ %35, %33 ]
  br i1 %37, label %38, label %66

38:                                               ; preds = %36
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %11, align 8
  %42 = call %struct.TYPE_10__* @git_vector_get(%struct.TYPE_11__* %40, i64 %41)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %15, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)*, i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)** %47, align 8
  %49 = icmp ne i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %38
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)*, i32 (i32**, i64*, i32*, %struct.TYPE_8__*, i32*)** %54, align 8
  %56 = load i32**, i32*** %6, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 %55(i32** %56, i64* %57, i32* %58, %struct.TYPE_8__* %59, i32* %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %50, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %26

66:                                               ; preds = %36
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 @git_odb__error_unsupported_in_backend(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %74, %71
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @git_vector_get(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @git_odb__error_unsupported_in_backend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
