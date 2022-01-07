; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_CompareSurfaceInfo.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_CompareSurfaceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64*, i64*, i64* }

@surfaceInfos = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @CompareSurfaceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareSurfaceInfo(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @surfaceInfos, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %13
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @surfaceInfos, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %242

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %242

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %242

48:                                               ; preds = %39
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %242

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %242

67:                                               ; preds = %58
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %242

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %117, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %120

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %88, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %242

98:                                               ; preds = %81
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %105, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %242

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %78

120:                                              ; preds = %78
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  %124 = icmp eq i64* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %3, align 4
  br label %242

131:                                              ; preds = %125, %120
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i64*, i64** %138, align 8
  %140 = icmp eq i64* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  br label %242

142:                                              ; preds = %136, %131
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %196

147:                                              ; preds = %142
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  %150 = load i64*, i64** %149, align 8
  %151 = icmp ne i64* %150, null
  br i1 %151, label %152, label %196

152:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %192, %152
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %195

156:                                              ; preds = %153
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %163, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %156
  store i32 1, i32* %3, align 4
  br label %242

173:                                              ; preds = %156
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %180, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  store i32 -1, i32* %3, align 4
  br label %242

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %153

195:                                              ; preds = %153
  br label %196

196:                                              ; preds = %195, %147, %142
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  store i32 0, i32* %8, align 4
  br label %199

199:                                              ; preds = %238, %198
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 3
  br i1 %201, label %202, label %241

202:                                              ; preds = %199
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 5
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 5
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %209, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %202
  store i32 1, i32* %3, align 4
  br label %242

219:                                              ; preds = %202
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 5
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 5
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %226, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %219
  store i32 -1, i32* %3, align 4
  br label %242

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %199

241:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %235, %218, %189, %172, %141, %130, %114, %97, %75, %66, %56, %47, %37, %28
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
