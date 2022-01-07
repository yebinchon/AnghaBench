; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_git_diff_file_content__init_from_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_file.c_git_diff_file_content__init_from_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_12__ }

@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__NO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_file_content__init_from_diff(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_13__* %11, i32 0, i32 32)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi %struct.TYPE_12__* [ %22, %20 ], [ %25, %23 ]
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @git_diff_driver_lookup(i32* %45, i32 %48, i32* %50, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %100

59:                                               ; preds = %40
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %85 [
    i32 134, label %63
    i32 132, label %68
    i32 128, label %70
    i32 129, label %84
    i32 131, label %84
    i32 133, label %84
    i32 130, label %84
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  br label %86

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  br label %86

70:                                               ; preds = %59
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %73, %70
  %82 = phi i1 [ false, %70 ], [ %80, %73 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %86

84:                                               ; preds = %59, %59, %59, %59
  br label %86

85:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %84, %81, %68, %63
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @GIT_DIFF_FLAG__NO_DATA, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %86
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = call i32 @diff_file_content_init_common(%struct.TYPE_13__* %96, %struct.TYPE_11__* %98)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %58
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @git_diff_driver_lookup(i32*, i32, i32*, i32) #1

declare dso_local i32 @diff_file_content_init_common(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
