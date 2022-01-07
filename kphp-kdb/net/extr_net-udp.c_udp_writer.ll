; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_writer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.udp_socket = type { i32, i32, i32, i64, %struct.udp_message*, i32, %struct.TYPE_5__* }
%struct.udp_message = type { i32, %struct.udp_message*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.udp_socket*, %struct.udp_message*)* }

@.str = private unnamed_addr constant [46 x i8] c"udp_writer: %d bytes in %d messages in queue\0A\00", align 1
@U_ERRQ = common dso_local global i32 0, align 4
@sendmmsg_supported = common dso_local global i64 0, align 8
@udp_send_msgvec = common dso_local global %struct.TYPE_7__* null, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"error in sendmsg() to [%s]:%d: %s, dropping message\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ENONET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"error in sendmsg() to [%s]:%d: %s\0A\00", align 1
@U_NOWR = common dso_local global i32 0, align 4
@U_ERROR = common dso_local global i32 0, align 4
@MAX_UDP_SEND_BUFFERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"error in sendmmsg(): %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"sendmmsg: %d datagrams %s (%d total); %d bytes in %d messages still in queue\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dropped\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_writer(%struct.udp_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.udp_message*, align 8
  store %struct.udp_socket* %0, %struct.udp_socket** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %13 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %16 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %337, %206, %201, %67, %1
  %20 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %21 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %20, i32 0, i32 4
  %22 = load %struct.udp_message*, %struct.udp_message** %21, align 8
  %23 = icmp ne %struct.udp_message* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %26 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @U_ERRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %24, %19
  %33 = phi i1 [ false, %19 ], [ %31, %24 ]
  br i1 %33, label %34, label %351

34:                                               ; preds = %32
  %35 = load i64, i64* @sendmmsg_supported, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %171

40:                                               ; preds = %37, %34
  %41 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %42 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %41, i32 0, i32 4
  %43 = load %struct.udp_message*, %struct.udp_message** %42, align 8
  %44 = call i32 @prepare_write_chain(%struct.udp_message* %43, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %50 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udp_send_msgvec, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* @MSG_DONTWAIT, align 4
  %56 = call i32 @sendmsg(i32 %51, i32* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %165

59:                                               ; preds = %40
  %60 = load i32, i32* @errno, align 4
  %61 = load i32, i32* @EINTR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59
  br label %19

68:                                               ; preds = %63
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = load i32, i32* @EPERM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %75 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %74, i32 0, i32 4
  %76 = load %struct.udp_message*, %struct.udp_message** %75, align 8
  %77 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @show_ipv6(i32 %78)
  %80 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %81 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %80, i32 0, i32 4
  %82 = load %struct.udp_message*, %struct.udp_message** %81, align 8
  %83 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @strerror(i32 %85)
  %87 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %84, i8* %86)
  %88 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %89 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %88, i32 0, i32 6
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.udp_socket*, %struct.udp_message*)*, i32 (%struct.udp_socket*, %struct.udp_message*)** %91, align 8
  %93 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %94 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %95 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %94, i32 0, i32 4
  %96 = load %struct.udp_message*, %struct.udp_message** %95, align 8
  %97 = call i32 %92(%struct.udp_socket* %93, %struct.udp_message* %96)
  store i32 1, i32* %8, align 4
  br label %164

98:                                               ; preds = %68
  %99 = load i32, i32* @errno, align 4
  %100 = load i32, i32* @ECONNREFUSED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %134, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @errno, align 4
  %104 = load i32, i32* @EHOSTUNREACH, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %134, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @errno, align 4
  %108 = load i32, i32* @EHOSTDOWN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %134, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @errno, align 4
  %112 = load i32, i32* @ENETUNREACH, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %134, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @errno, align 4
  %116 = load i32, i32* @ENONET, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @errno, align 4
  %120 = load i32, i32* @EMSGSIZE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @errno, align 4
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @errno, align 4
  %128 = load i32, i32* @ENOPROTOOPT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @errno, align 4
  %132 = load i32, i32* @ENOBUFS, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130, %126, %122, %118, %114, %110, %106, %102, %98
  %135 = load i32, i32* @U_ERRQ, align 4
  %136 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %137 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %351

140:                                              ; preds = %130
  %141 = load i32, i32* @stderr, align 4
  %142 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %143 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %142, i32 0, i32 4
  %144 = load %struct.udp_message*, %struct.udp_message** %143, align 8
  %145 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @show_ipv6(i32 %146)
  %148 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %149 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %148, i32 0, i32 4
  %150 = load %struct.udp_message*, %struct.udp_message** %149, align 8
  %151 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i8* @strerror(i32 %153)
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %147, i32 %152, i8* %154)
  %156 = load i32, i32* @U_NOWR, align 4
  %157 = load i32, i32* @U_ERROR, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %160 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %353

164:                                              ; preds = %73
  br label %170

165:                                              ; preds = %40
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udp_send_msgvec, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %164
  store i32 0, i32* %7, align 4
  store i32 1, i32* %4, align 4
  br label %261

171:                                              ; preds = %37
  %172 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %173 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %172, i32 0, i32 4
  %174 = load %struct.udp_message*, %struct.udp_message** %173, align 8
  %175 = load i32, i32* @MAX_UDP_SEND_BUFFERS, align 4
  %176 = call i32 @prepare_write_chain(%struct.udp_message* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp sgt i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %182 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udp_send_msgvec, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @MSG_DONTWAIT, align 4
  %187 = call i32 @our_sendmmsg(i32 %183, %struct.TYPE_7__* %184, i32 %185, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %260

190:                                              ; preds = %171
  %191 = load i64, i64* @sendmmsg_supported, align 8
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @errno, align 4
  %195 = load i32, i32* @EINTR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* @errno, align 4
  %199 = load i32, i32* @EAGAIN, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197, %193, %190
  br label %19

202:                                              ; preds = %197
  %203 = load i32, i32* @errno, align 4
  %204 = load i32, i32* @EPERM, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32 1, i32* %7, align 4
  br label %19

207:                                              ; preds = %202
  %208 = load i32, i32* @errno, align 4
  %209 = load i32, i32* @ECONNREFUSED, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %243, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* @errno, align 4
  %213 = load i32, i32* @EHOSTUNREACH, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %243, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @errno, align 4
  %217 = load i32, i32* @EHOSTDOWN, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %243, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* @errno, align 4
  %221 = load i32, i32* @ENETUNREACH, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %243, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @errno, align 4
  %225 = load i32, i32* @ENONET, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %243, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* @errno, align 4
  %229 = load i32, i32* @EMSGSIZE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %243, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* @errno, align 4
  %233 = load i32, i32* @EOPNOTSUPP, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %243, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* @errno, align 4
  %237 = load i32, i32* @ENOPROTOOPT, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* @errno, align 4
  %241 = load i32, i32* @ENOBUFS, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %239, %235, %231, %227, %223, %219, %215, %211, %207
  %244 = load i32, i32* @U_ERRQ, align 4
  %245 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %246 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %351

249:                                              ; preds = %239
  %250 = load i32, i32* @stderr, align 4
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %252 = load i32, i32* @U_NOWR, align 4
  %253 = load i32, i32* @U_ERROR, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %256 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* %4, align 4
  store i32 %259, i32* %2, align 4
  br label %353

260:                                              ; preds = %171
  br label %261

261:                                              ; preds = %260, %170
  %262 = load i32, i32* %4, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* @U_NOWR, align 4
  %266 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %267 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %261
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %273, %270
  store i32 0, i32* %10, align 4
  br label %278

278:                                              ; preds = %326, %277
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %329

282:                                              ; preds = %278
  %283 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %284 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %283, i32 0, i32 4
  %285 = load %struct.udp_message*, %struct.udp_message** %284, align 8
  store %struct.udp_message* %285, %struct.udp_message** %11, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udp_send_msgvec, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.udp_message*, %struct.udp_message** %11, align 8
  %294 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %292, %296
  br i1 %297, label %301, label %298

298:                                              ; preds = %282
  %299 = load i32, i32* %8, align 4
  %300 = icmp ne i32 %299, 0
  br label %301

301:                                              ; preds = %298, %282
  %302 = phi i1 [ true, %282 ], [ %300, %298 ]
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  %305 = load %struct.udp_message*, %struct.udp_message** %11, align 8
  %306 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %310 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = sub nsw i64 %312, %308
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %310, align 8
  %315 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %316 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %316, align 4
  %319 = load %struct.udp_message*, %struct.udp_message** %11, align 8
  %320 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %319, i32 0, i32 1
  %321 = load %struct.udp_message*, %struct.udp_message** %320, align 8
  %322 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %323 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %322, i32 0, i32 4
  store %struct.udp_message* %321, %struct.udp_message** %323, align 8
  %324 = load %struct.udp_message*, %struct.udp_message** %11, align 8
  %325 = call i32 @free_udp_message(%struct.udp_message* %324)
  br label %326

326:                                              ; preds = %301
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %278

329:                                              ; preds = %278
  %330 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %331 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %330, i32 0, i32 4
  %332 = load %struct.udp_message*, %struct.udp_message** %331, align 8
  %333 = icmp ne %struct.udp_message* %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %336 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %335, i32 0, i32 3
  store i64 0, i64* %336, align 8
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i32, i32* %4, align 4
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %343 = load i32, i32* %6, align 4
  %344 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %345 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %348 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %338, i8* %342, i32 %343, i32 %346, i32 %349)
  store i32 0, i32* %8, align 4
  br label %19

351:                                              ; preds = %243, %134, %32
  %352 = load i32, i32* %6, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %351, %249, %140
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @prepare_write_chain(%struct.udp_message*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sendmsg(i32, i32*, i32) #1

declare dso_local i8* @show_ipv6(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @our_sendmmsg(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @free_udp_message(%struct.udp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
