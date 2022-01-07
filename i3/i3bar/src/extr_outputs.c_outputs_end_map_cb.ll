; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_end_map_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_outputs.c_outputs_end_map_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8** }
%struct.outputs_json_params = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Ignoring output \22%s\22, not configured to handle it.\0A\00", align 1
@outputs = common dso_local global i32 0, align 4
@slist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @outputs_end_map_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @outputs_end_map_cb(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.outputs_json_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.outputs_json_params*
  store %struct.outputs_json_params* %9, %struct.outputs_json_params** %4, align 8
  %10 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %11 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %16 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i32 1, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %27 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcasecmp(i8* %30, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %25
  %39 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %48 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %25
  store i32 1, i32* %5, align 4
  br label %58

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %21

58:                                               ; preds = %53, %21
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %63 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @DLOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %69 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @clear_output(%struct.TYPE_9__* %70)
  %72 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %73 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @FREE(%struct.TYPE_9__* %74)
  %76 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %77 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i32 @FREE(%struct.TYPE_9__* %78)
  store i32 1, i32* %2, align 4
  br label %135

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %17
  %82 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %83 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call %struct.TYPE_7__* @get_output_by_name(i8* %86)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %7, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load i32, i32* @outputs, align 4
  %92 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %93 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i32, i32* @slist, align 4
  %96 = call i32 @SLIST_INSERT_HEAD(i32 %91, %struct.TYPE_9__* %94, i32 %95)
  br label %134

97:                                               ; preds = %81
  %98 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %99 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %106 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %113 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %120 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %127 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call i32 @clear_output(%struct.TYPE_9__* %128)
  %130 = load %struct.outputs_json_params*, %struct.outputs_json_params** %4, align 8
  %131 = getelementptr inbounds %struct.outputs_json_params, %struct.outputs_json_params* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = call i32 @FREE(%struct.TYPE_9__* %132)
  br label %134

134:                                              ; preds = %97, %90
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %61, %14
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @DLOG(i8*, i8*) #1

declare dso_local i32 @clear_output(%struct.TYPE_9__*) #1

declare dso_local i32 @FREE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_7__* @get_output_by_name(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
