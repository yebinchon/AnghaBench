; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_open_wstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_open_wstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)*, i32* }

@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"write object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_open_wstream(%struct.TYPE_14__** %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @GIT_ERROR, align 4
  store i32 %15, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %17 = icmp ne %struct.TYPE_14__** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %81, %21
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ]
  br i1 %36, label %37, label %84

37:                                               ; preds = %35
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call %struct.TYPE_17__* @git_vector_get(%struct.TYPE_13__* %39, i64 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %13, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %14, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %81

50:                                               ; preds = %37
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %60(%struct.TYPE_14__** %61, %struct.TYPE_15__* %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %80

66:                                               ; preds = %50
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @init_fake_wstream(%struct.TYPE_14__** %74, %struct.TYPE_15__* %75, i32 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %71, %66
  br label %80

80:                                               ; preds = %79, %55
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %25

84:                                               ; preds = %35
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %98

92:                                               ; preds = %87
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 @git_odb__error_unsupported_in_backend(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %97, %91
  br label %125

99:                                               ; preds = %84
  %100 = call i32* @git__malloc(i32 4)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %101)
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @git_hash_ctx_init(i32* %103)
  store i32 %104, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @hash_header(i32* %107, i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106, %99
  br label %125

113:                                              ; preds = %106
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32* %114, i32** %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %113, %112, %98
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @git__free(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_17__* @git_vector_get(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @init_fake_wstream(%struct.TYPE_14__**, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @git_odb__error_unsupported_in_backend(i8*) #1

declare dso_local i32* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_hash_ctx_init(i32*) #1

declare dso_local i32 @hash_header(i32*, i32, i32) #1

declare dso_local i32 @git__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
