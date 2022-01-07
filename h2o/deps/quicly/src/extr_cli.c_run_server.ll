; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_run_server.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 (%struct.TYPE_39__*)* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.timeval = type { i64, i64 }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr* }
%struct.iovec = type { i32*, i32 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_29__ }
%struct.TYPE_34__ = type { %struct.TYPE_35__, %struct.TYPE_37__ }
%struct.TYPE_35__ = type { %struct.TYPE_38__, %struct.TYPE_32__ }
%struct.TYPE_38__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_29__ = type { i32, i32 }

@SIGINT = common dso_local global i32 0, align 4
@on_signal = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_REUSEADDR) failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bind(2) failed\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@num_conns = common dso_local global i64 0, align 8
@conns = common dso_local global i32** null, align 8
@ctx = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@QUICLY_PROTOCOL_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"sendmsg failed\00", align 1
@QUICLY_MAX_CID_LEN_V1 = common dso_local global i64 0, align 8
@address_token_aead = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@enforce_retry = common dso_local global i64 0, align 8
@next_cid = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32)* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_server(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4096 x i32], align 16
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca %struct.sockaddr, align 4
  %18 = alloca %struct.iovec, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_36__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca [8 x i32], align 16
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load i32, i32* @on_signal, align 4
  %35 = call i32 @signal(i32 %33, i32 %34)
  %36 = load i32, i32* @SIGHUP, align 4
  %37 = load i32, i32* @on_signal, align 4
  %38 = call i32 @signal(i32 %36, i32 %37)
  %39 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SOCK_DGRAM, align 4
  %43 = load i32, i32* @IPPROTO_UDP, align 4
  %44 = call i32 @socket(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %473

48:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SOL_SOCKET, align 4
  %51 = load i32, i32* @SO_REUSEADDR, align 4
  %52 = call i64 @setsockopt(i32 %49, i32 %50, i32 %51, i32* %7, i32 4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %473

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @bind(i32 %57, %struct.sockaddr* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %473

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %472
  br label %66

66:                                               ; preds = %128, %65
  %67 = load i64, i64* @INT64_MAX, align 8
  store i64 %67, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %68

68:                                               ; preds = %84, %66
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @num_conns, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32**, i32*** @conns, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @quicly_get_first_timeout(i32* %76)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i64, i64* %13, align 8
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %81, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %12, align 8
  br label %68

87:                                               ; preds = %68
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @INT64_MAX, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @ctx, i32 0, i32 0), align 8
  %94 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %93, i32 0, i32 0
  %95 = load i64 (%struct.TYPE_39__*)*, i64 (%struct.TYPE_39__*)** %94, align 8
  %96 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @ctx, i32 0, i32 0), align 8
  %97 = call i64 %95(%struct.TYPE_39__* %96)
  %98 = sub nsw i64 %92, %97
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load i64, i64* %14, align 8
  %103 = sdiv i64 %102, 1000
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  %105 = load i64, i64* %14, align 8
  %106 = srem i64 %105, 1000
  %107 = mul nsw i64 %106, 1000
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  br label %112

109:                                              ; preds = %91
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %101
  store %struct.timeval* %10, %struct.timeval** %9, align 8
  br label %114

113:                                              ; preds = %87
  store %struct.timeval* null, %struct.timeval** %9, align 8
  br label %114

114:                                              ; preds = %113, %112
  %115 = call i32 @FD_ZERO(i32* %8)
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @FD_SET(i32 %116, i32* %8)
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  %121 = load %struct.timeval*, %struct.timeval** %9, align 8
  %122 = call i32 @select(i32 %120, i32* %8, i32* null, i32* null, %struct.timeval* %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, i64* @errno, align 8
  %126 = load i64, i64* @EINTR, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %124, %118
  %129 = phi i1 [ false, %118 ], [ %127, %124 ]
  br i1 %129, label %66, label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %6, align 4
  %132 = call i64 @FD_ISSET(i32 %131, i32* %8)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %419

134:                                              ; preds = %130
  %135 = call i32 @memset(%struct.msghdr* %16, i32 0, i32 24)
  %136 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  store %struct.sockaddr* %17, %struct.sockaddr** %136, align 8
  %137 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  store i32 4, i32* %137, align 8
  %138 = getelementptr inbounds [4096 x i32], [4096 x i32]* %15, i64 0, i64 0
  %139 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i32* %138, i32** %139, align 8
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  store i32 16384, i32* %140, align 8
  %141 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  store %struct.iovec* %18, %struct.iovec** %141, align 8
  %142 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %147, %134
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @recvmsg(i32 %144, %struct.msghdr* %16, i32 0)
  store i64 %145, i64* %19, align 8
  %146 = icmp ule i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %143

148:                                              ; preds = %143
  %149 = load i32, i32* @verbosity, align 4
  %150 = icmp sge i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = getelementptr inbounds [4096 x i32], [4096 x i32]* %15, i64 0, i64 0
  %153 = load i64, i64* %19, align 8
  %154 = call i32 @hexdump(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %152, i64 %153)
  br label %155

155:                                              ; preds = %151, %148
  store i64 0, i64* %20, align 8
  br label %156

156:                                              ; preds = %414, %155
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* %19, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %418

160:                                              ; preds = %156
  %161 = getelementptr inbounds [4096 x i32], [4096 x i32]* %15, i64 0, i64 0
  %162 = load i64, i64* %20, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* %20, align 8
  %166 = sub i64 %164, %165
  %167 = call i64 @quicly_decode_packet(%struct.TYPE_28__* @ctx, %struct.TYPE_36__* %21, i32* %163, i64 %166)
  store i64 %167, i64* %22, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* @SIZE_MAX, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %418

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @QUICLY_PACKET_IS_LONG_HEADER(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %227

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @QUICLY_PROTOCOL_VERSION, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %210

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = bitcast %struct.TYPE_38__* %190 to { i64, i32 }*
  %194 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %193, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32* @quicly_send_version_negotiation(%struct.TYPE_28__* @ctx, %struct.sockaddr* %17, i64 %192, i32* null, i64 %195, i32 %197)
  store i32* %198, i32** %23, align 8
  %199 = load i32*, i32** %23, align 8
  %200 = icmp ne i32* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* %6, align 4
  %204 = load i32*, i32** %23, align 8
  %205 = call i32 @send_one(i32 %203, i32* %204)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %209

207:                                              ; preds = %185
  %208 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %185
  br label %418

210:                                              ; preds = %180
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @QUICLY_MAX_CID_LEN_V1, align 8
  %217 = icmp sgt i64 %215, %216
  br i1 %217, label %225, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @QUICLY_MAX_CID_LEN_V1, align 8
  %224 = icmp sgt i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %218, %210
  br label %418

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %172
  store i32* null, i32** %24, align 8
  store i64 0, i64* %25, align 8
  br label %228

228:                                              ; preds = %245, %227
  %229 = load i64, i64* %25, align 8
  %230 = load i64, i64* @num_conns, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %228
  %233 = load i32**, i32*** @conns, align 8
  %234 = load i64, i64* %25, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = call i64 @quicly_is_destination(i32* %236, i32* null, %struct.sockaddr* %17, %struct.TYPE_36__* %21)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %232
  %240 = load i32**, i32*** @conns, align 8
  %241 = load i64, i64* %25, align 8
  %242 = getelementptr inbounds i32*, i32** %240, i64 %241
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %24, align 8
  br label %248

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %25, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %25, align 8
  br label %228

248:                                              ; preds = %239, %228
  %249 = load i32*, i32** %24, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32*, i32** %24, align 8
  %253 = call i32 @quicly_receive(i32* %252, i32* null, %struct.sockaddr* %17, %struct.TYPE_36__* %21)
  br label %414

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @QUICLY_PACKET_IS_INITIAL(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %375

262:                                              ; preds = %254
  store i32* null, i32** %26, align 8
  %263 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %293

267:                                              ; preds = %262
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @address_token_aead, i32 0, i32 1), align 4
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i64 @quicly_decrypt_address_token(i32 %268, i32* %27, i32 %271, i32 %274, i32 0)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = bitcast %struct.TYPE_38__* %282 to { i64, i32 }*
  %286 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %285, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @validate_token(%struct.sockaddr* %17, i64 %284, i64 %287, i32 %289, i32* %27)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %277
  store i32* %27, i32** %26, align 8
  br label %293

293:                                              ; preds = %292, %277, %267, %262
  %294 = load i64, i64* @enforce_retry, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %341

296:                                              ; preds = %293
  %297 = load i32*, i32** %26, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %341

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp sge i64 %304, 8
  br i1 %305, label %306, label %341

306:                                              ; preds = %299
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %308 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @memcpy(i32* %307, i32 %312, i32 32)
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %315 = load i32, i32* %314, align 16
  %316 = xor i32 %315, 255
  store i32 %316, i32* %314, align 16
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @address_token_aead, i32 0, i32 0), align 4
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 1
  %320 = getelementptr inbounds [8 x i32], [8 x i32]* %28, i64 0, i64 0
  %321 = call i32 @ptls_iovec_init(i32* %320, i32 32)
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %323, i32 0, i32 0
  %325 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %326 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32* @quicly_send_retry(%struct.TYPE_28__* @ctx, i32 %317, %struct.sockaddr* %17, i64 %328, i32* null, i32 %321, %struct.TYPE_38__* byval(%struct.TYPE_38__) align 8 %324, i32 %325, i32 %326)
  store i32* %329, i32** %29, align 8
  %330 = load i32*, i32** %29, align 8
  %331 = icmp ne i32* %330, null
  %332 = zext i1 %331 to i32
  %333 = call i32 @assert(i32 %332)
  %334 = load i32, i32* %6, align 4
  %335 = load i32*, i32** %29, align 8
  %336 = call i32 @send_one(i32 %334, i32* %335)
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %340

338:                                              ; preds = %306
  %339 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %340

340:                                              ; preds = %338, %306
  br label %418

341:                                              ; preds = %299, %296, %293
  %342 = load i32*, i32** %26, align 8
  %343 = call i32 @quicly_accept(i32** %24, %struct.TYPE_28__* @ctx, i32* null, %struct.sockaddr* %17, %struct.TYPE_36__* %21, i32* %342, %struct.TYPE_30__* @next_cid, i32* null)
  store i32 %343, i32* %30, align 4
  %344 = load i32, i32* %30, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %368

346:                                              ; preds = %341
  %347 = load i32*, i32** %24, align 8
  %348 = icmp ne i32* %347, null
  %349 = zext i1 %348 to i32
  %350 = call i32 @assert(i32 %349)
  %351 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @next_cid, i32 0, i32 0), align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @next_cid, i32 0, i32 0), align 4
  %353 = load i32**, i32*** @conns, align 8
  %354 = load i64, i64* @num_conns, align 8
  %355 = add i64 %354, 1
  %356 = mul i64 8, %355
  %357 = trunc i64 %356 to i32
  %358 = call i32** @realloc(i32** %353, i32 %357)
  store i32** %358, i32*** @conns, align 8
  %359 = load i32**, i32*** @conns, align 8
  %360 = icmp ne i32** %359, null
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load i32*, i32** %24, align 8
  %364 = load i32**, i32*** @conns, align 8
  %365 = load i64, i64* @num_conns, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* @num_conns, align 8
  %367 = getelementptr inbounds i32*, i32** %364, i64 %365
  store i32* %363, i32** %367, align 8
  br label %373

368:                                              ; preds = %341
  %369 = load i32*, i32** %24, align 8
  %370 = icmp eq i32* %369, null
  %371 = zext i1 %370 to i32
  %372 = call i32 @assert(i32 %371)
  br label %373

373:                                              ; preds = %368, %346
  br label %374

374:                                              ; preds = %373
  br label %413

375:                                              ; preds = %254
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = call i64 @QUICLY_PACKET_IS_LONG_HEADER(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %412, label %383

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %411

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %411

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = call i32* @quicly_send_stateless_reset(%struct.TYPE_28__* @ctx, %struct.sockaddr* %17, i32* null, i32 %402)
  store i32* %403, i32** %31, align 8
  %404 = load i32, i32* %6, align 4
  %405 = load i32*, i32** %31, align 8
  %406 = call i32 @send_one(i32 %404, i32* %405)
  %407 = icmp eq i32 %406, -1
  br i1 %407, label %408, label %410

408:                                              ; preds = %397
  %409 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %397
  br label %411

411:                                              ; preds = %410, %390, %383
  br label %412

412:                                              ; preds = %411, %375
  br label %413

413:                                              ; preds = %412, %374
  br label %414

414:                                              ; preds = %413, %251
  %415 = load i64, i64* %22, align 8
  %416 = load i64, i64* %20, align 8
  %417 = add i64 %416, %415
  store i64 %417, i64* %20, align 8
  br label %156

418:                                              ; preds = %340, %225, %209, %171, %156
  br label %419

419:                                              ; preds = %418, %130
  store i64 0, i64* %32, align 8
  br label %420

420:                                              ; preds = %469, %419
  %421 = load i64, i64* %32, align 8
  %422 = load i64, i64* @num_conns, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %472

424:                                              ; preds = %420
  %425 = load i32**, i32*** @conns, align 8
  %426 = load i64, i64* %32, align 8
  %427 = getelementptr inbounds i32*, i32** %425, i64 %426
  %428 = load i32*, i32** %427, align 8
  %429 = call i64 @quicly_get_first_timeout(i32* %428)
  %430 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @ctx, i32 0, i32 0), align 8
  %431 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %430, i32 0, i32 0
  %432 = load i64 (%struct.TYPE_39__*)*, i64 (%struct.TYPE_39__*)** %431, align 8
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @ctx, i32 0, i32 0), align 8
  %434 = call i64 %432(%struct.TYPE_39__* %433)
  %435 = icmp sle i64 %429, %434
  br i1 %435, label %436, label %468

436:                                              ; preds = %424
  %437 = load i32, i32* %6, align 4
  %438 = load i32**, i32*** @conns, align 8
  %439 = load i64, i64* %32, align 8
  %440 = getelementptr inbounds i32*, i32** %438, i64 %439
  %441 = load i32*, i32** %440, align 8
  %442 = call i64 @send_pending(i32 %437, i32* %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %467

444:                                              ; preds = %436
  %445 = load i32**, i32*** @conns, align 8
  %446 = load i64, i64* %32, align 8
  %447 = getelementptr inbounds i32*, i32** %445, i64 %446
  %448 = load i32*, i32** %447, align 8
  %449 = call i32 @quicly_free(i32* %448)
  %450 = load i32**, i32*** @conns, align 8
  %451 = load i64, i64* %32, align 8
  %452 = getelementptr inbounds i32*, i32** %450, i64 %451
  %453 = load i32**, i32*** @conns, align 8
  %454 = load i64, i64* %32, align 8
  %455 = getelementptr inbounds i32*, i32** %453, i64 %454
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  %457 = load i64, i64* @num_conns, align 8
  %458 = load i64, i64* %32, align 8
  %459 = sub i64 %457, %458
  %460 = sub i64 %459, 1
  %461 = mul i64 %460, 8
  %462 = call i32 @memmove(i32** %452, i32** %456, i64 %461)
  %463 = load i64, i64* %32, align 8
  %464 = add i64 %463, -1
  store i64 %464, i64* %32, align 8
  %465 = load i64, i64* @num_conns, align 8
  %466 = add i64 %465, -1
  store i64 %466, i64* @num_conns, align 8
  br label %467

467:                                              ; preds = %444, %436
  br label %468

468:                                              ; preds = %467, %424
  br label %469

469:                                              ; preds = %468
  %470 = load i64, i64* %32, align 8
  %471 = add i64 %470, 1
  store i64 %471, i64* %32, align 8
  br label %420

472:                                              ; preds = %420
  br label %65

473:                                              ; preds = %62, %54, %46
  %474 = load i32, i32* %3, align 4
  ret i32 %474
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @quicly_get_first_timeout(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @hexdump(i8*, i32*, i64) #1

declare dso_local i64 @quicly_decode_packet(%struct.TYPE_28__*, %struct.TYPE_36__*, i32*, i64) #1

declare dso_local i64 @QUICLY_PACKET_IS_LONG_HEADER(i32) #1

declare dso_local i32* @quicly_send_version_negotiation(%struct.TYPE_28__*, %struct.sockaddr*, i64, i32*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_one(i32, i32*) #1

declare dso_local i64 @quicly_is_destination(i32*, i32*, %struct.sockaddr*, %struct.TYPE_36__*) #1

declare dso_local i32 @quicly_receive(i32*, i32*, %struct.sockaddr*, %struct.TYPE_36__*) #1

declare dso_local i64 @QUICLY_PACKET_IS_INITIAL(i32) #1

declare dso_local i64 @quicly_decrypt_address_token(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @validate_token(%struct.sockaddr*, i64, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32* @quicly_send_retry(%struct.TYPE_28__*, i32, %struct.sockaddr*, i64, i32*, i32, %struct.TYPE_38__* byval(%struct.TYPE_38__) align 8, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @quicly_accept(i32**, %struct.TYPE_28__*, i32*, %struct.sockaddr*, %struct.TYPE_36__*, i32*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32* @quicly_send_stateless_reset(%struct.TYPE_28__*, %struct.sockaddr*, i32*, i32) #1

declare dso_local i64 @send_pending(i32, i32*) #1

declare dso_local i32 @quicly_free(i32*) #1

declare dso_local i32 @memmove(i32**, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
