; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_patch_generated_line_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_patch_generated_line_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@GIT_DIFF_LINE_ADDITION = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_DELETION = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_CONTEXT = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_CONTEXT_EOFNL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_15__*, i8*)* @patch_generated_line_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_generated_line_cb(i32* %0, i32* %1, %struct.TYPE_15__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GIT_UNUSED(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @GIT_UNUSED(i32* %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_13__* @git_array_last(i32 %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = call i32 @assert(%struct.TYPE_13__* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_15__* @git_array_alloc(i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %11, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %31 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = call i32 @memcpy(%struct.TYPE_15__* %32, %struct.TYPE_15__* %33, i32 16)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %37
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GIT_DIFF_LINE_ADDITION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GIT_DIFF_LINE_DELETION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50, %4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %104

62:                                               ; preds = %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GIT_DIFF_LINE_CONTEXT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  br label %103

85:                                               ; preds = %62
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @GIT_DIFF_LINE_CONTEXT_EOFNL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %94
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %91, %85
  br label %103

103:                                              ; preds = %102, %68
  br label %104

104:                                              ; preds = %103, %56
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local %struct.TYPE_13__* @git_array_last(i32) #1

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @git_array_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_15__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
