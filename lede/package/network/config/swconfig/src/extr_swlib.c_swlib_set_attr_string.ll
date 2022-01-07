; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_set_attr_string.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_set_attr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_port = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8*, %struct.switch_val*, %struct.switch_val*, i8* }
%struct.switch_val = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i32, i32 }
%struct.switch_port_link = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i32, i32 }

@SWLIB_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"autoneg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unsupported option %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Unsupported value %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swlib_set_attr_string(%struct.switch_dev* %0, %struct.switch_attr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_dev*, align 8
  %7 = alloca %struct.switch_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.switch_port*, align 8
  %11 = alloca %struct.switch_port_link*, align 8
  %12 = alloca %struct.switch_val, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %6, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 134, i32* %14, align 4
  %15 = call i32 @memset(%struct.switch_val* %12, i32 0, i32 64)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %19 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %256 [
    i32 132, label %21
    i32 128, label %26
    i32 129, label %30
    i32 131, label %158
    i32 130, label %247
  ]

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @atoi(i8* %22)
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  br label %257

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %257

30:                                               ; preds = %4
  %31 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %32 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 64, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.switch_val* @alloca(i32 %36)
  %38 = bitcast %struct.switch_val* %37 to %struct.switch_port*
  store %struct.switch_port* %38, %struct.switch_port** %10, align 8
  %39 = load %struct.switch_port*, %struct.switch_port** %10, align 8
  %40 = bitcast %struct.switch_port* %39 to %struct.switch_val*
  %41 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %42 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 64, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(%struct.switch_val* %40, i32 0, i32 %46)
  %48 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %13, align 8
  br label %50

50:                                               ; preds = %149, %30
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %153

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %13, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @isspace(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ false, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %13, align 8
  br label %61

76:                                               ; preds = %71
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %153

81:                                               ; preds = %76
  %82 = load i8*, i8** %13, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @isdigit(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 -1, i32* %5, align 4
  br label %261

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %91 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 -1, i32* %5, align 4
  br label %261

95:                                               ; preds = %87
  %96 = load %struct.switch_port*, %struct.switch_port** %10, align 8
  %97 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %96, i64 %99
  %101 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %100, i32 0, i32 6
  store i32 0, i32* %101, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @strtoul(i8* %102, i8** %13, i32 10)
  %104 = load %struct.switch_port*, %struct.switch_port** %10, align 8
  %105 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %104, i64 %107
  %109 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %108, i32 0, i32 7
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %139, %95
  %111 = load i8*, i8** %13, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i8*, i8** %13, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @isspace(i8 signext %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi i1 [ false, %110 ], [ %120, %115 ]
  br i1 %122, label %123, label %142

123:                                              ; preds = %121
  %124 = load i8*, i8** %13, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 116
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* @SWLIB_PORT_FLAG_TAGGED, align 4
  %130 = load %struct.switch_port*, %struct.switch_port** %10, align 8
  %131 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %130, i64 %133
  %135 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %129
  store i32 %137, i32* %135, align 8
  br label %139

138:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %261

139:                                              ; preds = %128
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %13, align 8
  br label %110

142:                                              ; preds = %121
  %143 = load i8*, i8** %13, align 8
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  br label %149

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %50

153:                                              ; preds = %80, %58
  %154 = load %struct.switch_port*, %struct.switch_port** %10, align 8
  %155 = bitcast %struct.switch_port* %154 to %struct.switch_val*
  %156 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  store %struct.switch_val* %155, %struct.switch_val** %157, align 8
  br label %257

158:                                              ; preds = %4
  %159 = call %struct.switch_val* @malloc(i32 64)
  %160 = bitcast %struct.switch_val* %159 to %struct.switch_port_link*
  store %struct.switch_port_link* %160, %struct.switch_port_link** %11, align 8
  %161 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %162 = bitcast %struct.switch_port_link* %161 to %struct.switch_val*
  %163 = call i32 @memset(%struct.switch_val* %162, i32 0, i32 64)
  %164 = load i8*, i8** %9, align 8
  store i8* %164, i8** %13, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = call i8* @strtok(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %166, i8** %13, align 8
  br label %167

167:                                              ; preds = %240, %158
  %168 = load i8*, i8** %13, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %242

170:                                              ; preds = %167
  %171 = load i32, i32* %14, align 4
  switch i32 %171, label %239 [
    i32 134, label %172
    i32 135, label %194
    i32 136, label %214
    i32 133, label %234
  ]

172:                                              ; preds = %170
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  store i32 135, i32* %14, align 4
  br label %193

177:                                              ; preds = %172
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  store i32 136, i32* %14, align 4
  br label %192

182:                                              ; preds = %177
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  store i32 133, i32* %14, align 4
  br label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @stderr, align 4
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @fprintf(i32 %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %187, %186
  br label %192

192:                                              ; preds = %191, %181
  br label %193

193:                                              ; preds = %192, %176
  br label %239

194:                                              ; preds = %170
  %195 = load i8*, i8** %13, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %200 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  br label %213

201:                                              ; preds = %194
  %202 = load i8*, i8** %13, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %207 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %206, i32 0, i32 2
  store i32 1, i32* %207, align 8
  br label %212

208:                                              ; preds = %201
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 @fprintf(i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %208, %205
  br label %213

213:                                              ; preds = %212, %198
  store i32 134, i32* %14, align 4
  br label %239

214:                                              ; preds = %170
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %220 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %219, i32 0, i32 3
  store i32 1, i32* %220, align 4
  br label %233

221:                                              ; preds = %214
  %222 = load i8*, i8** %13, align 8
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %227 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %226, i32 0, i32 3
  store i32 0, i32* %227, align 4
  br label %232

228:                                              ; preds = %221
  %229 = load i32, i32* @stderr, align 4
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 @fprintf(i32 %229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %225
  br label %233

233:                                              ; preds = %232, %218
  store i32 134, i32* %14, align 4
  br label %239

234:                                              ; preds = %170
  %235 = load i8*, i8** %13, align 8
  %236 = call i8* @atoi(i8* %235)
  %237 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %238 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %237, i32 0, i32 5
  store i8* %236, i8** %238, align 8
  store i32 134, i32* %14, align 4
  br label %239

239:                                              ; preds = %170, %234, %233, %213, %193
  br label %240

240:                                              ; preds = %239
  %241 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %241, i8** %13, align 8
  br label %167

242:                                              ; preds = %167
  %243 = load %struct.switch_port_link*, %struct.switch_port_link** %11, align 8
  %244 = bitcast %struct.switch_port_link* %243 to %struct.switch_val*
  %245 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  store %struct.switch_val* %244, %struct.switch_val** %246, align 8
  br label %257

247:                                              ; preds = %4
  %248 = load i8*, i8** %9, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i8*, i8** %9, align 8
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  store i32 0, i32* %5, align 4
  br label %261

255:                                              ; preds = %250, %247
  br label %257

256:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %261

257:                                              ; preds = %255, %242, %153, %26, %21
  %258 = load %struct.switch_dev*, %struct.switch_dev** %6, align 8
  %259 = load %struct.switch_attr*, %struct.switch_attr** %7, align 8
  %260 = call i32 @swlib_set_attr(%struct.switch_dev* %258, %struct.switch_attr* %259, %struct.switch_val* %12)
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %257, %256, %254, %138, %94, %86
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @memset(%struct.switch_val*, i32, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local %struct.switch_val* @alloca(i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.switch_val* @malloc(i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @swlib_set_attr(%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
