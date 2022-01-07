; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_set_stream_selected.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_set_stream_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid stream index %d >= stream number (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"select invalid stream %d of video type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"select invalid stream %d of audio type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffp_set_stream_selected(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %175

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %175

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27, %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @av_log(%struct.TYPE_12__* %34, i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  store i32 -1, i32* %4, align 4
  br label %175

41:                                               ; preds = %27
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %123

53:                                               ; preds = %41
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %111 [
    i32 128, label %57
    i32 130, label %75
    i32 129, label %93
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @stream_component_close(%struct.TYPE_12__* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %63, %57
  br label %119

75:                                               ; preds = %53
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @stream_component_close(%struct.TYPE_12__* %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %81, %75
  br label %119

93:                                               ; preds = %53
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @stream_component_close(%struct.TYPE_12__* %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %99, %93
  br label %119

111:                                              ; preds = %53
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @av_log(%struct.TYPE_12__* %112, i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117)
  store i32 -1, i32* %4, align 4
  br label %175

119:                                              ; preds = %110, %92, %74
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @stream_component_open(%struct.TYPE_12__* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %175

123:                                              ; preds = %41
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %166 [
    i32 128, label %127
    i32 130, label %140
    i32 129, label %153
  ]

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @stream_component_close(%struct.TYPE_12__* %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %127
  br label %174

140:                                              ; preds = %123
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @stream_component_close(%struct.TYPE_12__* %147, i32 %150)
  br label %152

152:                                              ; preds = %146, %140
  br label %174

153:                                              ; preds = %123
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @stream_component_close(%struct.TYPE_12__* %160, i32 %163)
  br label %165

165:                                              ; preds = %159, %153
  br label %174

166:                                              ; preds = %123
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @av_log(%struct.TYPE_12__* %167, i32 %168, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %172)
  store i32 -1, i32* %4, align 4
  br label %175

174:                                              ; preds = %165, %152, %139
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %166, %119, %111, %33, %23, %16
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, i32) #1

declare dso_local i32 @stream_component_close(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @stream_component_open(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
