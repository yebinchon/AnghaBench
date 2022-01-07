; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_read_special.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_read_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i64, %struct.TYPE_7__*, %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.gather_entry*, i32 }
%struct.gather_entry = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"in client_read_special for %d, %d unread bytes\0A\00", align 1
@CSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"inside client_read_special for %d, %d unread bytes, %d bytes read, %d bytes total, %d bytes ready\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"got %d from %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"inside client_read_special for %d read loop: %d ready to read, %d in target chunk buffer at %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"inside client_read_special for %d: advance read pointer by %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"socket %d completes reading data for master %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"res_read=%d res_bytes=%d unread=%d num=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"in connection %d gathering for master %d.%d, tot=%d err=%d ready=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"socket %d was the last one, waking master %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @client_read_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_read_special(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gather_entry*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %12 = load %struct.connection*, %struct.connection** %3, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 6
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CSN, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %237, %118, %35
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 5
  %47 = call i32 @get_ready_bytes(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %253

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.connection*, %struct.connection** %3, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.connection*, %struct.connection** %3, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 5
  %64 = call i8* @get_read_ptr(i32* %63)
  store i8* %64, i8** %8, align 8
  store i8* %64, i8** %10, align 8
  %65 = load %struct.connection*, %struct.connection** %3, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 3
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %227

69:                                               ; preds = %61
  %70 = load %struct.connection*, %struct.connection** %3, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %227

77:                                               ; preds = %69
  %78 = load %struct.connection*, %struct.connection** %3, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load %struct.gather_entry*, %struct.gather_entry** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %82, i64 %84
  store %struct.gather_entry* %85, %struct.gather_entry** %11, align 8
  %86 = load i32, i32* @verbosity, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %104

88:                                               ; preds = %77
  %89 = load i32, i32* @stderr, align 4
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.connection*, %struct.connection** %3, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %97 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %100 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %88, %77
  %105 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %106 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %170, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.connection*, %struct.connection** %3, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 5
  %115 = call i32 @force_ready_bytes(i32* %114, i32 16)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp sge i32 %116, 4
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %39

119:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %417

120:                                              ; preds = %109
  %121 = load i8*, i8** %10, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %125 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %127 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %126, i32 0, i32 0
  store i32 4, i32* %127, align 4
  %128 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %129 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %120
  %133 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %134 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 16777216
  br i1 %136, label %137, label %156

137:                                              ; preds = %132
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 4
  store i8* %139, i8** %10, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, 4
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @verbosity, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  %145 = load i32, i32* @stderr, align 4
  %146 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %147 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.connection*, %struct.connection** %3, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 6
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %144, %137
  br label %169

156:                                              ; preds = %132, %120
  %157 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %158 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %157, i32 0, i32 2
  store i32 -2, i32* %158, align 4
  %159 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %160 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %160, align 4
  %163 = load %struct.connection*, %struct.connection** %3, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 3
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %156, %155
  br label %170

170:                                              ; preds = %169, %104
  br label %171

171:                                              ; preds = %203, %170
  %172 = load i32, i32* %6, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load %struct.connection*, %struct.connection** %3, align 8
  %176 = getelementptr inbounds %struct.connection, %struct.connection* %175, i32 0, i32 3
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %181 = call i32 @client_result_alloc(i32 %179, %struct.gather_entry* %180, i8** %9)
  store i32 %181, i32* %7, align 4
  %182 = icmp sgt i32 %181, 0
  br label %183

183:                                              ; preds = %174, %171
  %184 = phi i1 [ false, %171 ], [ %182, %174 ]
  br i1 %184, label %185, label %220

185:                                              ; preds = %183
  %186 = load i32, i32* @verbosity, align 4
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = load %struct.connection*, %struct.connection** %3, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %7, align 4
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %193, i32 %194, i8* %195)
  br label %197

197:                                              ; preds = %188, %185
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %197
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @memcpy(i8* %204, i8* %205, i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = load i8*, i8** %10, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8* %211, i8** %10, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %213, %212
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %217 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %171

220:                                              ; preds = %183
  %221 = load i8*, i8** %10, align 8
  %222 = load i8*, i8** %8, align 8
  %223 = ptrtoint i8* %221 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %220, %69, %61
  %228 = load i32, i32* @verbosity, align 4
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load i32, i32* @stderr, align 4
  %232 = load %struct.connection*, %struct.connection** %3, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %227
  %238 = load %struct.connection*, %struct.connection** %3, align 8
  %239 = getelementptr inbounds %struct.connection, %struct.connection* %238, i32 0, i32 5
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @advance_read_ptr(i32* %239, i32 %240)
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.connection*, %struct.connection** %3, align 8
  %247 = getelementptr inbounds %struct.connection, %struct.connection* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = load %struct.connection*, %struct.connection** %3, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 5
  %252 = call i32 @free_unused_buffers(i32* %251)
  br label %39

253:                                              ; preds = %49
  %254 = load %struct.connection*, %struct.connection** %3, align 8
  %255 = getelementptr inbounds %struct.connection, %struct.connection* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %415, label %258

258:                                              ; preds = %253
  %259 = load %struct.connection*, %struct.connection** %3, align 8
  %260 = getelementptr inbounds %struct.connection, %struct.connection* %259, i32 0, i32 3
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = icmp ne %struct.TYPE_7__* %261, null
  br i1 %262, label %263, label %415

263:                                              ; preds = %258
  %264 = load %struct.connection*, %struct.connection** %3, align 8
  %265 = getelementptr inbounds %struct.connection, %struct.connection* %264, i32 0, i32 3
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %4, align 4
  %270 = icmp sge i32 %268, %269
  br i1 %270, label %271, label %415

271:                                              ; preds = %263
  %272 = load i32, i32* @verbosity, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load i32, i32* @stderr, align 4
  %276 = load %struct.connection*, %struct.connection** %3, align 8
  %277 = getelementptr inbounds %struct.connection, %struct.connection* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.connection*, %struct.connection** %3, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %278, i32 %283)
  br label %285

285:                                              ; preds = %274, %271
  %286 = load %struct.connection*, %struct.connection** %3, align 8
  %287 = getelementptr inbounds %struct.connection, %struct.connection* %286, i32 0, i32 3
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 4
  %290 = load %struct.gather_entry*, %struct.gather_entry** %289, align 8
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %290, i64 %292
  store %struct.gather_entry* %293, %struct.gather_entry** %11, align 8
  %294 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %295 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %298 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %296, %299
  br i1 %300, label %301, label %342

301:                                              ; preds = %285
  %302 = load i32, i32* @stderr, align 4
  %303 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %304 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %307 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.connection*, %struct.connection** %3, align 8
  %310 = getelementptr inbounds %struct.connection, %struct.connection* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %313 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %305, i32 %308, i32 %311, i32 %314)
  %316 = load i32, i32* @stderr, align 4
  %317 = load %struct.connection*, %struct.connection** %3, align 8
  %318 = getelementptr inbounds %struct.connection, %struct.connection* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.connection*, %struct.connection** %3, align 8
  %321 = getelementptr inbounds %struct.connection, %struct.connection* %320, i32 0, i32 4
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = load %struct.connection*, %struct.connection** %3, align 8
  %327 = getelementptr inbounds %struct.connection, %struct.connection* %326, i32 0, i32 3
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.connection*, %struct.connection** %3, align 8
  %332 = getelementptr inbounds %struct.connection, %struct.connection* %331, i32 0, i32 3
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.connection*, %struct.connection** %3, align 8
  %337 = getelementptr inbounds %struct.connection, %struct.connection* %336, i32 0, i32 3
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %316, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 %319, i32 %324, i32 %325, i32 %330, i32 %335, i32 %340)
  br label %342

342:                                              ; preds = %301, %285
  %343 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %344 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %347 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %345, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @assert(i32 %350)
  %352 = load %struct.connection*, %struct.connection** %3, align 8
  %353 = getelementptr inbounds %struct.connection, %struct.connection* %352, i32 0, i32 3
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  %358 = load %struct.connection*, %struct.connection** %3, align 8
  %359 = getelementptr inbounds %struct.connection, %struct.connection* %358, i32 0, i32 3
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = icmp sle i32 %357, %362
  %364 = zext i1 %363 to i32
  %365 = call i32 @assert(i32 %364)
  %366 = load %struct.connection*, %struct.connection** %3, align 8
  %367 = getelementptr inbounds %struct.connection, %struct.connection* %366, i32 0, i32 3
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.connection*, %struct.connection** %3, align 8
  %372 = getelementptr inbounds %struct.connection, %struct.connection* %371, i32 0, i32 3
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %370, %375
  br i1 %376, label %377, label %408

377:                                              ; preds = %342
  %378 = load i32, i32* @verbosity, align 4
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %391

380:                                              ; preds = %377
  %381 = load i32, i32* @stderr, align 4
  %382 = load %struct.connection*, %struct.connection** %3, align 8
  %383 = getelementptr inbounds %struct.connection, %struct.connection* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.connection*, %struct.connection** %3, align 8
  %386 = getelementptr inbounds %struct.connection, %struct.connection* %385, i32 0, i32 4
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %381, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %384, i32 %389)
  br label %391

391:                                              ; preds = %380, %377
  %392 = load %struct.connection*, %struct.connection** %3, align 8
  %393 = getelementptr inbounds %struct.connection, %struct.connection* %392, i32 0, i32 4
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %407, label %400

400:                                              ; preds = %391
  %401 = load %struct.connection*, %struct.connection** %3, align 8
  %402 = getelementptr inbounds %struct.connection, %struct.connection* %401, i32 0, i32 4
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = call i32 @put_event_into_heap(%struct.TYPE_8__* %405)
  br label %407

407:                                              ; preds = %400, %391
  br label %408

408:                                              ; preds = %407, %342
  %409 = load %struct.connection*, %struct.connection** %3, align 8
  %410 = getelementptr inbounds %struct.connection, %struct.connection* %409, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %410, align 8
  %411 = load %struct.connection*, %struct.connection** %3, align 8
  %412 = getelementptr inbounds %struct.connection, %struct.connection* %411, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %412, align 8
  %413 = load %struct.connection*, %struct.connection** %3, align 8
  %414 = getelementptr inbounds %struct.connection, %struct.connection* %413, i32 0, i32 2
  store i64 0, i64* %414, align 8
  br label %415

415:                                              ; preds = %408, %263, %258, %253
  %416 = load i32, i32* %5, align 4
  store i32 %416, i32* %2, align 4
  br label %417

417:                                              ; preds = %415, %119
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ready_bytes(i32*) #1

declare dso_local i8* @get_read_ptr(i32*) #1

declare dso_local i32 @force_ready_bytes(i32*, i32) #1

declare dso_local i32 @client_result_alloc(i32, %struct.gather_entry*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
