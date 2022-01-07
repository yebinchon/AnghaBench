; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.addrinfoW*, i32*, i32*, i32*, i32*, i64 }
%struct.addrinfoW = type { i32*, i32*, i32*, i64, i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_GETADDRINFO = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@WSAENOBUFS = common dso_local global i32 0, align 4
@UV__WORK_SLOW_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_getaddrinfo(i32* %0, %struct.TYPE_5__* %1, i64 %2, i8* %3, i8* %4, %struct.addrinfo* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.addrinfo* %5, %struct.addrinfo** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %6
  %30 = load i32, i32* @UV_EINVAL, align 4
  store i32 %30, i32* %7, align 4
  br label %260

31:                                               ; preds = %26, %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = load i32, i32* @UV_GETADDRINFO, align 4
  %34 = call i32 @UV_REQ_INIT(%struct.TYPE_5__* %32, i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %31
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 256
  %57 = call i64 @uv__idna_toascii(i8* %48, i8* %53, i8* %54, i8* %56)
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i64, i64* %20, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  br label %260

63:                                               ; preds = %47
  %64 = load i32, i32* @CP_UTF8, align 4
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %66 = call i32 @MultiByteToWideChar(i32 %64, i32 0, i8* %65, i32 -1, i32* null, i32 0)
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ALIGNED_SIZE(i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 (...) @GetLastError()
  store i32 %74, i32* %19, align 4
  br label %247

75:                                               ; preds = %63
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %76, i8** %11, align 8
  br label %77

77:                                               ; preds = %75, %31
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* @CP_UTF8, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @MultiByteToWideChar(i32 %81, i32 0, i8* %82, i32 -1, i32* null, i32 0)
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ALIGNED_SIZE(i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = call i32 (...) @GetLastError()
  store i32 %91, i32* %19, align 4
  br label %247

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %95 = icmp ne %struct.addrinfo* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @ALIGNED_SIZE(i32 48)
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i64 @uv__malloc(i32 %103)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %18, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @WSAENOBUFS, align 4
  store i32 %109, i32* %19, align 4
  br label %247

110:                                              ; preds = %98
  %111 = load i8*, i8** %18, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = load i8*, i8** %18, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  store i32* %119, i32** %121, align 8
  %122 = load i32, i32* @CP_UTF8, align 4
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = udiv i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call i32 @MultiByteToWideChar(i32 %122, i32 0, i8* %123, i32 -1, i32* %125, i32 %129)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = call i32 (...) @GetLastError()
  store i32 %133, i32* %19, align 4
  br label %247

134:                                              ; preds = %117
  %135 = load i32, i32* %15, align 4
  %136 = load i8*, i8** %18, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %18, align 8
  br label %142

139:                                              ; preds = %110
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i8*, i8** %12, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = load i8*, i8** %18, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  store i32* %147, i32** %149, align 8
  %150 = load i32, i32* @CP_UTF8, align 4
  %151 = load i8*, i8** %12, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = bitcast i8* %152 to i32*
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = udiv i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @MultiByteToWideChar(i32 %150, i32 0, i8* %151, i32 -1, i32* %153, i32 %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = call i32 (...) @GetLastError()
  store i32 %161, i32* %19, align 4
  br label %247

162:                                              ; preds = %145
  %163 = load i32, i32* %16, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %18, align 8
  br label %170

167:                                              ; preds = %142
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %172 = icmp ne %struct.addrinfo* %171, null
  br i1 %172, label %173, label %222

173:                                              ; preds = %170
  %174 = load i8*, i8** %18, align 8
  %175 = bitcast i8* %174 to %struct.addrinfoW*
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  store %struct.addrinfoW* %175, %struct.addrinfoW** %177, align 8
  %178 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %179 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load %struct.addrinfoW*, %struct.addrinfoW** %182, align 8
  %184 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %183, i32 0, i32 7
  store i32 %180, i32* %184, align 4
  %185 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %186 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  %190 = load %struct.addrinfoW*, %struct.addrinfoW** %189, align 8
  %191 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %190, i32 0, i32 6
  store i32 %187, i32* %191, align 8
  %192 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %193 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load %struct.addrinfoW*, %struct.addrinfoW** %196, align 8
  %198 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %197, i32 0, i32 5
  store i32 %194, i32* %198, align 4
  %199 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %200 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  %204 = load %struct.addrinfoW*, %struct.addrinfoW** %203, align 8
  %205 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %204, i32 0, i32 4
  store i32 %201, i32* %205, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 3
  %208 = load %struct.addrinfoW*, %struct.addrinfoW** %207, align 8
  %209 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  %212 = load %struct.addrinfoW*, %struct.addrinfoW** %211, align 8
  %213 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %212, i32 0, i32 2
  store i32* null, i32** %213, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load %struct.addrinfoW*, %struct.addrinfoW** %215, align 8
  %217 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %216, i32 0, i32 1
  store i32* null, i32** %217, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load %struct.addrinfoW*, %struct.addrinfoW** %219, align 8
  %221 = getelementptr inbounds %struct.addrinfoW, %struct.addrinfoW* %220, i32 0, i32 0
  store i32* null, i32** %221, align 8
  br label %225

222:                                              ; preds = %170
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  store %struct.addrinfoW* null, %struct.addrinfoW** %224, align 8
  br label %225

225:                                              ; preds = %222, %173
  %226 = load i32*, i32** %8, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %228 = call i32 @uv__req_register(i32* %226, %struct.TYPE_5__* %227)
  %229 = load i64, i64* %10, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load i32*, i32** %8, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32, i32* @UV__WORK_SLOW_IO, align 4
  %236 = call i32 @uv__work_submit(i32* %232, i32* %234, i32 %235, i32 (i32*)* @uv__getaddrinfo_work, i32 (i32*, i32)* @uv__getaddrinfo_done)
  store i32 0, i32* %7, align 4
  br label %260

237:                                              ; preds = %225
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  %240 = call i32 @uv__getaddrinfo_work(i32* %239)
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 2
  %243 = call i32 @uv__getaddrinfo_done(i32* %242, i32 0)
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  store i32 %246, i32* %7, align 4
  br label %260

247:                                              ; preds = %160, %132, %108, %90, %73
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %249 = icmp ne %struct.TYPE_5__* %248, null
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @uv__free(i32* %253)
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  store i32* null, i32** %256, align 8
  br label %257

257:                                              ; preds = %250, %247
  %258 = load i32, i32* %19, align 4
  %259 = call i32 @uv_translate_sys_error(i32 %258)
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %257, %237, %231, %60, %29
  %261 = load i32, i32* %7, align 4
  ret i32 %261
}

declare dso_local i32 @UV_REQ_INIT(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @uv__idna_toascii(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALIGNED_SIZE(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @uv__malloc(i32) #1

declare dso_local i32 @uv__req_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @uv__work_submit(i32*, i32*, i32, i32 (i32*)*, i32 (i32*, i32)*) #1

declare dso_local i32 @uv__getaddrinfo_work(i32*) #1

declare dso_local i32 @uv__getaddrinfo_done(i32*, i32) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
