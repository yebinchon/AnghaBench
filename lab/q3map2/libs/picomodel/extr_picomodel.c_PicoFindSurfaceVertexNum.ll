; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoFindSurfaceVertexNum.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoFindSurfaceVertexNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64**, i64**, i64*, i64***, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoFindSurfaceVertexNum(%struct.TYPE_3__* %0, i64* %1, i64* %2, i32 %3, i64** %4, i32 %5, i64* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64** %4, i64*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %8
  store i32 -1, i32* %9, align 4
  br label %250

28:                                               ; preds = %22
  store i32 0, i32* %18, align 4
  br label %29

29:                                               ; preds = %246, %28
  %30 = load i32, i32* %18, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %249

35:                                               ; preds = %29
  %36 = load i64*, i64** %11, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %80, label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64**, i64*** %54, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64*, i64** %55, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66, %52, %38
  br label %246

81:                                               ; preds = %66, %35
  %82 = load i64*, i64** %12, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %127

84:                                               ; preds = %81
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64**, i64*** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %126, label %98

98:                                               ; preds = %84
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64**, i64*** %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64*, i64** %101, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %12, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %126, label %112

112:                                              ; preds = %98
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i64**, i64*** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64*, i64** %115, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %12, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %112, %98, %84
  br label %246

127:                                              ; preds = %112, %81
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %246

138:                                              ; preds = %127
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %204

141:                                              ; preds = %138
  %142 = load i64**, i64*** %14, align 8
  %143 = icmp ne i64** %142, null
  br i1 %143, label %144, label %204

144:                                              ; preds = %141
  store i32 0, i32* %19, align 4
  br label %145

145:                                              ; preds = %195, %144
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %198

149:                                              ; preds = %145
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i64***, i64**** %151, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64**, i64*** %152, i64 %154
  %156 = load i64**, i64*** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64*, i64** %156, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64**, i64*** %14, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64*, i64** %163, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %162, %169
  br i1 %170, label %193, label %171

171:                                              ; preds = %149
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = load i64***, i64**** %173, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64**, i64*** %174, i64 %176
  %178 = load i64**, i64*** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64*, i64** %178, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64**, i64*** %14, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64*, i64** %185, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %184, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %171, %149
  br label %198

194:                                              ; preds = %171
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %19, align 4
  br label %145

198:                                              ; preds = %193, %145
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %246

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203, %141, %138
  %205 = load i32, i32* %15, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %244

207:                                              ; preds = %204
  %208 = load i64*, i64** %16, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %210, label %244

210:                                              ; preds = %207
  store i32 0, i32* %19, align 4
  br label %211

211:                                              ; preds = %235, %210
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %238

215:                                              ; preds = %211
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 5
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = load i64*, i64** %16, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %224, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %215
  br label %238

234:                                              ; preds = %215
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  br label %211

238:                                              ; preds = %233, %211
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %246

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243, %207, %204
  %245 = load i32, i32* %18, align 4
  store i32 %245, i32* %9, align 4
  br label %250

246:                                              ; preds = %242, %202, %137, %126, %80
  %247 = load i32, i32* %18, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %18, align 4
  br label %29

249:                                              ; preds = %29
  store i32 -1, i32* %9, align 4
  br label %250

250:                                              ; preds = %249, %244, %27
  %251 = load i32, i32* %9, align 4
  ret i32 %251
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
