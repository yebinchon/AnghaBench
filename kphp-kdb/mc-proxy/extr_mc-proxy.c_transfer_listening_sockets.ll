; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_transfer_listening_sockets.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_transfer_listening_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32* }
%struct.mc_config = type { i32, %struct.mc_cluster* }
%struct.mc_cluster = type { i32, i64, i32, i32, i32, %struct.connection*, i32 }
%struct.memcache_server_functions = type { %struct.mc_cluster* }

@ct_memcache_server = common dso_local global i32 0, align 4
@Connections = common dso_local global %struct.connection* null, align 8
@max_connection = common dso_local global i32 0, align 4
@ct_inbound = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"transferring inbound connection #%d (port %d) from old cluster %d to new cluster %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"closing inbound connection #%d (port %d) belonging to old cluster %d, no new cluster\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"closing unneeded listening connection #%d for port %d belonging to old cluster %d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transfer_listening_sockets(%struct.mc_config* %0, %struct.mc_config* %1) #0 {
  %3 = alloca %struct.mc_config*, align 8
  %4 = alloca %struct.mc_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mc_cluster*, align 8
  %9 = alloca %struct.mc_cluster*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca %struct.mc_cluster*, align 8
  %12 = alloca %struct.mc_cluster*, align 8
  %13 = alloca %struct.mc_cluster*, align 8
  store %struct.mc_config* %0, %struct.mc_config** %3, align 8
  store %struct.mc_config* %1, %struct.mc_config** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %102, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %17 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %105

20:                                               ; preds = %14
  %21 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %22 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %21, i32 0, i32 1
  %23 = load %struct.mc_cluster*, %struct.mc_cluster** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %23, i64 %25
  store %struct.mc_cluster* %26, %struct.mc_cluster** %8, align 8
  %27 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %28 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mc_config*, %struct.mc_config** %4, align 8
  %35 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.mc_config*, %struct.mc_config** %4, align 8
  %41 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %40, i32 0, i32 1
  %42 = load %struct.mc_cluster*, %struct.mc_cluster** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %42, i64 %44
  store %struct.mc_cluster* %45, %struct.mc_cluster** %9, align 8
  %46 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %47 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %50 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %32
  %54 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %55 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %53, %32
  %60 = phi i1 [ false, %32 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %64 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %67 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %69 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %68, i32 0, i32 5
  %70 = load %struct.connection*, %struct.connection** %69, align 8
  %71 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %72 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %71, i32 0, i32 5
  store %struct.connection* %70, %struct.connection** %72, align 8
  %73 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %74 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 8
  %75 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %76 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %75, i32 0, i32 5
  store %struct.connection* null, %struct.connection** %76, align 8
  %77 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %78 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %77, i32 0, i32 6
  %79 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %80 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %79, i32 0, i32 5
  %81 = load %struct.connection*, %struct.connection** %80, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 2
  store i32* %78, i32** %82, align 8
  br label %101

83:                                               ; preds = %20
  %84 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %85 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %88 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %87, i32 0, i32 6
  %89 = call i64 @init_listening_connection(i32 %86, i32* @ct_memcache_server, i32* %88)
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.connection*, %struct.connection** @Connections, align 8
  %94 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %95 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %93, i64 %97
  %99 = load %struct.mc_cluster*, %struct.mc_cluster** %8, align 8
  %100 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %99, i32 0, i32 5
  store %struct.connection* %98, %struct.connection** %100, align 8
  br label %101

101:                                              ; preds = %83, %59
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %14

105:                                              ; preds = %14
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %212, %105
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @max_connection, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %215

110:                                              ; preds = %106
  %111 = load %struct.connection*, %struct.connection** @Connections, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %111, i64 %113
  store %struct.connection* %114, %struct.connection** %10, align 8
  %115 = load %struct.connection*, %struct.connection** %10, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ct_inbound, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %110
  %121 = load %struct.connection*, %struct.connection** %10, align 8
  %122 = getelementptr inbounds %struct.connection, %struct.connection* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %110
  br label %212

127:                                              ; preds = %120
  %128 = load %struct.connection*, %struct.connection** %10, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = bitcast i32* %130 to %struct.memcache_server_functions*
  %132 = getelementptr inbounds %struct.memcache_server_functions, %struct.memcache_server_functions* %131, i32 0, i32 0
  %133 = load %struct.mc_cluster*, %struct.mc_cluster** %132, align 8
  store %struct.mc_cluster* %133, %struct.mc_cluster** %11, align 8
  %134 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %135 = icmp ne %struct.mc_cluster* %134, null
  br i1 %135, label %136, label %143

136:                                              ; preds = %127
  %137 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %138 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %137, i32 0, i32 6
  %139 = load %struct.connection*, %struct.connection** %10, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %138, %141
  br label %143

143:                                              ; preds = %136, %127
  %144 = phi i1 [ false, %127 ], [ %142, %136 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %148 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %6, align 4
  %150 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %151 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %5, align 4
  %153 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %154 = load %struct.mc_config*, %struct.mc_config** %4, align 8
  %155 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %154, i32 0, i32 1
  %156 = load %struct.mc_cluster*, %struct.mc_cluster** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %156, i64 %158
  %160 = icmp eq %struct.mc_cluster* %153, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %143
  %166 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %167 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %166, i32 0, i32 1
  %168 = load %struct.mc_cluster*, %struct.mc_cluster** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %168, i64 %170
  store %struct.mc_cluster* %171, %struct.mc_cluster** %12, align 8
  %172 = load %struct.mc_cluster*, %struct.mc_cluster** %12, align 8
  %173 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %165
  %178 = load %struct.mc_cluster*, %struct.mc_cluster** %12, align 8
  %179 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %180, %181
  br label %183

183:                                              ; preds = %177, %165
  %184 = phi i1 [ false, %165 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %189 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 (i32, i8*, i32, i64, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %187, i64 %190, i32 %191, i32 %192)
  %194 = load %struct.mc_cluster*, %struct.mc_cluster** %12, align 8
  %195 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %194, i32 0, i32 6
  %196 = load %struct.connection*, %struct.connection** %10, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 2
  store i32* %195, i32** %197, align 8
  br label %211

198:                                              ; preds = %143
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.mc_cluster*, %struct.mc_cluster** %11, align 8
  %201 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = call i32 (i32, i8*, i32, i64, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %199, i64 %202, i32 %203)
  %205 = load %struct.connection*, %struct.connection** %10, align 8
  %206 = call i32 @force_clear_connection(%struct.connection* %205)
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @epoll_close(i32 %207)
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @close(i32 %209)
  br label %211

211:                                              ; preds = %198, %183
  br label %212

212:                                              ; preds = %211, %126
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %106

215:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %281, %215
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.mc_config*, %struct.mc_config** %4, align 8
  %219 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %284

222:                                              ; preds = %216
  %223 = load %struct.mc_config*, %struct.mc_config** %4, align 8
  %224 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %223, i32 0, i32 1
  %225 = load %struct.mc_cluster*, %struct.mc_cluster** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %225, i64 %227
  store %struct.mc_cluster* %228, %struct.mc_cluster** %13, align 8
  %229 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %230 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %265

233:                                              ; preds = %222
  %234 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %235 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp sge i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %241 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %245 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %249 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, i32, i64, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %243, i64 %246, i32 %247, i32 %250)
  %252 = load %struct.connection*, %struct.connection** @Connections, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.connection, %struct.connection* %252, i64 %254
  %256 = call i32 @force_clear_connection(%struct.connection* %255)
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @epoll_close(i32 %257)
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @close(i32 %259)
  %261 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %262 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %261, i32 0, i32 2
  store i32 -1, i32* %262, align 8
  %263 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %264 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %263, i32 0, i32 5
  store %struct.connection* null, %struct.connection** %264, align 8
  br label %280

265:                                              ; preds = %222
  %266 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %267 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.mc_cluster*, %struct.mc_cluster** %13, align 8
  %272 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %271, i32 0, i32 5
  %273 = load %struct.connection*, %struct.connection** %272, align 8
  %274 = icmp ne %struct.connection* %273, null
  %275 = xor i1 %274, true
  br label %276

276:                                              ; preds = %270, %265
  %277 = phi i1 [ false, %265 ], [ %275, %270 ]
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  br label %280

280:                                              ; preds = %276, %233
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %216

284:                                              ; preds = %216
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @init_listening_connection(i32, i32*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @force_clear_connection(%struct.connection*) #1

declare dso_local i32 @epoll_close(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
