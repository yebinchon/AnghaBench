; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_queue_recv.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_queue_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32 (i32, i32*, i32, i8**, i8**, %struct.sockaddr*, i32*, %struct.TYPE_19__*, i32*)*, i32 (i32, i32*, i32, i8**, i8**, %struct.TYPE_19__*, i32*)*, i32, i32, %struct.TYPE_19__, %struct.TYPE_25__, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_25__*, i32*, i32)*, i32 (i32*, i32, %struct.TYPE_25__*)*, %struct.TYPE_23__ }
%struct.sockaddr = type opaque
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_25__ = type { i8*, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.sockaddr.0 = type { i32 }

@UV_HANDLE_READING = common dso_local global i32 0, align 4
@UV_HANDLE_READ_PENDING = common dso_local global i32 0, align 4
@uv_active_udp_streams_threshold = common dso_local global i64 0, align 8
@UV_HANDLE_ZERO_READ = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4
@uv_zero_ = common dso_local global i64 0, align 8
@MSG_PEEK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*)* @uv_udp_queue_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_udp_queue_recv(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UV_HANDLE_READING, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 10
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %5, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = call i32 @memset(%struct.TYPE_19__* %31, i32 0, i32 8)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @uv_active_udp_streams_threshold, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %171

38:                                               ; preds = %2
  %39 = load i32, i32* @UV_HANDLE_ZERO_READ, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 7
  %47 = call { i8*, i64 } @uv_buf_init(i32* null, i32 0)
  %48 = bitcast %struct.TYPE_25__* %10 to { i8*, i64 }*
  %49 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %48, i32 0, i32 0
  %50 = extractvalue { i8*, i64 } %47, 0
  store i8* %50, i8** %49, align 8
  %51 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %48, i32 0, i32 1
  %52 = extractvalue { i8*, i64 } %47, 1
  store i64 %52, i64* %51, align 8
  %53 = bitcast %struct.TYPE_25__* %46 to i8*
  %54 = bitcast %struct.TYPE_25__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 9
  %57 = load i32 (i32*, i32, %struct.TYPE_25__*)*, i32 (i32*, i32, %struct.TYPE_25__*)** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = bitcast %struct.TYPE_22__* %58 to i32*
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 7
  %62 = call i32 %57(i32* %59, i32 65536, %struct.TYPE_25__* %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %38
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68, %38
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 8
  %77 = load i32 (%struct.TYPE_22__*, i32, %struct.TYPE_25__*, i32*, i32)*, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_25__*, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = load i32, i32* @UV_ENOBUFS, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 7
  %82 = call i32 %77(%struct.TYPE_22__* %78, i32 %79, %struct.TYPE_25__* %81, i32* null, i32 0)
  br label %247

83:                                               ; preds = %68
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 7
  %93 = bitcast %struct.TYPE_25__* %6 to i8*
  %94 = bitcast %struct.TYPE_25__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 6
  %97 = call i32 @memset(%struct.TYPE_19__* %96, i32 0, i32 8)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  store i32 8, i32* %99, align 4
  store i8* null, i8** %8, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = load i32 (i32, i32*, i32, i8**, i8**, %struct.sockaddr*, i32*, %struct.TYPE_19__*, i32*)*, i32 (i32, i32*, i32, i8**, i8**, %struct.sockaddr*, i32*, %struct.TYPE_19__*, i32*)** %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = bitcast %struct.TYPE_25__* %6 to i32*
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 6
  %109 = bitcast %struct.TYPE_19__* %108 to %struct.sockaddr.0*
  %110 = bitcast %struct.sockaddr.0* %109 to %struct.sockaddr*
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = call i32 %102(i32 %105, i32* %106, i32 1, i8** %7, i8** %8, %struct.sockaddr* %110, i32* %112, %struct.TYPE_19__* %116, i32* null)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i64 @UV_SUCCEEDED_WITHOUT_IOCP(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %83
  %124 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  store i8* %129, i8** %134, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = call i32 @uv_insert_pending_req(%struct.TYPE_24__* %139, %struct.TYPE_23__* %140)
  br label %170

142:                                              ; preds = %83
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i64 @UV_SUCCEEDED_WITH_IOCP(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %169

158:                                              ; preds = %142
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = call i32 (...) @WSAGetLastError()
  %161 = call i32 @SET_REQ_ERROR(%struct.TYPE_23__* %159, i32 %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = call i32 @uv_insert_pending_req(%struct.TYPE_24__* %162, %struct.TYPE_23__* %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %158, %148
  br label %170

170:                                              ; preds = %169, %123
  br label %247

171:                                              ; preds = %2
  %172 = load i32, i32* @UV_HANDLE_ZERO_READ, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i64, i64* @uv_zero_, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  store i8* %178, i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i8*, i8** @MSG_PEEK, align 8
  store i8* %181, i8** %8, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 3
  %184 = load i32 (i32, i32*, i32, i8**, i8**, %struct.TYPE_19__*, i32*)*, i32 (i32, i32*, i32, i8**, i8**, %struct.TYPE_19__*, i32*)** %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = bitcast %struct.TYPE_25__* %6 to i32*
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = call i32 %184(i32 %187, i32* %188, i32 1, i8** %7, i8** %8, %struct.TYPE_19__* %192, i32* null)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i64 @UV_SUCCEEDED_WITHOUT_IOCP(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %171
  %200 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  store i8* %205, i8** %210, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = call i32 @uv_insert_pending_req(%struct.TYPE_24__* %215, %struct.TYPE_23__* %216)
  br label %246

218:                                              ; preds = %171
  %219 = load i32, i32* %9, align 4
  %220 = icmp eq i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i64 @UV_SUCCEEDED_WITH_IOCP(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  br label %245

234:                                              ; preds = %218
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %236 = call i32 (...) @WSAGetLastError()
  %237 = call i32 @SET_REQ_ERROR(%struct.TYPE_23__* %235, i32 %236)
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %240 = call i32 @uv_insert_pending_req(%struct.TYPE_24__* %238, %struct.TYPE_23__* %239)
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %234, %224
  br label %246

246:                                              ; preds = %245, %199
  br label %247

247:                                              ; preds = %74, %246, %170
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local { i8*, i64 } @uv_buf_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @UV_SUCCEEDED_WITHOUT_IOCP(i32) #1

declare dso_local i32 @uv_insert_pending_req(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i64 @UV_SUCCEEDED_WITH_IOCP(i32) #1

declare dso_local i32 @SET_REQ_ERROR(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
