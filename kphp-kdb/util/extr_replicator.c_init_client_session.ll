; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_init_client_session.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_init_client_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i32, i8, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32, %struct.repl_client_status** }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, %struct.kfs_file_info* }
%struct.kfs_file_info = type { i8*, i32 }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.repl_client_status = type { i32, %struct.connection*, %struct.related_binlog* }
%struct.connection = type { i32, i32 }
%struct.repl_handshake = type { i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32, i64*, i64, i32 }

@last_handshake_id = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"sending handshake to client %p, handshake_id=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@P_REPL_HANDSHAKE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [114 x i8] c"sending handshake packet to %s:%d, handshake_id=%d, for binlog tag %s, slice name %s (size %lld, pos %lld..%lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_client_session(%struct.related_binlog* %0, %struct.connection* %1, i32 %2) #0 {
  %4 = alloca %struct.related_binlog*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.repl_client_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.kfs_file_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.repl_handshake*, align 8
  %16 = alloca i32, align 4
  store %struct.related_binlog* %0, %struct.related_binlog** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %18 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %17, i32 0, i32 8
  %19 = load %struct.repl_client_status**, %struct.repl_client_status*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %19, i64 %21
  %23 = load %struct.repl_client_status*, %struct.repl_client_status** %22, align 8
  %24 = icmp ne %struct.repl_client_status* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @last_handshake_id, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @last_handshake_id, align 4
  %30 = and i32 %29, 1073741823
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.repl_client_status* @get_client_by_handshake(i32 %32, i32 0)
  %34 = icmp ne %struct.repl_client_status* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.repl_client_status* @get_client_by_handshake(i32 %38, i32 1)
  %40 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %41 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %40, i32 0, i32 8
  %42 = load %struct.repl_client_status**, %struct.repl_client_status*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.repl_client_status*, %struct.repl_client_status** %42, i64 %44
  store %struct.repl_client_status* %39, %struct.repl_client_status** %45, align 8
  store %struct.repl_client_status* %39, %struct.repl_client_status** %8, align 8
  %46 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %47 = load %struct.repl_client_status*, %struct.repl_client_status** %8, align 8
  %48 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %47, i32 0, i32 2
  store %struct.related_binlog* %46, %struct.related_binlog** %48, align 8
  %49 = load %struct.connection*, %struct.connection** %5, align 8
  %50 = load %struct.repl_client_status*, %struct.repl_client_status** %8, align 8
  %51 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %50, i32 0, i32 1
  store %struct.connection* %49, %struct.connection** %51, align 8
  %52 = load %struct.connection*, %struct.connection** %5, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.repl_client_status*, %struct.repl_client_status** %8, align 8
  %56 = getelementptr inbounds %struct.repl_client_status, %struct.repl_client_status* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @verbosity, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %3
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.repl_client_status*, %struct.repl_client_status** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.repl_client_status* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %3
  %65 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %66 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %71 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %78 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %83 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %81, %76
  %90 = phi i1 [ false, %76 ], [ %88, %81 ]
  br label %91

91:                                               ; preds = %89, %69
  %92 = phi i1 [ true, %69 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %96 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %9, align 4
  %100 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %101 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = icmp ne %struct.TYPE_5__* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %91
  %105 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %106 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.kfs_file_info*, %struct.kfs_file_info** %108, align 8
  %110 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  br label %113

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %104
  %114 = phi i8* [ %111, %104 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %112 ]
  store i8* %114, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i8*, i8** %10, align 8
  %119 = call i8* @strrchr(i8* %118, i8 signext 47)
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %12, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %10, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @strlen(i8* %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125, %113
  %129 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %130 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %128
  %134 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %135 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %142 = call i64 @load_binlog_data(%struct.related_binlog* %141)
  %143 = icmp sge i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  br label %146

146:                                              ; preds = %140, %133, %128
  %147 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %148 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %147, i32 0, i32 3
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = icmp ne %struct.TYPE_5__* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %153 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.kfs_file_info*, %struct.kfs_file_info** %155, align 8
  br label %158

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %151
  %159 = phi %struct.kfs_file_info* [ %156, %151 ], [ null, %157 ]
  store %struct.kfs_file_info* %159, %struct.kfs_file_info** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 72, %161
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %162, %164
  %166 = add i64 %165, 2
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call %struct.repl_handshake* @alloc_packet(i32 %168)
  store %struct.repl_handshake* %169, %struct.repl_handshake** %15, align 8
  %170 = load i32, i32* @P_REPL_HANDSHAKE, align 4
  %171 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %172 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %171, i32 0, i32 12
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %175 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %177 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %176, i32 0, i32 11
  store i64 0, i64* %177, align 8
  %178 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %179 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %182 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %184 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %187 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  %188 = load %struct.kfs_file_info*, %struct.kfs_file_info** %13, align 8
  %189 = icmp ne %struct.kfs_file_info* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %158
  %191 = load %struct.kfs_file_info*, %struct.kfs_file_info** %13, align 8
  %192 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  br label %195

194:                                              ; preds = %158
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i32 [ %193, %190 ], [ -1, %194 ]
  %197 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %198 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %200 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %195
  %204 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %205 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %204, i32 0, i32 4
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %203
  %211 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %212 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %211, i32 0, i32 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @get_orig_file_size(i32 %217)
  br label %220

219:                                              ; preds = %203, %195
  br label %220

220:                                              ; preds = %219, %210
  %221 = phi i32 [ %218, %210 ], [ -1, %219 ]
  %222 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %223 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %225 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %227, 1048576
  br i1 %228, label %229, label %234

229:                                              ; preds = %220
  %230 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %231 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  br label %235

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %229
  %236 = phi i64 [ %233, %229 ], [ 1048576, %234 ]
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %240 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %238, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %246 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %245, i32 0, i32 10
  %247 = load i64*, i64** %246, align 8
  %248 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %249 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %248, i32 0, i32 1
  %250 = call i32 @memcpy(i64* %247, i8* %249, i32 4)
  %251 = load %struct.kfs_file_info*, %struct.kfs_file_info** %13, align 8
  %252 = icmp ne %struct.kfs_file_info* %251, null
  br i1 %252, label %262, label %253

253:                                              ; preds = %235
  %254 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %255 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @memset(i32 %256, i32 0, i32 4)
  %258 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %259 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @memset(i32 %260, i32 0, i32 4)
  br label %278

262:                                              ; preds = %235
  %263 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %264 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %263, i32 0, i32 3
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.kfs_file_info*, %struct.kfs_file_info** %13, align 8
  %269 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %272 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %275 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @compute_start_end_hashes(i32 %267, i32 %270, i32 %273, i32 %276)
  br label %278

278:                                              ; preds = %262, %253
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %281 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %284 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %283, i32 0, i32 4
  store i32 %282, i32* %284, align 8
  %285 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %286 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %285, i32 0, i32 7
  %287 = load i64*, i64** %286, align 8
  %288 = load %struct.related_binlog*, %struct.related_binlog** %4, align 8
  %289 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %288, i32 0, i32 2
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = call i32 @memcpy(i64* %287, i8* %292, i32 %293)
  %295 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %296 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %295, i32 0, i32 7
  %297 = load i64*, i64** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  store i64 0, i64* %300, align 8
  %301 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %302 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %301, i32 0, i32 7
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = getelementptr inbounds i64, i64* %306, i64 1
  %308 = load i8*, i8** %10, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @memcpy(i64* %307, i8* %308, i32 %309)
  %311 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %312 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %311, i32 0, i32 7
  %313 = load i64*, i64** %312, align 8
  %314 = load i32, i32* %9, align 4
  %315 = add nsw i32 %314, 1
  %316 = load i32, i32* %11, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %313, i64 %318
  store i64 0, i64* %319, align 8
  %320 = load %struct.connection*, %struct.connection** %5, align 8
  %321 = call i32 @show_remote_ip(%struct.connection* %320)
  %322 = load %struct.connection*, %struct.connection** %5, align 8
  %323 = getelementptr inbounds %struct.connection, %struct.connection* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %326 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %329 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %328, i32 0, i32 7
  %330 = load i64*, i64** %329, align 8
  %331 = load i8*, i8** %10, align 8
  %332 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %333 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %336 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.repl_handshake*, %struct.repl_handshake** %15, align 8
  %339 = getelementptr inbounds %struct.repl_handshake, %struct.repl_handshake* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 %321, i32 %324, i32 %327, i64* %330, i8* %331, i32 %334, i32 %337, i32 %340)
  %342 = load %struct.connection*, %struct.connection** %5, align 8
  %343 = load i32, i32* %14, align 4
  %344 = call i32 @push_packet(%struct.connection* %342, i32 %343)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.repl_client_status* @get_client_by_handshake(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.repl_client_status*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @load_binlog_data(%struct.related_binlog*) #1

declare dso_local %struct.repl_handshake* @alloc_packet(i32) #1

declare dso_local i32 @get_orig_file_size(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @compute_start_end_hashes(i32, i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i64*, i8*, i32, i32, i32) #1

declare dso_local i32 @show_remote_ip(%struct.connection*) #1

declare dso_local i32 @push_packet(%struct.connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
