; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_specifier.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32 }

@t = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid use of `%k'\0A\00", align 1
@tsym = common dso_local global %struct.TYPE_30__* null, align 8
@src = common dso_local global i32 0, align 4
@inttype = common dso_local global %struct.TYPE_29__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid type specification\0A\00", align 1
@unsignedchar = common dso_local global %struct.TYPE_29__* null, align 8
@signedchar = common dso_local global %struct.TYPE_29__* null, align 8
@unsignedshort = common dso_local global %struct.TYPE_29__* null, align 8
@shorttype = common dso_local global %struct.TYPE_29__* null, align 8
@longdouble = common dso_local global %struct.TYPE_29__* null, align 8
@unsignedlonglong = common dso_local global %struct.TYPE_29__* null, align 8
@longlong = common dso_local global %struct.TYPE_29__* null, align 8
@Aflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"`%t' is a non-ANSI type\0A\00", align 1
@unsignedlong = common dso_local global %struct.TYPE_29__* null, align 8
@longtype = common dso_local global %struct.TYPE_29__* null, align 8
@unsignedtype = common dso_local global %struct.TYPE_29__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (i32*)* @specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @specifier(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %9, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 147, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %1
  br label %16

16:                                               ; preds = %131, %15
  %17 = load i32, i32* @t, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @t, align 4
  switch i32 %18, label %119 [
    i32 147, label %19
    i32 137, label %19
    i32 134, label %31
    i32 142, label %31
    i32 132, label %31
    i32 145, label %33
    i32 128, label %35
    i32 135, label %37
    i32 130, label %37
    i32 138, label %39
    i32 136, label %45
    i32 129, label %47
    i32 146, label %47
    i32 139, label %47
    i32 141, label %47
    i32 144, label %47
    i32 143, label %52
    i32 133, label %54
    i32 131, label %54
    i32 140, label %57
  ]

19:                                               ; preds = %16, %16
  %20 = load i32, i32* @level, align 4
  %21 = load i32, i32* @GLOBAL, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @t, align 4
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23, %19
  store i32* %3, i32** %10, align 8
  %30 = call i32 (...) @gettok()
  store i32 %30, i32* @t, align 4
  br label %120

31:                                               ; preds = %16, %16, %16
  store i32* %3, i32** %10, align 8
  %32 = call i32 (...) @gettok()
  store i32 %32, i32* @t, align 4
  br label %120

33:                                               ; preds = %16
  store i32* %4, i32** %10, align 8
  %34 = call i32 (...) @gettok()
  store i32 %34, i32* @t, align 4
  br label %120

35:                                               ; preds = %16
  store i32* %8, i32** %10, align 8
  %36 = call i32 (...) @gettok()
  store i32 %36, i32* @t, align 4
  br label %120

37:                                               ; preds = %16, %16
  store i32* %5, i32** %10, align 8
  %38 = call i32 (...) @gettok()
  store i32 %38, i32* @t, align 4
  br label %120

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 138
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  store i32 276, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %39
  store i32* %6, i32** %10, align 8
  %44 = call i32 (...) @gettok()
  store i32 %44, i32* @t, align 4
  br label %120

45:                                               ; preds = %16
  store i32* %6, i32** %10, align 8
  %46 = call i32 (...) @gettok()
  store i32 %46, i32* @t, align 4
  br label %120

47:                                               ; preds = %16, %16, %16, %16, %16
  store i32* %7, i32** %10, align 8
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %49, align 8
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %9, align 8
  %51 = call i32 (...) @gettok()
  store i32 %51, i32* @t, align 4
  br label %120

52:                                               ; preds = %16
  store i32* %7, i32** %10, align 8
  %53 = call %struct.TYPE_29__* (...) @enumdcl()
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %9, align 8
  br label %120

54:                                               ; preds = %16, %16
  store i32* %7, i32** %10, align 8
  %55 = load i32, i32* @t, align 4
  %56 = call %struct.TYPE_29__* @structdcl(i32 %55)
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %9, align 8
  br label %120

57:                                               ; preds = %16
  %58 = load i32, i32* @t, align 4
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %60 = call i32 @istypename(i32 %58, %struct.TYPE_30__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %117

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %117

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %68
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %73 = load i32, i32* @src, align 4
  %74 = call i32 @use(%struct.TYPE_30__* %72, i32 %73)
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  store %struct.TYPE_29__* %77, %struct.TYPE_29__** %9, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %79 = call i32 @isqual(%struct.TYPE_29__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %71
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %81
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %93 = call %struct.TYPE_29__* @unqual(%struct.TYPE_29__* %92)
  store %struct.TYPE_29__* %93, %struct.TYPE_29__** %9, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %95, align 8
  %97 = call i32 @isconst(%struct.TYPE_29__* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %101 = call %struct.TYPE_29__* @qual(i32 145, %struct.TYPE_29__* %100)
  store %struct.TYPE_29__* %101, %struct.TYPE_29__** %9, align 8
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %104, align 8
  %106 = call i32 @isvolatile(%struct.TYPE_29__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %110 = call %struct.TYPE_29__* @qual(i32 128, %struct.TYPE_29__* %109)
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %9, align 8
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** @tsym, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  store %struct.TYPE_29__* %112, %struct.TYPE_29__** %114, align 8
  br label %115

115:                                              ; preds = %111, %81, %71
  store i32* %7, i32** %10, align 8
  %116 = call i32 (...) @gettok()
  store i32 %116, i32* @t, align 4
  br label %118

117:                                              ; preds = %68, %65, %62, %57
  store i32* null, i32** %10, align 8
  br label %118

118:                                              ; preds = %117, %115
  br label %120

119:                                              ; preds = %16
  store i32* null, i32** %10, align 8
  br label %120

120:                                              ; preds = %119, %118, %54, %52, %47, %45, %43, %37, %35, %33, %31, %29
  %121 = load i32*, i32** %10, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %134

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  br label %16

134:                                              ; preds = %123
  %135 = load i32*, i32** %2, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %3, align 4
  %139 = load i32*, i32** %2, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  store i32 139, i32* %7, align 4
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** @inttype, align 8
  store %struct.TYPE_29__* %144, %struct.TYPE_29__** %9, align 8
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 136
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 139
  br i1 %150, label %175, label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 276
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 139
  br i1 %156, label %175, label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 138
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 139
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 144
  br i1 %165, label %175, label %166

166:                                              ; preds = %163, %160, %157
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 139
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 146
  br i1 %174, label %175, label %177

175:                                              ; preds = %172, %163, %154, %148
  %176 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172, %169, %166
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 146
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = icmp eq i32 %184, 130
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** @unsignedchar, align 8
  br label %190

188:                                              ; preds = %183
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** @signedchar, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi %struct.TYPE_29__* [ %187, %186 ], [ %189, %188 ]
  store %struct.TYPE_29__* %191, %struct.TYPE_29__** %9, align 8
  br label %255

192:                                              ; preds = %180, %177
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, 136
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = icmp eq i32 %196, 130
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** @unsignedshort, align 8
  br label %202

200:                                              ; preds = %195
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** @shorttype, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi %struct.TYPE_29__* [ %199, %198 ], [ %201, %200 ]
  store %struct.TYPE_29__* %203, %struct.TYPE_29__** %9, align 8
  br label %254

204:                                              ; preds = %192
  %205 = load i32, i32* %6, align 4
  %206 = icmp eq i32 %205, 138
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, 144
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** @longdouble, align 8
  store %struct.TYPE_29__* %211, %struct.TYPE_29__** %9, align 8
  br label %253

212:                                              ; preds = %207, %204
  %213 = load i32, i32* %6, align 4
  %214 = icmp eq i32 %213, 276
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = icmp eq i32 %216, 130
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** @unsignedlonglong, align 8
  br label %222

220:                                              ; preds = %215
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** @longlong, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi %struct.TYPE_29__* [ %219, %218 ], [ %221, %220 ]
  store %struct.TYPE_29__* %223, %struct.TYPE_29__** %9, align 8
  %224 = load i32, i32* @Aflag, align 4
  %225 = icmp sge i32 %224, 1
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %228 = call i32 @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_29__* %227)
  br label %229

229:                                              ; preds = %226, %222
  br label %252

230:                                              ; preds = %212
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 138
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load i32, i32* %5, align 4
  %235 = icmp eq i32 %234, 130
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** @unsignedlong, align 8
  br label %240

238:                                              ; preds = %233
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** @longtype, align 8
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi %struct.TYPE_29__* [ %237, %236 ], [ %239, %238 ]
  store %struct.TYPE_29__* %241, %struct.TYPE_29__** %9, align 8
  br label %251

242:                                              ; preds = %230
  %243 = load i32, i32* %5, align 4
  %244 = icmp eq i32 %243, 130
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %246, 139
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** @unsignedtype, align 8
  store %struct.TYPE_29__* %249, %struct.TYPE_29__** %9, align 8
  br label %250

250:                                              ; preds = %248, %245, %242
  br label %251

251:                                              ; preds = %250, %240
  br label %252

252:                                              ; preds = %251, %229
  br label %253

253:                                              ; preds = %252, %210
  br label %254

254:                                              ; preds = %253, %202
  br label %255

255:                                              ; preds = %254, %190
  %256 = load i32, i32* %4, align 4
  %257 = icmp eq i32 %256, 145
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %260 = call %struct.TYPE_29__* @qual(i32 145, %struct.TYPE_29__* %259)
  store %struct.TYPE_29__* %260, %struct.TYPE_29__** %9, align 8
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %8, align 4
  %263 = icmp eq i32 %262, 128
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %266 = call %struct.TYPE_29__* @qual(i32 128, %struct.TYPE_29__* %265)
  store %struct.TYPE_29__* %266, %struct.TYPE_29__** %9, align 8
  br label %267

267:                                              ; preds = %264, %261
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  ret %struct.TYPE_29__* %268
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @gettok(...) #1

declare dso_local %struct.TYPE_29__* @enumdcl(...) #1

declare dso_local %struct.TYPE_29__* @structdcl(i32) #1

declare dso_local i32 @istypename(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @use(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @isqual(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @unqual(%struct.TYPE_29__*) #1

declare dso_local i32 @isconst(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @qual(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @isvolatile(%struct.TYPE_29__*) #1

declare dso_local i32 @warning(i8*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
