; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_property_int64.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ff_ffplay.c_ffp_get_property_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@FFP_PROPV_DECODER_AVCODEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffp_get_property_int64(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %263 [
    i32 134, label %9
    i32 136, label %25
    i32 135, label %41
    i32 128, label %57
    i32 144, label %67
    i32 130, label %69
    i32 146, label %80
    i32 131, label %91
    i32 147, label %102
    i32 129, label %113
    i32 145, label %124
    i32 143, label %135
    i32 133, label %147
    i32 150, label %159
    i32 148, label %169
    i32 149, label %179
    i32 138, label %189
    i32 132, label %201
    i32 139, label %213
    i32 141, label %223
    i32 140, label %233
    i32 142, label %243
    i32 137, label %253
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %4, align 4
  br label %265

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %265

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %265

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %265

41:                                               ; preds = %3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %4, align 4
  br label %265

51:                                               ; preds = %44
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %265

57:                                               ; preds = %3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %4, align 4
  br label %265

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %4, align 4
  br label %265

67:                                               ; preds = %3
  %68 = load i32, i32* @FFP_PROPV_DECODER_AVCODEC, align 4
  store i32 %68, i32* %4, align 4
  br label %265

69:                                               ; preds = %3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %4, align 4
  br label %265

74:                                               ; preds = %69
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 13
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %265

80:                                               ; preds = %3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = icmp ne %struct.TYPE_11__* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %4, align 4
  br label %265

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %4, align 4
  br label %265

91:                                               ; preds = %3
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = icmp ne %struct.TYPE_11__* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %4, align 4
  br label %265

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 13
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %4, align 4
  br label %265

102:                                              ; preds = %3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %4, align 4
  br label %265

107:                                              ; preds = %102
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %4, align 4
  br label %265

113:                                              ; preds = %3
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %4, align 4
  br label %265

118:                                              ; preds = %113
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 13
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  br label %265

124:                                              ; preds = %3
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = icmp ne %struct.TYPE_11__* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %4, align 4
  br label %265

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 12
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %4, align 4
  br label %265

135:                                              ; preds = %3
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = icmp ne %struct.TYPE_11__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi i32 [ %142, %138 ], [ %144, %143 ]
  store i32 %146, i32* %4, align 4
  br label %265

147:                                              ; preds = %3
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = icmp ne %struct.TYPE_11__* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 10
  %154 = call i32 @SDL_SpeedSampler2GetSpeed(i32* %153)
  br label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %7, align 4
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi i32 [ %154, %150 ], [ %156, %155 ]
  store i32 %158, i32* %4, align 4
  br label %265

159:                                              ; preds = %3
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = icmp ne %struct.TYPE_11__* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %4, align 4
  br label %265

164:                                              ; preds = %159
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %4, align 4
  br label %265

169:                                              ; preds = %3
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = icmp ne %struct.TYPE_11__* %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %4, align 4
  br label %265

174:                                              ; preds = %169
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %4, align 4
  br label %265

179:                                              ; preds = %3
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = icmp ne %struct.TYPE_11__* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %4, align 4
  br label %265

184:                                              ; preds = %179
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %4, align 4
  br label %265

189:                                              ; preds = %3
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = icmp ne %struct.TYPE_11__* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  br label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %192
  %200 = phi i32 [ %196, %192 ], [ %198, %197 ]
  store i32 %200, i32* %4, align 4
  br label %265

201:                                              ; preds = %3
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = icmp ne %struct.TYPE_11__* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  br label %211

209:                                              ; preds = %201
  %210 = load i32, i32* %7, align 4
  br label %211

211:                                              ; preds = %209, %204
  %212 = phi i32 [ %208, %204 ], [ %210, %209 ]
  store i32 %212, i32* %4, align 4
  br label %265

213:                                              ; preds = %3
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %215 = icmp ne %struct.TYPE_11__* %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %4, align 4
  br label %265

218:                                              ; preds = %213
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %4, align 4
  br label %265

223:                                              ; preds = %3
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %225 = icmp ne %struct.TYPE_11__* %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %4, align 4
  br label %265

228:                                              ; preds = %223
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %4, align 4
  br label %265

233:                                              ; preds = %3
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = icmp ne %struct.TYPE_11__* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %7, align 4
  store i32 %237, i32* %4, align 4
  br label %265

238:                                              ; preds = %233
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %4, align 4
  br label %265

243:                                              ; preds = %3
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = icmp ne %struct.TYPE_11__* %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %7, align 4
  store i32 %247, i32* %4, align 4
  br label %265

248:                                              ; preds = %243
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %4, align 4
  br label %265

253:                                              ; preds = %3
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %255 = icmp ne %struct.TYPE_11__* %254, null
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %4, align 4
  br label %265

258:                                              ; preds = %253
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  store i32 %262, i32* %4, align 4
  br label %265

263:                                              ; preds = %3
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %263, %258, %256, %248, %246, %238, %236, %228, %226, %218, %216, %211, %199, %184, %182, %174, %172, %164, %162, %157, %145, %129, %127, %118, %116, %107, %105, %96, %94, %85, %83, %74, %72, %67, %62, %60, %51, %49, %35, %33, %19, %17
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @SDL_SpeedSampler2GetSpeed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
