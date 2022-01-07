; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_worker.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i32, i32, i32, i32, %struct.cluster_server* }
%struct.cluster_server = type { i32, i64, i64, i32, i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"outbound socket %d: disconnected, cleaning\0A\00", align 1
@C_INCONN = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"socket #%d to %s:%d becomes active\0A\00", align 1
@C_WANTRD = common dso_local global i32 0, align 4
@active_outbound_connections = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"socket #%d: unknown event before connecting (?)\0A\00", align 1
@C_NORW = common dso_local global i32 0, align 4
@C_NORD = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"outbound socket #%d: woke up, state=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"client_reader(%d) returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"client socket #%d: error, closing socket.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_worker(i32 %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca %struct.cluster_server*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.connection*
  store %struct.connection* %14, %struct.connection** %8, align 8
  %15 = load %struct.connection*, %struct.connection** %8, align 8
  %16 = call i32 @assert(%struct.connection* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EPOLLHUP, align 4
  %21 = load i32, i32* @EPOLLERR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @EPOLLRDHUP, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i32, i32* @verbosity, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.connection*, %struct.connection** %8, align 8
  %36 = call i32 @clear_client(%struct.connection* %35)
  store i32 %36, i32* %4, align 4
  br label %258

37:                                               ; preds = %3
  %38 = load %struct.connection*, %struct.connection** %8, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @C_INCONN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EVT_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %43
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.connection*, %struct.connection** %8, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.connection*, %struct.connection** %8, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 5
  %60 = load %struct.cluster_server*, %struct.cluster_server** %59, align 8
  %61 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @inet_ntoa(i32 %62)
  %64 = load %struct.connection*, %struct.connection** %8, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 5
  %66 = load %struct.cluster_server*, %struct.cluster_server** %65, align 8
  %67 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %63, i32 %68)
  br label %70

70:                                               ; preds = %53, %50
  %71 = load i32, i32* @C_WANTRD, align 4
  %72 = load %struct.connection*, %struct.connection** %8, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.connection*, %struct.connection** %8, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 5
  %76 = load %struct.cluster_server*, %struct.cluster_server** %75, align 8
  store %struct.cluster_server* %76, %struct.cluster_server** %9, align 8
  %77 = load %struct.cluster_server*, %struct.cluster_server** %9, align 8
  %78 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.cluster_server*, %struct.cluster_server** %9, align 8
  %82 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.cluster_server*, %struct.cluster_server** %9, align 8
  %84 = getelementptr inbounds %struct.cluster_server, %struct.cluster_server* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @active_outbound_connections, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @active_outbound_connections, align 4
  %87 = load i32, i32* @EVT_READ, align 4
  %88 = load i32, i32* @EVT_SPEC, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %4, align 4
  br label %258

90:                                               ; preds = %43
  %91 = load i32, i32* @stderr, align 4
  %92 = load %struct.connection*, %struct.connection** %8, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EVT_SPEC, align 4
  store i32 %96, i32* %4, align 4
  br label %258

97:                                               ; preds = %37
  %98 = load i32, i32* @C_NORW, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.connection*, %struct.connection** %8, align 8
  %101 = getelementptr inbounds %struct.connection, %struct.connection* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @EVT_READ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %97
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EVT_READ, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @C_NORD, align 4
  %119 = load %struct.connection*, %struct.connection** %8, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %110, %97
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EVT_WRITE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %123
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @EVT_WRITE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @C_NOWR, align 4
  %139 = load %struct.connection*, %struct.connection** %8, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %130, %123
  %144 = load i32, i32* @verbosity, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32, i32* @stderr, align 4
  %148 = load %struct.connection*, %struct.connection** %8, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.connection*, %struct.connection** %8, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %146, %143
  %156 = load %struct.connection*, %struct.connection** %8, align 8
  %157 = call i32 @server_writer(%struct.connection* %156)
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %217, %155
  %159 = load %struct.connection*, %struct.connection** %8, align 8
  %160 = getelementptr inbounds %struct.connection, %struct.connection* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %158
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %183, label %166

166:                                              ; preds = %163
  %167 = load %struct.connection*, %struct.connection** %8, align 8
  %168 = getelementptr inbounds %struct.connection, %struct.connection* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @C_WANTRD, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load %struct.connection*, %struct.connection** %8, align 8
  %175 = getelementptr inbounds %struct.connection, %struct.connection* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @C_NORD, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %173, %166
  %182 = phi i1 [ false, %166 ], [ %180, %173 ]
  br label %183

183:                                              ; preds = %181, %163
  %184 = phi i1 [ true, %163 ], [ %182, %181 ]
  br label %185

185:                                              ; preds = %183, %158
  %186 = phi i1 [ false, %158 ], [ %184, %183 ]
  br i1 %186, label %187, label %218

187:                                              ; preds = %185
  %188 = load %struct.connection*, %struct.connection** %8, align 8
  %189 = call i32 @client_reader(%struct.connection* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* @verbosity, align 4
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load i32, i32* @stderr, align 4
  %194 = load %struct.connection*, %struct.connection** %8, align 8
  %195 = getelementptr inbounds %struct.connection, %struct.connection* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %192, %187
  %200 = load i32, i32* %10, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.connection*, %struct.connection** %8, align 8
  %204 = getelementptr inbounds %struct.connection, %struct.connection* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, 8
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %202, %199
  %208 = load %struct.connection*, %struct.connection** %8, align 8
  %209 = getelementptr inbounds %struct.connection, %struct.connection* %208, i32 0, i32 4
  %210 = call i32 @free_unused_buffers(i32* %209)
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %10, align 4
  %215 = icmp sgt i32 %214, 1
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %207
  br label %218

217:                                              ; preds = %213
  br label %158

218:                                              ; preds = %216, %185
  %219 = load %struct.connection*, %struct.connection** %8, align 8
  %220 = getelementptr inbounds %struct.connection, %struct.connection* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load i32, i32* @verbosity, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* @stderr, align 4
  %228 = load %struct.connection*, %struct.connection** %8, align 8
  %229 = getelementptr inbounds %struct.connection, %struct.connection* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %226, %223
  %233 = load %struct.connection*, %struct.connection** %8, align 8
  %234 = call i32 @clear_client(%struct.connection* %233)
  store i32 %234, i32* %4, align 4
  br label %258

235:                                              ; preds = %218
  %236 = load %struct.connection*, %struct.connection** %8, align 8
  %237 = getelementptr inbounds %struct.connection, %struct.connection* %236, i32 0, i32 4
  %238 = call i32 @free_unused_buffers(i32* %237)
  %239 = load %struct.connection*, %struct.connection** %8, align 8
  %240 = getelementptr inbounds %struct.connection, %struct.connection* %239, i32 0, i32 3
  %241 = call i32 @free_unused_buffers(i32* %240)
  %242 = load %struct.connection*, %struct.connection** %8, align 8
  %243 = getelementptr inbounds %struct.connection, %struct.connection* %242, i32 0, i32 3
  %244 = call i64 @get_ready_bytes(i32* %243)
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %235
  %247 = load i32, i32* @EVT_SPEC, align 4
  %248 = load i32, i32* @EVT_READ, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @EVT_WRITE, align 4
  %251 = or i32 %249, %250
  br label %256

252:                                              ; preds = %235
  %253 = load i32, i32* @EVT_SPEC, align 4
  %254 = load i32, i32* @EVT_READ, align 4
  %255 = or i32 %253, %254
  br label %256

256:                                              ; preds = %252, %246
  %257 = phi i32 [ %251, %246 ], [ %255, %252 ]
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %232, %90, %70, %34
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @assert(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @clear_client(%struct.connection*) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @server_writer(%struct.connection*) #1

declare dso_local i32 @client_reader(%struct.connection*) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

declare dso_local i64 @get_ready_bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
