; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_write_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_write_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_odb_writepack = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)* }

@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_write_pack(%struct.git_odb_writepack** %0, %struct.TYPE_10__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.git_odb_writepack**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.git_odb_writepack** %0, %struct.git_odb_writepack*** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32, i32* @GIT_ERROR, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.git_odb_writepack**, %struct.git_odb_writepack*** %5, align 8
  %16 = icmp ne %struct.git_odb_writepack** %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %67, %20
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i1 [ false, %24 ], [ %33, %31 ]
  br i1 %35, label %36, label %70

36:                                               ; preds = %34
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.TYPE_11__* @git_vector_get(%struct.TYPE_12__* %38, i64 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %12, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %13, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %67

49:                                               ; preds = %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)*, i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)** %51, align 8
  %53 = icmp ne i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)*, i32 (%struct.git_odb_writepack**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*)** %58, align 8
  %60 = load %struct.git_odb_writepack**, %struct.git_odb_writepack*** %5, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 %59(%struct.git_odb_writepack** %60, %struct.TYPE_9__* %61, %struct.TYPE_10__* %62, i32 %63, i8* %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %54, %49
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %24

70:                                               ; preds = %34
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 @git_odb__error_unsupported_in_backend(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %78, %75
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @git_vector_get(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @git_odb__error_unsupported_in_backend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
