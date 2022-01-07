; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_do_search_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_do_search_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double }
%struct.TYPE_4__ = type { i32 }
%struct.connection = type { i32 }
%struct.search_query_heap_en = type { double, i32, i64* }
%struct.value_buffer = type { i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)* }

@do_search_query.buff = internal global [2048 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"search\00", align 1
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"got: %s\0A\00", align 1
@Q_raw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"parse_query (%.*s) returns error code %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ERROR near '%.256s'\0A\00", align 1
@R_cnt = common dso_local global i32 0, align 4
@search_queries = common dso_local global i32 0, align 4
@LAST_SEARCH_QUERY_BUFF_SIZE = common dso_local global i32 0, align 4
@last_search_query = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"TOO LONG QUERY\00", align 1
@SQH_SIZE = common dso_local global i64 0, align 8
@SEARCH_QUERY_HEAP_SIZE = common dso_local global i64 0, align 8
@SQH = common dso_local global %struct.TYPE_5__* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@Q_hash_group_mode = common dso_local global i64 0, align 8
@Q_limit = common dso_local global i64 0, align 8
@R_tot = common dso_local global i32 0, align 4
@R = common dso_local global %struct.TYPE_4__** null, align 8
@RR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_search_query(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.search_query_heap_en, align 8
  %16 = alloca %struct.value_buffer, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %226

21:                                               ; preds = %4
  %22 = load i64, i64* @verbosity, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %21
  store i32 0, i32* %11, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @parse_query(i8* %29, i32* @Q_raw, i32* %12)
  store i8* %30, i8** %13, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %35, i32 %36)
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load %struct.connection*, %struct.connection** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @do_search_query.buff, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = call i32 @return_one_key(%struct.connection* %40, i8* %45, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @do_search_query.buff, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %5, align 4
  br label %226

49:                                               ; preds = %28
  store i32 0, i32* @R_cnt, align 4
  %50 = load i32, i32* @search_queries, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @search_queries, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @LAST_SEARCH_QUERY_BUFF_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i64*, i64** @last_search_query, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memcpy(i64* %56, i8* %57, i32 %58)
  %60 = load i64*, i64** @last_search_query, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 0, i64* %63, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load i64*, i64** @last_search_query, align 8
  %66 = call i32 @strcpy(i64* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  %68 = call double (...) @get_rusage_time()
  %69 = fneg double %68
  store double %69, double* %14, align 8
  %70 = call i32 (...) @perform_query()
  store i32 %70, i32* %11, align 4
  %71 = call double (...) @get_rusage_time()
  %72 = load double, double* %14, align 8
  %73 = fadd double %72, %71
  store double %73, double* %14, align 8
  %74 = load i64, i64* @SQH_SIZE, align 8
  %75 = load i64, i64* @SEARCH_QUERY_HEAP_SIZE, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SQH, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = load double, double* %14, align 8
  %83 = fcmp olt double %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %77, %67
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i64* @zzmalloc(i32 %86)
  %88 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %15, i32 0, i32 2
  store i64* %87, i64** %88, align 8
  %89 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %15, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strcpy(i64* %90, i8* %91)
  %93 = load double, double* %14, align 8
  %94 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %15, i32 0, i32 0
  store double %93, double* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = getelementptr inbounds %struct.search_query_heap_en, %struct.search_query_heap_en* %15, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = call i32 @search_query_heap_insert(%struct.search_query_heap_en* %15)
  br label %98

98:                                               ; preds = %84, %77
  %99 = load i64, i64* @verbosity, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load %struct.connection*, %struct.connection** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @Q_raw, align 4
  %116 = call i32 @value_buffer_init(%struct.value_buffer* %16, %struct.connection* %106, i8* %111, i32 %114, i32 %115, i32 64)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %226

119:                                              ; preds = %105
  %120 = load i64, i64* @Q_hash_group_mode, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %182

122:                                              ; preds = %119
  %123 = load i64, i64* @Q_limit, align 8
  %124 = icmp sgt i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  %128 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %127, align 8
  %129 = load i32, i32* @R_tot, align 4
  %130 = call i32 %128(%struct.value_buffer* %16, i32 %129)
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %177, %122
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @R_cnt, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %180

135:                                              ; preds = %131
  %136 = call i32 @value_buffer_flush(%struct.value_buffer* %16)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i32 -1, i32* %5, align 4
  br label %226

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 1
  %141 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %140, align 8
  %142 = call i32 %141(%struct.value_buffer* %16, i8 signext 44)
  %143 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 2
  %144 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %143, align 8
  %145 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @R, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %145, i64 %147
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 %144(%struct.value_buffer* %16, i32 %151)
  %153 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 1
  %154 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %153, align 8
  %155 = call i32 %154(%struct.value_buffer* %16, i8 signext 44)
  %156 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  %157 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %156, align 8
  %158 = load i32*, i32** @RR, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @convert_rating(i32 %162)
  %164 = call i32 %157(%struct.value_buffer* %16, i32 %163)
  %165 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 1
  %166 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %165, align 8
  %167 = call i32 %166(%struct.value_buffer* %16, i8 signext 44)
  %168 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 3
  %169 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %168, align 8
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @R, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = call i32 @get_hash_item(%struct.TYPE_4__* %174)
  %176 = call i32 %169(%struct.value_buffer* %16, i32 %175)
  br label %177

177:                                              ; preds = %139
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %131

180:                                              ; preds = %131
  %181 = call i32 @value_buffer_return(%struct.value_buffer* %16)
  store i32 %181, i32* %5, align 4
  br label %226

182:                                              ; preds = %119
  %183 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  %184 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 %184(%struct.value_buffer* %16, i32 %185)
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %221, %182
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @R_cnt, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %187
  %192 = call i32 @value_buffer_flush(%struct.value_buffer* %16)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  store i32 -1, i32* %5, align 4
  br label %226

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 1
  %197 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %196, align 8
  %198 = call i32 %197(%struct.value_buffer* %16, i8 signext 44)
  %199 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 2
  %200 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %199, align 8
  %201 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @R, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %201, i64 %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %200(%struct.value_buffer* %16, i32 %207)
  %209 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 1
  %210 = load i32 (%struct.value_buffer*, i8)*, i32 (%struct.value_buffer*, i8)** %209, align 8
  %211 = call i32 %210(%struct.value_buffer* %16, i8 signext 44)
  %212 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  %213 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %212, align 8
  %214 = load i32*, i32** @RR, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @convert_rating(i32 %218)
  %220 = call i32 %213(%struct.value_buffer* %16, i32 %219)
  br label %221

221:                                              ; preds = %195
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %187

224:                                              ; preds = %187
  %225 = call i32 @value_buffer_return(%struct.value_buffer* %16)
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %224, %194, %180, %138, %118, %33, %20
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @parse_query(i8*, i32*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local double @get_rusage_time(...) #1

declare dso_local i32 @perform_query(...) #1

declare dso_local i64* @zzmalloc(i32) #1

declare dso_local i32 @search_query_heap_insert(%struct.search_query_heap_en*) #1

declare dso_local i32 @value_buffer_init(%struct.value_buffer*, %struct.connection*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @value_buffer_flush(%struct.value_buffer*) #1

declare dso_local i32 @convert_rating(i32) #1

declare dso_local i32 @get_hash_item(%struct.TYPE_4__*) #1

declare dso_local i32 @value_buffer_return(%struct.value_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
