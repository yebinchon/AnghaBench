; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_interpretAddr.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_interpretAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.ifaddrs = type { i8*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32 }
%struct.sockaddr = type { i64 }
%struct.ifaddrmsg = type { i64, i32, i32, i32 }
%struct.rtattr = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_PACKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.ifaddrs**, i32)* @interpretAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpretAddr(%struct.nlmsghdr* %0, %struct.ifaddrs** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.ifaddrs**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifaddrmsg*, align 8
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.rtattr*, align 8
  %15 = alloca %struct.ifaddrs*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [16 x i8], align 16
  %25 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  store %struct.ifaddrs** %1, %struct.ifaddrs*** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %27 = call i64 @NLMSG_DATA(%struct.nlmsghdr* %26)
  %28 = inttoptr i64 %27 to %struct.ifaddrmsg*
  store %struct.ifaddrmsg* %28, %struct.ifaddrmsg** %8, align 8
  %29 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %30 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ifaddrs**, %struct.ifaddrs*** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.ifaddrs* @findInterface(i32 %31, %struct.ifaddrs** %32, i32 %33)
  store %struct.ifaddrs* %34, %struct.ifaddrs** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %36 = call i64 @NLMSG_PAYLOAD(%struct.nlmsghdr* %35, i32 24)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %38 = call %struct.rtattr* @IFA_RTA(%struct.ifaddrmsg* %37)
  store %struct.rtattr* %38, %struct.rtattr** %14, align 8
  br label %39

39:                                               ; preds = %99, %3
  %40 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @RTA_OK(%struct.rtattr* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %39
  %45 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %46 = call i64 @RTA_PAYLOAD(%struct.rtattr* %45)
  store i64 %46, i64* %18, align 8
  %47 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %48 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AF_PACKET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %99

53:                                               ; preds = %44
  %54 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %55 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %97 [
    i32 131, label %57
    i32 128, label %57
    i32 130, label %82
    i32 129, label %91
  ]

57:                                               ; preds = %53, %53
  %58 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %59 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_INET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %65 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %74 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %18, align 8
  %77 = call i64 @calcAddrLen(i64 %75, i64 %76)
  %78 = call i64 @NLMSG_ALIGN(i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %72, %69, %63
  br label %98

82:                                               ; preds = %53
  %83 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %84 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i64 @calcAddrLen(i64 %85, i64 %86)
  %88 = call i64 @NLMSG_ALIGN(i64 %87)
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %11, align 8
  br label %98

91:                                               ; preds = %53
  %92 = load i64, i64* %18, align 8
  %93 = add i64 %92, 1
  %94 = call i64 @NLMSG_ALIGN(i64 %93)
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %98

97:                                               ; preds = %53
  br label %98

98:                                               ; preds = %97, %91, %82, %81
  br label %99

99:                                               ; preds = %98, %52
  %100 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %100, i64 %101)
  store %struct.rtattr* %102, %struct.rtattr** %14, align 8
  br label %39

103:                                              ; preds = %39
  %104 = load i64, i64* %10, align 8
  %105 = add i64 48, %104
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call %struct.ifaddrs* @uv__malloc(i32 %108)
  store %struct.ifaddrs* %109, %struct.ifaddrs** %15, align 8
  %110 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %111 = icmp eq %struct.ifaddrs* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %364

113:                                              ; preds = %103
  %114 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %115 = call i32 @memset(%struct.ifaddrs* %114, i32 0, i32 48)
  %116 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %117 = icmp ne %struct.ifaddrs* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %120 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i8* [ %121, %118 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %122 ]
  %125 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %126 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %128 = bitcast %struct.ifaddrs* %127 to i8*
  %129 = getelementptr inbounds i8, i8* %128, i64 48
  store i8* %129, i8** %16, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %17, align 8
  %133 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %134 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %137 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %139 = icmp ne %struct.ifaddrs* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %123
  %141 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %142 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %145 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %140, %123
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %150 = call i64 @NLMSG_PAYLOAD(%struct.nlmsghdr* %149, i32 24)
  store i64 %150, i64* %13, align 8
  %151 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %152 = call %struct.rtattr* @IFA_RTA(%struct.ifaddrmsg* %151)
  store %struct.rtattr* %152, %struct.rtattr** %14, align 8
  br label %153

153:                                              ; preds = %270, %148
  %154 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %155 = load i64, i64* %13, align 8
  %156 = call i64 @RTA_OK(%struct.rtattr* %154, i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %274

158:                                              ; preds = %153
  %159 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %160 = call i8* @RTA_DATA(%struct.rtattr* %159)
  store i8* %160, i8** %19, align 8
  %161 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %162 = call i64 @RTA_PAYLOAD(%struct.rtattr* %161)
  store i64 %162, i64* %20, align 8
  %163 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %164 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %268 [
    i32 131, label %166
    i32 130, label %166
    i32 128, label %166
    i32 129, label %257
  ]

166:                                              ; preds = %158, %158, %158
  %167 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %168 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %20, align 8
  %171 = call i64 @calcAddrLen(i64 %169, i64 %170)
  store i64 %171, i64* %21, align 8
  %172 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %173 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = bitcast i8* %175 to %struct.sockaddr*
  %177 = load i8*, i8** %19, align 8
  %178 = load i64, i64* %20, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @makeSockaddr(i64 %174, %struct.sockaddr* %176, i8* %177, i32 %179)
  %181 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %182 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AF_INET6, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %166
  %187 = load i8*, i8** %19, align 8
  %188 = bitcast i8* %187 to %struct.in6_addr*
  %189 = call i32 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %19, align 8
  %193 = bitcast i8* %192 to %struct.in6_addr*
  %194 = call i32 @IN6_IS_ADDR_MC_LINKLOCAL(%struct.in6_addr* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191, %186
  %197 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %198 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %17, align 8
  %201 = bitcast i8* %200 to %struct.sockaddr_in6*
  %202 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %196, %191
  br label %204

204:                                              ; preds = %203, %166
  %205 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %206 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 131
  br i1 %208, label %209, label %225

209:                                              ; preds = %204
  %210 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %211 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %210, i32 0, i32 2
  %212 = load %struct.sockaddr*, %struct.sockaddr** %211, align 8
  %213 = icmp ne %struct.sockaddr* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load i8*, i8** %17, align 8
  %216 = bitcast i8* %215 to %struct.sockaddr*
  %217 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %218 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %217, i32 0, i32 4
  store %struct.sockaddr* %216, %struct.sockaddr** %218, align 8
  br label %224

219:                                              ; preds = %209
  %220 = load i8*, i8** %17, align 8
  %221 = bitcast i8* %220 to %struct.sockaddr*
  %222 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %223 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %222, i32 0, i32 2
  store %struct.sockaddr* %221, %struct.sockaddr** %223, align 8
  br label %224

224:                                              ; preds = %219, %214
  br label %252

225:                                              ; preds = %204
  %226 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %227 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 128
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %232 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %231, i32 0, i32 2
  %233 = load %struct.sockaddr*, %struct.sockaddr** %232, align 8
  %234 = icmp ne %struct.sockaddr* %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %237 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %236, i32 0, i32 2
  %238 = load %struct.sockaddr*, %struct.sockaddr** %237, align 8
  %239 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %240 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %239, i32 0, i32 4
  store %struct.sockaddr* %238, %struct.sockaddr** %240, align 8
  br label %241

241:                                              ; preds = %235, %230
  %242 = load i8*, i8** %17, align 8
  %243 = bitcast i8* %242 to %struct.sockaddr*
  %244 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %245 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %244, i32 0, i32 2
  store %struct.sockaddr* %243, %struct.sockaddr** %245, align 8
  br label %251

246:                                              ; preds = %225
  %247 = load i8*, i8** %17, align 8
  %248 = bitcast i8* %247 to %struct.sockaddr*
  %249 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %250 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %249, i32 0, i32 3
  store %struct.sockaddr* %248, %struct.sockaddr** %250, align 8
  br label %251

251:                                              ; preds = %246, %241
  br label %252

252:                                              ; preds = %251, %224
  %253 = load i64, i64* %21, align 8
  %254 = call i64 @NLMSG_ALIGN(i64 %253)
  %255 = load i8*, i8** %17, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 %254
  store i8* %256, i8** %17, align 8
  br label %269

257:                                              ; preds = %158
  %258 = load i8*, i8** %16, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = load i64, i64* %20, align 8
  %261 = call i32 @strncpy(i8* %258, i8* %259, i64 %260)
  %262 = load i8*, i8** %16, align 8
  %263 = load i64, i64* %20, align 8
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8 0, i8* %264, align 1
  %265 = load i8*, i8** %16, align 8
  %266 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %267 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %266, i32 0, i32 0
  store i8* %265, i8** %267, align 8
  br label %269

268:                                              ; preds = %158
  br label %269

269:                                              ; preds = %268, %257, %252
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.rtattr*, %struct.rtattr** %14, align 8
  %272 = load i64, i64* %13, align 8
  %273 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %271, i64 %272)
  store %struct.rtattr* %273, %struct.rtattr** %14, align 8
  br label %153

274:                                              ; preds = %153
  %275 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %276 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %275, i32 0, i32 2
  %277 = load %struct.sockaddr*, %struct.sockaddr** %276, align 8
  %278 = icmp ne %struct.sockaddr* %277, null
  br i1 %278, label %279, label %360

279:                                              ; preds = %274
  %280 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %281 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %280, i32 0, i32 2
  %282 = load %struct.sockaddr*, %struct.sockaddr** %281, align 8
  %283 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @AF_INET, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %279
  %288 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %289 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %288, i32 0, i32 2
  %290 = load %struct.sockaddr*, %struct.sockaddr** %289, align 8
  %291 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @AF_INET6, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %360

295:                                              ; preds = %287, %279
  %296 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %297 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %296, i32 0, i32 2
  %298 = load %struct.sockaddr*, %struct.sockaddr** %297, align 8
  %299 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @AF_INET, align 8
  %302 = icmp eq i64 %300, %301
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 32, i32 128
  store i32 %304, i32* %22, align 4
  %305 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %306 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %22, align 4
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %295
  %311 = load i32, i32* %22, align 4
  br label %316

312:                                              ; preds = %295
  %313 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %314 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  br label %316

316:                                              ; preds = %312, %310
  %317 = phi i32 [ %311, %310 ], [ %315, %312 ]
  store i32 %317, i32* %23, align 4
  %318 = bitcast [16 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %318, i8 0, i64 16, i1 false)
  store i32 0, i32* %25, align 4
  br label %319

319:                                              ; preds = %328, %316
  %320 = load i32, i32* %25, align 4
  %321 = load i32, i32* %23, align 4
  %322 = udiv i32 %321, 8
  %323 = icmp ult i32 %320, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load i32, i32* %25, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %326
  store i8 -1, i8* %327, align 1
  br label %328

328:                                              ; preds = %324
  %329 = load i32, i32* %25, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %25, align 4
  br label %319

331:                                              ; preds = %319
  %332 = load i32, i32* %23, align 4
  %333 = urem i32 %332, 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %331
  %336 = load i32, i32* %23, align 4
  %337 = urem i32 %336, 8
  %338 = sub i32 8, %337
  %339 = shl i32 255, %338
  %340 = trunc i32 %339 to i8
  %341 = load i32, i32* %25, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %342
  store i8 %340, i8* %343, align 1
  br label %344

344:                                              ; preds = %335, %331
  %345 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %346 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %345, i32 0, i32 2
  %347 = load %struct.sockaddr*, %struct.sockaddr** %346, align 8
  %348 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i8*, i8** %17, align 8
  %351 = bitcast i8* %350 to %struct.sockaddr*
  %352 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %353 = load i32, i32* %22, align 4
  %354 = udiv i32 %353, 8
  %355 = call i32 @makeSockaddr(i64 %349, %struct.sockaddr* %351, i8* %352, i32 %354)
  %356 = load i8*, i8** %17, align 8
  %357 = bitcast i8* %356 to %struct.sockaddr*
  %358 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %359 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %358, i32 0, i32 1
  store %struct.sockaddr* %357, %struct.sockaddr** %359, align 8
  br label %360

360:                                              ; preds = %344, %287, %274
  %361 = load %struct.ifaddrs**, %struct.ifaddrs*** %6, align 8
  %362 = load %struct.ifaddrs*, %struct.ifaddrs** %15, align 8
  %363 = call i32 @addToEnd(%struct.ifaddrs** %361, %struct.ifaddrs* %362)
  store i32 0, i32* %4, align 4
  br label %364

364:                                              ; preds = %360, %112
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local i64 @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.ifaddrs* @findInterface(i32, %struct.ifaddrs**, i32) #1

declare dso_local i64 @NLMSG_PAYLOAD(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.rtattr* @IFA_RTA(%struct.ifaddrmsg*) #1

declare dso_local i64 @RTA_OK(%struct.rtattr*, i64) #1

declare dso_local i64 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i64 @calcAddrLen(i64, i64) #1

declare dso_local %struct.rtattr* @RTA_NEXT(%struct.rtattr*, i64) #1

declare dso_local %struct.ifaddrs* @uv__malloc(i32) #1

declare dso_local i32 @memset(%struct.ifaddrs*, i32, i32) #1

declare dso_local i8* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @makeSockaddr(i64, %struct.sockaddr*, i8*, i32) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @IN6_IS_ADDR_MC_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addToEnd(%struct.ifaddrs**, %struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
