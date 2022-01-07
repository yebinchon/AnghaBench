; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i8*, i64)* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)* }

@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_EINVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot write object\00", align 1
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_write(i32* %0, %struct.TYPE_17__* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @GIT_ERROR, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi i1 [ false, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @git_odb_hash(i32* %27, i8* %28, i64 %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @git_oid_is_zero(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @GIT_EINVALID, align 4
  %37 = call i32 @error_null_oid(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %6, align 4
  br label %122

38:                                               ; preds = %23
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @git_odb__freshen(%struct.TYPE_17__* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %122

44:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi i1 [ false, %45 ], [ %54, %52 ]
  br i1 %56, label %57, label %89

57:                                               ; preds = %55
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %12, align 8
  %61 = call %struct.TYPE_18__* @git_vector_get(%struct.TYPE_19__* %59, i64 %60)
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %15, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %16, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %86

70:                                               ; preds = %57
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)*, i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)*, i32 (%struct.TYPE_16__*, i32*, i8*, i64, i32)** %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 %78(%struct.TYPE_16__* %79, i32* %80, i8* %81, i64 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %75, %70
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %45

89:                                               ; preds = %55
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %89
  store i32 0, i32* %6, align 4
  br label %122

97:                                               ; preds = %92
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @git_odb_open_wstream(%struct.TYPE_15__** %14, %struct.TYPE_17__* %98, i64 %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %122

105:                                              ; preds = %97
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_15__*, i8*, i64)*, i32 (%struct.TYPE_15__*, i8*, i64)** %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 %108(%struct.TYPE_15__* %109, i8* %110, i64 %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 %115(%struct.TYPE_15__* %116, i32* %117)
  store i32 %118, i32* %13, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %120 = call i32 @git_odb_stream_free(%struct.TYPE_15__* %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %105, %103, %96, %43, %35
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_odb_hash(i32*, i8*, i64, i32) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @error_null_oid(i32, i8*) #1

declare dso_local i64 @git_odb__freshen(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_18__* @git_vector_get(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @git_odb_open_wstream(%struct.TYPE_15__**, %struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @git_odb_stream_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
