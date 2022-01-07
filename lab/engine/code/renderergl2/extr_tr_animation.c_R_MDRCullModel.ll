; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRCullModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRCullModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64**, i32, i32, i32* }

@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @R_MDRCullModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_MDRCullModel(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [2 x i64*], align 16
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* null, i32 0, i32 3), align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = ptrtoint i32* %17 to i64
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = bitcast %struct.TYPE_12__* %20 to i32*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  %35 = bitcast i32* %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = bitcast %struct.TYPE_12__* %36 to i32*
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = bitcast i32* %50 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %129, label %57

57:                                               ; preds = %2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @R_CullLocalPointAndRadius(i32 %70, i32 %73)
  switch i32 %74, label %84 [
    i32 128, label %75
    i32 129, label %78
    i32 130, label %81
  ]

75:                                               ; preds = %67
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %242

78:                                               ; preds = %67
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %242

81:                                               ; preds = %67
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %84

84:                                               ; preds = %67, %81
  br label %128

85:                                               ; preds = %57
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @R_CullLocalPointAndRadius(i32 %88, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = icmp eq %struct.TYPE_13__* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %12, align 4
  br label %106

98:                                               ; preds = %85
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @R_CullLocalPointAndRadius(i32 %101, i32 %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %98, %96
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %242

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 129
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %242

122:                                              ; preds = %116
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %2
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %226, %129
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 3
  br i1 %132, label %133, label %229

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64**, i64*** %135, align 8
  %137 = getelementptr inbounds i64*, i64** %136, i64 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64**, i64*** %144, align 8
  %146 = getelementptr inbounds i64*, i64** %145, i64 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %142, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %133
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64**, i64*** %155, align 8
  %157 = getelementptr inbounds i64*, i64** %156, i64 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  br label %173

163:                                              ; preds = %133
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64**, i64*** %165, align 8
  %167 = getelementptr inbounds i64*, i64** %166, i64 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  br label %173

173:                                              ; preds = %163, %153
  %174 = phi i64 [ %162, %153 ], [ %172, %163 ]
  %175 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %176 = load i64*, i64** %175, align 16
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %174, i64* %179, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64**, i64*** %181, align 8
  %183 = getelementptr inbounds i64*, i64** %182, i64 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64**, i64*** %190, align 8
  %192 = getelementptr inbounds i64*, i64** %191, i64 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp sgt i64 %188, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %173
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64**, i64*** %201, align 8
  %203 = getelementptr inbounds i64*, i64** %202, i64 1
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  br label %219

209:                                              ; preds = %173
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i64**, i64*** %211, align 8
  %213 = getelementptr inbounds i64*, i64** %212, i64 1
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  br label %219

219:                                              ; preds = %209, %199
  %220 = phi i64 [ %208, %199 ], [ %218, %209 ]
  %221 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 1
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  store i64 %220, i64* %225, align 8
  br label %226

226:                                              ; preds = %219
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %130

229:                                              ; preds = %130
  %230 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %231 = call i32 @R_CullLocalBox(i64** %230)
  switch i32 %231, label %239 [
    i32 129, label %232
    i32 130, label %235
    i32 128, label %238
  ]

232:                                              ; preds = %229
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  store i32 129, i32* %3, align 4
  br label %242

235:                                              ; preds = %229
  %236 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  store i32 130, i32* %3, align 4
  br label %242

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %229, %238
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  store i32 128, i32* %3, align 4
  br label %242

242:                                              ; preds = %239, %235, %232, %119, %113, %78, %75
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @R_CullLocalPointAndRadius(i32, i32) #1

declare dso_local i32 @R_CullLocalBox(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
