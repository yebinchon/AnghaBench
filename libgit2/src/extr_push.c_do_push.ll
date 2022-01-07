; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_push.c_do_push.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_push.c_do_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32 (i32**, i32, i32)*, i32, i64 }

@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"remote transport doesn't support push\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @do_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_push(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @GIT_ERROR_NET, align 4
  %18 = call i32 @git_error_set(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_packbuilder_new(i32* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %104

28:                                               ; preds = %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @git_packbuilder_set_threads(i32 %31, i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @git_packbuilder_set_callbacks(i32 %46, i64 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %104

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %38, %28
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = call i32 @calculate_work(%struct.TYPE_17__* %58)
  store i32 %59, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %104

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = icmp ne %struct.TYPE_16__* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32 (i32**, i32, i32)*, i32 (i32**, i32, i32)** %67, align 8
  %69 = icmp ne i32 (i32**, i32, i32)* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32 (i32**, i32, i32)*, i32 (i32**, i32, i32)** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32**
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %73(i32** %78, i32 %82, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  br label %104

89:                                               ; preds = %70, %65, %62
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = call i32 @queue_objects(%struct.TYPE_17__* %90)
  store i32 %91, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_16__*)** %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = call i32 %96(%struct.TYPE_15__* %97, %struct.TYPE_17__* %98, %struct.TYPE_16__* %99)
  store i32 %100, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93, %89
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %102, %88, %61, %55, %27, %16
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @git_packbuilder_free(i32 %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_packbuilder_new(i32*, i32) #1

declare dso_local i32 @git_packbuilder_set_threads(i32, i32) #1

declare dso_local i32 @git_packbuilder_set_callbacks(i32, i64, i32) #1

declare dso_local i32 @calculate_work(%struct.TYPE_17__*) #1

declare dso_local i32 @queue_objects(%struct.TYPE_17__*) #1

declare dso_local i32 @git_packbuilder_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
