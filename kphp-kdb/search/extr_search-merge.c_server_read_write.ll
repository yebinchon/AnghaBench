; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_server_read_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_server_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.connection = type { i32, i64, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"socket %d: disconnected, cleaning\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@EVA_DESTROY = common dso_local global i32 0, align 4
@C_NORW = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@C_NORD = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@C_WANTRD = common dso_local global i32 0, align 4
@C_INQUERY = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"server_reader=%d, ready=%02x, state=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"socket %d: closing and cleaning (error code=%d)\0A\00", align 1
@EVT_SPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_read_write(i32 %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.connection*
  store %struct.connection* %11, %struct.connection** %8, align 8
  %12 = load %struct.connection*, %struct.connection** %8, align 8
  %13 = call i32 @assert(%struct.connection* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EPOLLHUP, align 4
  %18 = load i32, i32* @EPOLLERR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EPOLLRDHUP, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load i64, i64* @verbosity, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.connection*, %struct.connection** %8, align 8
  %33 = call i32 @free_connection_buffers(%struct.connection* %32)
  %34 = load %struct.connection*, %struct.connection** %8, align 8
  %35 = call i32 @memset(%struct.connection* %34, i32 0, i32 40)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @active_connections, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @active_connections, align 4
  %40 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %40, i32* %4, align 4
  br label %265

41:                                               ; preds = %3
  %42 = load i32, i32* @C_NORW, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.connection*, %struct.connection** %8, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EVT_READ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EVT_READ, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @C_NORD, align 4
  %63 = load %struct.connection*, %struct.connection** %8, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %54, %41
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EVT_WRITE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @EVT_WRITE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @C_NOWR, align 4
  %83 = load %struct.connection*, %struct.connection** %8, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74, %67
  %88 = load %struct.connection*, %struct.connection** %8, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %121

92:                                               ; preds = %87
  %93 = load i64, i64* @now, align 8
  %94 = load %struct.connection*, %struct.connection** %8, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %93, %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %92
  %101 = load %struct.connection*, %struct.connection** %8, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.connection*, %struct.connection** %8, align 8
  %107 = getelementptr inbounds %struct.connection, %struct.connection* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %100, %92
  %113 = load %struct.connection*, %struct.connection** %8, align 8
  %114 = call i32 @end_search_query(%struct.connection* %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.connection*, %struct.connection** %8, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @free_all_buffers(i64 %117)
  %119 = load %struct.connection*, %struct.connection** %8, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %112, %100, %87
  br label %122

122:                                              ; preds = %207, %121
  %123 = load %struct.connection*, %struct.connection** %8, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @C_WANTRD, align 4
  %127 = load i32, i32* @C_INQUERY, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = load i32, i32* @C_WANTRD, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.connection*, %struct.connection** %8, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @C_NORD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %132, %122
  %140 = load %struct.connection*, %struct.connection** %8, align 8
  %141 = getelementptr inbounds %struct.connection, %struct.connection* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @C_WANTWR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.connection*, %struct.connection** %8, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @C_NOWR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %146, %139
  %155 = phi i1 [ false, %139 ], [ %153, %146 ]
  br label %156

156:                                              ; preds = %154, %132
  %157 = phi i1 [ true, %132 ], [ %155, %154 ]
  br i1 %157, label %158, label %208

158:                                              ; preds = %156
  %159 = load %struct.connection*, %struct.connection** %8, align 8
  %160 = call i32 @server_writer(%struct.connection* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %208

164:                                              ; preds = %158
  %165 = load %struct.connection*, %struct.connection** %8, align 8
  %166 = getelementptr inbounds %struct.connection, %struct.connection* %165, i32 0, i32 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = icmp ne %struct.TYPE_4__* %167, null
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = load %struct.connection*, %struct.connection** %8, align 8
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @C_INQUERY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %169
  %177 = load %struct.connection*, %struct.connection** %8, align 8
  %178 = call i32 @server_reader(%struct.connection* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i64, i64* @verbosity, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load i32, i32* @stderr, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %181, %176
  %192 = load i32, i32* %9, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %208

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %169, %164
  %197 = load %struct.connection*, %struct.connection** %8, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 2
  %199 = call i64 @get_ready_bytes(i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @C_WANTWR, align 4
  %203 = load %struct.connection*, %struct.connection** %8, align 8
  %204 = getelementptr inbounds %struct.connection, %struct.connection* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196
  br label %122

208:                                              ; preds = %194, %163, %156
  %209 = load %struct.connection*, %struct.connection** %8, align 8
  %210 = getelementptr inbounds %struct.connection, %struct.connection* %209, i32 0, i32 3
  %211 = call i32 @free_unused_buffers(i32* %210)
  %212 = load %struct.connection*, %struct.connection** %8, align 8
  %213 = getelementptr inbounds %struct.connection, %struct.connection* %212, i32 0, i32 2
  %214 = call i32 @free_unused_buffers(i32* %213)
  %215 = load %struct.connection*, %struct.connection** %8, align 8
  %216 = getelementptr inbounds %struct.connection, %struct.connection* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %239

219:                                              ; preds = %208
  %220 = load i64, i64* @verbosity, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32, i32* @stderr, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.connection*, %struct.connection** %8, align 8
  %226 = getelementptr inbounds %struct.connection, %struct.connection* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %224, i64 %227)
  br label %229

229:                                              ; preds = %222, %219
  %230 = load %struct.connection*, %struct.connection** %8, align 8
  %231 = call i32 @free_connection_buffers(%struct.connection* %230)
  %232 = load %struct.connection*, %struct.connection** %8, align 8
  %233 = call i32 @memset(%struct.connection* %232, i32 0, i32 40)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 3
  store i64 0, i64* %235, align 8
  %236 = load i32, i32* @active_connections, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* @active_connections, align 4
  %238 = load i32, i32* @EVA_DESTROY, align 4
  store i32 %238, i32* %4, align 4
  br label %265

239:                                              ; preds = %208
  %240 = load %struct.connection*, %struct.connection** %8, align 8
  %241 = getelementptr inbounds %struct.connection, %struct.connection* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @C_WANTRD, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load i32, i32* @EVT_READ, align 4
  br label %249

248:                                              ; preds = %239
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i32 [ %247, %246 ], [ 0, %248 ]
  %251 = load %struct.connection*, %struct.connection** %8, align 8
  %252 = getelementptr inbounds %struct.connection, %struct.connection* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @C_WANTWR, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %249
  %258 = load i32, i32* @EVT_WRITE, align 4
  br label %260

259:                                              ; preds = %249
  br label %260

260:                                              ; preds = %259, %257
  %261 = phi i32 [ %258, %257 ], [ 0, %259 ]
  %262 = or i32 %250, %261
  %263 = load i32, i32* @EVT_SPEC, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %260, %229, %31
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @assert(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @free_connection_buffers(%struct.connection*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @end_search_query(%struct.connection*) #1

declare dso_local i32 @free_all_buffers(i64) #1

declare dso_local i32 @server_writer(%struct.connection*) #1

declare dso_local i32 @server_reader(%struct.connection*) #1

declare dso_local i64 @get_ready_bytes(i32*) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
