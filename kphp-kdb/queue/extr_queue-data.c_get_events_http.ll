; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_events_http.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_events_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32*, i32, %struct.TYPE_7__* }

@quick_fix = common dso_local global i32 0, align 4
@debug_buff = common dso_local global i64 0, align 8
@ds = common dso_local global i64 0, align 8
@Q_WATCHCAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"{\22ts\22:\22%d\22\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c",\22events\22:[\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__may_wait = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Queue %s overflow\0A\00", align 1
@debug_error = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@sum_delay = common dso_local global double 0.000000e+00, align 8
@cnt_delay = common dso_local global i32 0, align 4
@events_sent = common dso_local global i32 0, align 4
@max_delay = common dso_local global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"]}\00", align 1
@http_failed = common dso_local global i32* null, align 8
@buff_overflow_cnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"{\22failed\22:3}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_events_http(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @quick_fix, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @debug_buff, align 8
  store i64 %10, i64* @ds, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i32 @qkey_fix_timeout(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @get_qtype(i32 %18)
  %20 = load i64, i64* @Q_WATCHCAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_watchcat_id(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @update_watchcat(i32 %28, i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %22, %11
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %47)
  store i32 0, i32* %3, align 4
  %49 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %4, align 8
  %53 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %54 = call double @get_utime(i32 %53)
  store double %54, double* %5, align 8
  br label %55

55:                                               ; preds = %150, %38
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %151

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %60
  store i64 0, i64* @__may_wait, align 8
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i64, i64* @ds, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64, i64* @debug_buff, align 8
  %76 = add nsw i64 %75, 8388608
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @critical(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store i32 1, i32* @debug_error, align 4
  br label %151

85:                                               ; preds = %69
  %86 = load i64, i64* @ds, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load i64, i64* @debug_buff, align 8
  %92 = add nsw i64 %91, 16777216
  %93 = icmp slt i64 %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %85
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %112)
  br label %128

114:                                              ; preds = %85
  %115 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i64, i64* @ds, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 1
  %124 = call i64 @write_str(i64 %116, i32* %119, i64 %123)
  %125 = load i64, i64* @ds, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* @ds, align 8
  %127 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %114, %108
  %129 = load double, double* %5, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call double @max(i32 %132, i32 %135)
  %137 = fsub double %129, %136
  store double %137, double* %6, align 8
  %138 = load double, double* %6, align 8
  %139 = load double, double* @sum_delay, align 8
  %140 = fadd double %139, %138
  store double %140, double* @sum_delay, align 8
  %141 = load i32, i32* @cnt_delay, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @cnt_delay, align 4
  %143 = load i32, i32* @events_sent, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @events_sent, align 4
  %145 = load double, double* %6, align 8
  %146 = load double, double* @max_delay, align 8
  %147 = fcmp ogt double %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %128
  %149 = load double, double* %6, align 8
  store double %149, double* @max_delay, align 8
  br label %150

150:                                              ; preds = %148, %128
  br label %55

151:                                              ; preds = %78, %55
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store %struct.TYPE_7__* %152, %struct.TYPE_7__** %154, align 8
  %155 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @debug_error, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %151
  %159 = load i32*, i32** @http_failed, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @buff_overflow_cnt, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* @buff_overflow_cnt, align 4
  store i32 0, i32* @debug_error, align 4
  %165 = load i64, i64* @debug_buff, align 8
  store i64 %165, i64* @ds, align 8
  %166 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %167

167:                                              ; preds = %158, %151
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = call i32 @queue_fix(%struct.TYPE_8__* %170)
  %172 = load i64, i64* @debug_buff, align 8
  %173 = inttoptr i64 %172 to i8*
  ret i8* %173
}

declare dso_local i32 @qkey_fix_timeout(%struct.TYPE_6__*) #1

declare dso_local i64 @get_qtype(i32) #1

declare dso_local i32 @update_watchcat(i32, i32, i32) #1

declare dso_local i32 @get_watchcat_id(i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @critical(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @write_str(i64, i32*, i64) #1

declare dso_local double @max(i32, i32) #1

declare dso_local i32 @queue_fix(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
