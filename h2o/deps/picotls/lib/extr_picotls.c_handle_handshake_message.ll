; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_handle_handshake_message.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_handle_handshake_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_37__ = type { i32*, i32 }

@PTLS_HANDSHAKE_TYPE_SERVER_HELLO = common dso_local global i32 0, align 4
@PTLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_FINISHED = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i32 0, align 4
@PTLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unexpected state\00", align 1
@RECEIVE_MESSAGE = common dso_local global i32 0, align 4
@PTLS_HANDSHAKE_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, i32*, i32*, i32, i32, i32*)* @handle_handshake_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_handshake_message(%struct.TYPE_36__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_37__, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %15 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %14, i32 0, i32 0
  store i32* %2, i32** %15, align 8
  %16 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %14, i32 0, i32 1
  store i32 %3, i32* %16, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* %5, i32** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %256 [
    i32 136, label %24
    i32 137, label %24
    i32 139, label %44
    i32 141, label %60
    i32 142, label %74
    i32 140, label %95
    i32 138, label %110
    i32 132, label %129
    i32 129, label %129
    i32 134, label %149
    i32 133, label %163
    i32 131, label %178
    i32 130, label %202
    i32 135, label %220
    i32 128, label %242
  ]

24:                                               ; preds = %6, %6
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PTLS_HANDSHAKE_TYPE_SERVER_HELLO, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %36 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @client_handle_hello(%struct.TYPE_36__* %32, i32* %33, i32* %37, i32 %39, i32* %34)
  store i32 %40, i32* %13, align 4
  br label %43

41:                                               ; preds = %28, %24
  %42 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %41, %31
  br label %258

44:                                               ; preds = %6
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @PTLS_HANDSHAKE_TYPE_ENCRYPTED_EXTENSIONS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %52 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %51, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @client_handle_encrypted_extensions(%struct.TYPE_36__* %49, i32* %53, i32 %55, i32* %50)
  store i32 %56, i32* %13, align 4
  br label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %48
  br label %258

60:                                               ; preds = %6
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PTLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %68 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %67, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @client_handle_certificate_request(%struct.TYPE_36__* %65, i32* %69, i32 %71, i32* %66)
  store i32 %72, i32* %13, align 4
  br label %258

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %6, %73
  %75 = load i32, i32* %12, align 4
  switch i32 %75, label %92 [
    i32 146, label %76
    i32 145, label %84
  ]

76:                                               ; preds = %74
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %78 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %79 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %78, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @client_handle_certificate(%struct.TYPE_36__* %77, i32* %80, i32 %82)
  store i32 %83, i32* %13, align 4
  br label %94

84:                                               ; preds = %74
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %86 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %87 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %86, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @client_handle_compressed_certificate(%struct.TYPE_36__* %85, i32* %88, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %94

92:                                               ; preds = %74
  %93 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %84, %76
  br label %258

95:                                               ; preds = %6
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %101 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %102 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %101, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @client_handle_certificate_verify(%struct.TYPE_36__* %100, i32* %103, i32 %105)
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %99
  br label %258

110:                                              ; preds = %6
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @PTLS_HANDSHAKE_TYPE_FINISHED, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %121 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %120, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @client_handle_finished(%struct.TYPE_36__* %118, i32* %119, i32* %122, i32 %124)
  store i32 %125, i32* %13, align 4
  br label %128

126:                                              ; preds = %114, %110
  %127 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %117
  br label %258

129:                                              ; preds = %6, %6
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @PTLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %141 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %140, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @server_handle_hello(%struct.TYPE_36__* %137, i32* %138, i32* %142, i32 %144, i32* %139)
  store i32 %145, i32* %13, align 4
  br label %148

146:                                              ; preds = %133, %129
  %147 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %146, %136
  br label %258

149:                                              ; preds = %6
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 146
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %154 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %155 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %154, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @server_handle_certificate(%struct.TYPE_36__* %153, i32* %156, i32 %158)
  store i32 %159, i32* %13, align 4
  br label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %160, %152
  br label %258

163:                                              ; preds = %6
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @PTLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %169 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %170 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %169, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @server_handle_certificate_verify(%struct.TYPE_36__* %168, i32* %171, i32 %173)
  store i32 %174, i32* %13, align 4
  br label %177

175:                                              ; preds = %163
  %176 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %175, %167
  br label %258

178:                                              ; preds = %6
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @PTLS_HANDSHAKE_TYPE_END_OF_EARLY_DATA, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %178
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %193 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %194 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %193, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @server_handle_end_of_early_data(%struct.TYPE_36__* %192, i32* %195, i32 %197)
  store i32 %198, i32* %13, align 4
  br label %201

199:                                              ; preds = %178
  %200 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %199, %191
  br label %258

202:                                              ; preds = %6
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @PTLS_HANDSHAKE_TYPE_FINISHED, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %211 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %212 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %211, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @server_handle_finished(%struct.TYPE_36__* %210, i32* %213, i32 %215)
  store i32 %216, i32* %13, align 4
  br label %219

217:                                              ; preds = %206, %202
  %218 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %217, %209
  br label %258

220:                                              ; preds = %6
  %221 = load i32, i32* %12, align 4
  switch i32 %221, label %239 [
    i32 143, label %222
    i32 144, label %230
  ]

222:                                              ; preds = %220
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %224 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %225 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %224, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @client_handle_new_session_ticket(%struct.TYPE_36__* %223, i32* %226, i32 %228)
  store i32 %229, i32* %13, align 4
  br label %241

230:                                              ; preds = %220
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %234 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %233, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @handle_key_update(%struct.TYPE_36__* %231, i32* %232, i32* %235, i32 %237)
  store i32 %238, i32* %13, align 4
  br label %241

239:                                              ; preds = %220
  %240 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %239, %230, %222
  br label %258

242:                                              ; preds = %6
  %243 = load i32, i32* %12, align 4
  switch i32 %243, label %253 [
    i32 144, label %244
  ]

244:                                              ; preds = %242
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %246 = load i32*, i32** %9, align 8
  %247 = bitcast %struct.TYPE_37__* %7 to { i32*, i32 }*
  %248 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %247, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @handle_key_update(%struct.TYPE_36__* %245, i32* %246, i32* %249, i32 %251)
  store i32 %252, i32* %13, align 4
  br label %255

253:                                              ; preds = %242
  %254 = load i32, i32* @PTLS_ALERT_UNEXPECTED_MESSAGE, align 4
  store i32 %254, i32* %13, align 4
  br label %255

255:                                              ; preds = %253, %244
  br label %258

256:                                              ; preds = %6
  %257 = call i32 @assert(i32 0)
  br label %258

258:                                              ; preds = %256, %255, %241, %219, %201, %177, %162, %148, %128, %109, %94, %64, %59, %43
  %259 = load i32, i32* @RECEIVE_MESSAGE, align 4
  %260 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* @PTLS_HANDSHAKE_HEADER_SIZE, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @PTLS_HANDSHAKE_HEADER_SIZE, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @PTLS_PROBE(i32 %259, %struct.TYPE_36__* %260, i32 %264, i32* %269, i32 %273, i32 %274)
  %276 = load i32, i32* %13, align 4
  ret i32 %276
}

declare dso_local i32 @client_handle_hello(%struct.TYPE_36__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @client_handle_encrypted_extensions(%struct.TYPE_36__*, i32*, i32, i32*) #1

declare dso_local i32 @client_handle_certificate_request(%struct.TYPE_36__*, i32*, i32, i32*) #1

declare dso_local i32 @client_handle_certificate(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @client_handle_compressed_certificate(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @client_handle_certificate_verify(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @client_handle_finished(%struct.TYPE_36__*, i32*, i32*, i32) #1

declare dso_local i32 @server_handle_hello(%struct.TYPE_36__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @server_handle_certificate(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @server_handle_certificate_verify(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @server_handle_end_of_early_data(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @server_handle_finished(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @client_handle_new_session_ticket(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i32 @handle_key_update(%struct.TYPE_36__*, i32*, i32*, i32) #1

declare dso_local i32 @PTLS_PROBE(i32, %struct.TYPE_36__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
