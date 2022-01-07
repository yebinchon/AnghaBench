; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_TryMergeLeaves.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_TryMergeLeaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_PORTALS_ON_LEAF = common dso_local global i32 0, align 4
@leafs = common dso_local global %struct.TYPE_8__* null, align 8
@faceleafs = common dso_local global %struct.TYPE_8__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TryMergeLeaves(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @MAX_PORTALS_ON_LEAF, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca %struct.TYPE_6__*, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %139, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %142

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @leafs, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %13, align 8
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @faceleafs, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %13, align 8
  br label %40

40:                                               ; preds = %35, %30
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %135, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %138

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %15, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %135

61:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %131, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %134

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @leafs, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %14, align 8
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @faceleafs, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %14, align 8
  br label %78

78:                                               ; preds = %73, %68
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %127, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %79
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %16, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %127

99:                                               ; preds = %85
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = bitcast %struct.TYPE_7__* %11 to i8*
  %103 = bitcast %struct.TYPE_7__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 8, i1 false)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = bitcast %struct.TYPE_7__* %12 to i8*
  %107 = bitcast %struct.TYPE_7__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 8, i1 false)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @Winding_PlanesConcave(i32 %110, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = load i32, i32* @qfalse, align 4
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %264

126:                                              ; preds = %99
  br label %127

127:                                              ; preds = %126, %98
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %79

130:                                              ; preds = %79
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %62

134:                                              ; preds = %62
  br label %135

135:                                              ; preds = %134, %60
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %41

138:                                              ; preds = %41
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %24

142:                                              ; preds = %24
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %259, %142
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %262

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @leafs, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %13, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @leafs, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %14, align 8
  br label %167

158:                                              ; preds = %146
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @faceleafs, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %13, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @faceleafs, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %14, align 8
  br label %167

167:                                              ; preds = %158, %149
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %197, %167
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %200

174:                                              ; preds = %168
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %177, i64 %179
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %15, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = load i32, i32* @qtrue, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %197

191:                                              ; preds = %174
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %195
  store %struct.TYPE_6__* %192, %struct.TYPE_6__** %196, align 8
  br label %197

197:                                              ; preds = %191, %187
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %168

200:                                              ; preds = %168
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %230, %200
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %233

207:                                              ; preds = %201
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %210, i64 %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  store %struct.TYPE_6__* %214, %struct.TYPE_6__** %16, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %207
  %221 = load i32, i32* @qtrue, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  br label %230

224:                                              ; preds = %207
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %228
  store %struct.TYPE_6__* %225, %struct.TYPE_6__** %229, align 8
  br label %230

230:                                              ; preds = %224, %220
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %201

233:                                              ; preds = %201
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %249, %233
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %234
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %240
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %245, i64 %247
  store %struct.TYPE_6__* %242, %struct.TYPE_6__** %248, align 8
  br label %249

249:                                              ; preds = %238
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %234

252:                                              ; preds = %234
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %252
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %143

262:                                              ; preds = %143
  %263 = load i32, i32* @qtrue, align 4
  store i32 %263, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %264

264:                                              ; preds = %262, %124
  %265 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @Winding_PlanesConcave(i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
