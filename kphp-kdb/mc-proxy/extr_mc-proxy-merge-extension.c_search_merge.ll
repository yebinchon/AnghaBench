; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_search_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_search_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.connection = type { i32 }
%struct.conn_query = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.gather_data = type { i32, i32, double }
%struct.memcache_server_functions = type { %struct.TYPE_4__* }

@DATA_BUFF_LEN = common dso_local global i32 0, align 4
@data_buff = common dso_local global i32* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c[%d]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"data_shift = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"data_buff[] = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Error in search_merge: cannot find query for answer. Dropping answer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Error in search_merge: generations do not match. Dropping answer. (key = %s).\0A\00", align 1
@cur_key = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [70 x i8] c"Error in search_merge: no parent query. Dropping answer. (key = %s).\0A\00", align 1
@CC = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"end of search_merge\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"got answer %d of %d in %.08f seconds\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"All answers gathered. Deleting master query.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_merge(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.conn_query*, align 8
  %9 = alloca %struct.conn_query*, align 8
  %10 = alloca %struct.gather_data*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DATA_BUFF_LEN, align 4
  %13 = icmp sle i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32*, i32** @data_buff, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @read_in(i32* %17, i32* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32*, i32** @data_buff, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @data_buff, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.connection*, %struct.connection** %4, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 0
  %54 = call i32 @free_unused_buffers(i32* %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %68, %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32*, i32** @data_buff, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 13
  br label %66

66:                                               ; preds = %59, %55
  %67 = phi i1 [ false, %55 ], [ %65, %59 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %55

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %3, align 4
  br label %237

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* %7, align 4
  %83 = load i32*, i32** @data_buff, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32*, i32** @data_buff, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  store i32 -1, i32* %3, align 4
  br label %237

99:                                               ; preds = %80
  %100 = load %struct.connection*, %struct.connection** %4, align 8
  %101 = load i32*, i32** @data_buff, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call %struct.conn_query* @get_conn_query(%struct.connection* %100, i32* %101, i32 %102)
  store %struct.conn_query* %103, %struct.conn_query** %8, align 8
  %104 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %105 = icmp ne %struct.conn_query* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %237

109:                                              ; preds = %99
  %110 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %111 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = icmp ne %struct.TYPE_3__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %116 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %119 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %117, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %114, %109
  %125 = load i32, i32* @stderr, align 4
  %126 = load i8*, i8** @cur_key, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  %128 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %129 = call i32 @query_complete_custom(%struct.conn_query* %128, i32 0)
  store i32 0, i32* %3, align 4
  br label %237

130:                                              ; preds = %114
  %131 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %132 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to %struct.conn_query*
  store %struct.conn_query* %135, %struct.conn_query** %9, align 8
  %136 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %137 = icmp ne %struct.conn_query* %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** @cur_key, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  %142 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %143 = call i32 @query_complete_custom(%struct.conn_query* %142, i32 0)
  store i32 0, i32* %3, align 4
  br label %237

144:                                              ; preds = %130
  %145 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %146 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %145, i32 0, i32 2
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %149 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = icmp eq %struct.TYPE_3__* %147, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %155 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %159 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to %struct.memcache_server_functions*
  %164 = getelementptr inbounds %struct.memcache_server_functions, %struct.memcache_server_functions* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** @CC, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %144
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CC, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %172 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %171, i32 0, i32 2
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %170, %175
  br label %177

177:                                              ; preds = %168, %144
  %178 = phi i1 [ false, %144 ], [ %176, %168 ]
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %182 = load i32*, i32** @data_buff, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %7, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @client_read_special(%struct.conn_query* %181, i32* %185, i32 %188)
  %190 = load %struct.conn_query*, %struct.conn_query** %8, align 8
  %191 = call i32 @query_complete_custom(%struct.conn_query* %190, i32 1)
  %192 = load i32, i32* @verbosity, align 4
  %193 = icmp sge i32 %192, 4
  br i1 %193, label %194, label %197

194:                                              ; preds = %177
  %195 = load i32, i32* @stderr, align 4
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %177
  %198 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %199 = call %struct.gather_data* @GATHER_QUERY(%struct.conn_query* %198)
  store %struct.gather_data* %199, %struct.gather_data** %10, align 8
  %200 = load i32, i32* @verbosity, align 4
  %201 = icmp sge i32 %200, 2
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load i32, i32* @stderr, align 4
  %204 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %205 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %208 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %211 = call double @get_utime(i32 %210)
  %212 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %213 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %212, i32 0, i32 2
  %214 = load double, double* %213, align 8
  %215 = fsub double %211, %214
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %206, i32 %209, double %215)
  br label %217

217:                                              ; preds = %202, %197
  %218 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %219 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %222 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %217
  %226 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %227 = call i32 @end_search_query(%struct.conn_query* %226)
  %228 = load i32, i32* @verbosity, align 4
  %229 = icmp sge i32 %228, 4
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i32, i32* @stderr, align 4
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %225
  %234 = load %struct.conn_query*, %struct.conn_query** %9, align 8
  %235 = call i32 @delete_search_query(%struct.conn_query* %234)
  br label %236

236:                                              ; preds = %233, %217
  store i32 1, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %138, %124, %106, %90, %76
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

declare dso_local %struct.conn_query* @get_conn_query(%struct.connection*, i32*, i32) #1

declare dso_local i32 @query_complete_custom(%struct.conn_query*, i32) #1

declare dso_local i32 @client_read_special(%struct.conn_query*, i32*, i32) #1

declare dso_local %struct.gather_data* @GATHER_QUERY(%struct.conn_query*) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @end_search_query(%struct.conn_query*) #1

declare dso_local i32 @delete_search_query(%struct.conn_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
