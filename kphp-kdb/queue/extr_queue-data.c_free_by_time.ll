; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_free_by_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_free_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@time_st = common dso_local global %struct.TYPE_8__** null, align 8
@last_del_time = common dso_local global i64 0, align 8
@MAX_TIME_GAP = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i64 0, align 8
@my_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"del entry %p by time (key = %s) gap = %d, timeout = %d, qname = (%p), now = %d, now2 = %d\0A\00", align 1
@now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"!%s!%d!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@TIME_TABLE_RATIO_EXP = common dso_local global i32 0, align 4
@events_memory = common dso_local global i32 0, align 4
@keys_memory = common dso_local global i32 0, align 4
@max_events_memory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"del entry %p by memory limit (key = %s) [%ld / %lld]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_by_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = call i32 @get_utime(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_TIME_ID(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %14 = load i64, i64* @last_del_time, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 %14
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  br label %17

17:                                               ; preds = %138, %1
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @last_del_time, align 8
  %21 = sub i64 %19, %20
  %22 = load i32, i32* @MAX_TIME_GAP, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* @last_del_time, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %31 = load i32, i32* @MAX_TIME_GAP, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %30, %32
  %34 = icmp ugt i64 %29, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %2, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* @last_del_time, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %40, %42
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br label %46

46:                                               ; preds = %44, %25, %17
  %47 = phi i1 [ true, %25 ], [ true, %17 ], [ %45, %44 ]
  br i1 %47, label %48, label %139

48:                                               ; preds = %46
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = icmp ne %struct.TYPE_8__* %51, %52
  br i1 %53, label %54, label %127

54:                                               ; preds = %48
  %55 = load i32, i32* @my_verbosity, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %122

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @last_del_time, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* @now, align 4
  %82 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %83 = call i32 @get_utime(i32 %82)
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %61, i8* %66, i64 %70, i32 %75, %struct.TYPE_7__* %80, i32 %81, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %121

91:                                               ; preds = %57
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %6, align 8
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %91
  %110 = load i32, i32* @stderr, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %120

117:                                              ; preds = %91
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %109
  br label %121

121:                                              ; preds = %120, %57
  br label %122

122:                                              ; preds = %121, %54
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = call i32 @delete_qkey(%struct.TYPE_8__* %125)
  br label %138

127:                                              ; preds = %48
  %128 = load i64, i64* @last_del_time, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* @last_del_time, align 8
  %130 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i64 0, i64* @last_del_time, align 8
  br label %133

133:                                              ; preds = %132, %127
  %134 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %135 = load i64, i64* @last_del_time, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %134, i64 %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %5, align 8
  br label %138

138:                                              ; preds = %133, %122
  br label %17

139:                                              ; preds = %46
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @TIME_TABLE_RATIO_EXP, align 4
  %142 = shl i32 2, %141
  %143 = sub nsw i32 %140, %142
  %144 = call i32 @GET_TIME_ID(i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i64, i64* @last_del_time, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %7, align 4
  %147 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %147, i64 %149
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %5, align 8
  store i32 10000000, i32* %2, align 4
  br label %152

152:                                              ; preds = %230, %139
  %153 = load i32, i32* %2, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %2, align 4
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* @events_memory, align 4
  %162 = load i32, i32* @keys_memory, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* @max_events_memory, align 4
  %165 = icmp sgt i32 %163, %164
  br label %166

166:                                              ; preds = %160, %156, %152
  %167 = phi i1 [ false, %156 ], [ false, %152 ], [ %165, %160 ]
  br i1 %167, label %168, label %231

168:                                              ; preds = %166
  %169 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %169, i64 %171
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %8, align 8
  br label %174

174:                                              ; preds = %220, %168
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %178, i64 %180
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = icmp ne %struct.TYPE_8__* %177, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load i32, i32* %2, align 4
  %186 = icmp sgt i32 %185, 0
  br label %187

187:                                              ; preds = %184, %174
  %188 = phi i1 [ false, %174 ], [ %186, %184 ]
  br i1 %188, label %189, label %223

189:                                              ; preds = %187
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @stderr, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* @events_memory, align 4
  %207 = load i32, i32* @keys_memory, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @max_events_memory, align 4
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_8__* %200, i8* %205, i32 %208, i32 %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = call i32 @delete_qkey(%struct.TYPE_8__* %213)
  br label %219

215:                                              ; preds = %189
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  store %struct.TYPE_8__* %218, %struct.TYPE_8__** %8, align 8
  br label %219

219:                                              ; preds = %215, %196
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %2, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %2, align 4
  br label %174

223:                                              ; preds = %187
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %229, %223
  br label %152

231:                                              ; preds = %166
  ret void
}

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @delete_qkey(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
