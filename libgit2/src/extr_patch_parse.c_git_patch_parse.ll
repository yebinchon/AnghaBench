; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_git_patch_parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_git_patch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_18__*, i32 (%struct.TYPE_19__*)* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, i32, i32, i32, %struct.TYPE_19__* }

@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_parse(%struct.TYPE_19__** %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__**, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %3, align 8
  %10 = icmp ne %struct.TYPE_19__** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %18, align 8
  %19 = call i8* @git__calloc(i32 1, i32 80)
  %20 = bitcast i8* %19 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 5
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_19__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  store i32 (%struct.TYPE_19__*)* @patch_parsed__free, i32 (%struct.TYPE_19__*)** %32, align 8
  %33 = call i8* @git__calloc(i32 1, i32 4)
  %34 = bitcast i8* %33 to %struct.TYPE_18__*
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_18__* %41)
  %43 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 4
  store i32 %43, i32* %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = call i32 @parse_patch_header(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %14
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = call i32 @parse_patch_body(%struct.TYPE_18__* %63, %struct.TYPE_19__* %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = call i32 @check_patch(%struct.TYPE_18__* %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %62, %14
  br label %112

72:                                               ; preds = %67
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %73, %77
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %79
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_19__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %3, align 8
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %111, align 8
  br label %112

112:                                              ; preds = %72, %71
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = call i32 @patch_parsed__free(%struct.TYPE_19__* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_18__*) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_19__*) #1

declare dso_local i32 @patch_parsed__free(%struct.TYPE_19__*) #1

declare dso_local i32 @parse_patch_header(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @parse_patch_body(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @check_patch(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
