; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_LoadPCX.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_imagelib.c_LoadPCX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"LoadPCX: Couldn't read %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad pcx file %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"LoadPCX: couldn't allocate\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"PCX file %s was malformed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadPCX(i8* %0, i32** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i32** %11 to i8**
  %23 = call i32 @vfsLoadFile(i8* %21, i8** %22, i32 0)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %5
  %30 = load i32*, i32** %11, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %12, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %33, i32** %11, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @LittleShort(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @LittleShort(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @LittleShort(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @LittleShort(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @LittleShort(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @LittleShort(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @LittleShort(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @LittleShort(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %119, label %94

94:                                               ; preds = %29
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 5
  br i1 %98, label %119, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %119, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 8
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 640
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 480
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %109, %104, %99, %94, %29
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32**, i32*** %8, align 8
  %124 = icmp ne i32** %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = call i32* @safe_malloc(i32 768)
  %127 = load i32**, i32*** %8, align 8
  store i32* %126, i32** %127, align 8
  %128 = load i32**, i32*** %8, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %131 = bitcast %struct.TYPE_3__* %130 to i32*
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = getelementptr inbounds i32, i32* %134, i64 -768
  %136 = call i32 @memcpy(i32* %129, i32* %135, i32 768)
  br label %137

137:                                              ; preds = %125, %122
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %137
  %147 = load i32*, i32** %10, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32*, i32** %10, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %146
  %156 = load i32**, i32*** %7, align 8
  %157 = icmp ne i32** %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %263

159:                                              ; preds = %155
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = mul nsw i32 %163, %167
  %169 = call i32* @safe_malloc(i32 %168)
  store i32* %169, i32** %19, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %159
  %173 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %159
  %175 = load i32*, i32** %19, align 8
  %176 = load i32**, i32*** %7, align 8
  store i32* %175, i32** %176, align 8
  %177 = load i32*, i32** %19, align 8
  store i32* %177, i32** %20, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  store i32 %184, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %236, %174
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %186, %189
  br i1 %190, label %191, label %246

191:                                              ; preds = %185
  store i32 0, i32* %13, align 4
  br label %192

192:                                              ; preds = %214, %191
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp sle i32 %193, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %192
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @DECODEPCX(i32* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %207, %198
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %18, align 4
  %206 = icmp sgt i32 %204, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load i32, i32* %17, align 4
  %209 = load i32*, i32** %20, align 8
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %208, i32* %213, align 4
  br label %203

214:                                              ; preds = %203
  br label %192

215:                                              ; preds = %192
  br label %216

216:                                              ; preds = %220, %215
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @DECODEPCX(i32* %221, i32 %222, i32 %223)
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %216

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %18, align 4
  %231 = icmp sgt i32 %229, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %228

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  %243 = load i32*, i32** %20, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %20, align 8
  br label %185

246:                                              ; preds = %185
  %247 = load i32*, i32** %11, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %249 = bitcast %struct.TYPE_3__* %248 to i32*
  %250 = ptrtoint i32* %247 to i64
  %251 = ptrtoint i32* %249 to i64
  %252 = sub i64 %250, %251
  %253 = sdiv exact i64 %252, 4
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp sgt i64 %253, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %246
  %258 = load i8*, i8** %6, align 8
  %259 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %258)
  br label %260

260:                                              ; preds = %257, %246
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %262 = call i32 @free(%struct.TYPE_3__* %261)
  br label %263

263:                                              ; preds = %260, %158
  ret void
}

declare dso_local i32 @vfsLoadFile(i8*, i8**, i32) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i8* @LittleShort(i32) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DECODEPCX(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
