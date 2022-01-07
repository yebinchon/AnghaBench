; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_ResampleCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_CIN_ResampleCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@cinTable = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CIN_ResampleCinematic(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cinTable, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cinTable, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 256
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cinTable, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 256
  store i32 %39, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cinTable, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 512
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 9, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %126

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %126

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %13, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %122, %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %125

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 12
  store i32 %63, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %118, %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 2048
  br i1 %66, label %67, label %121

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %114, %67
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %69
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %81, %89
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 2048
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %90, %98
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 2048
  %103 = add nsw i32 %102, 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %99, %108
  %110 = ashr i32 %109, 2
  %111 = load i32*, i32** %12, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %12, align 8
  br label %114

114:                                              ; preds = %74
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %69

117:                                              ; preds = %69
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 8
  store i32 %120, i32* %5, align 4
  br label %64

121:                                              ; preds = %64
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %58

125:                                              ; preds = %58
  br label %222

126:                                              ; preds = %52, %48
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %184

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %184

132:                                              ; preds = %129
  %133 = load i32*, i32** %4, align 8
  store i32* %133, i32** %16, align 8
  %134 = load i32*, i32** %7, align 8
  store i32* %134, i32** %17, align 8
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %180, %132
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 256
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = shl i32 %139, 11
  store i32 %140, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %176, %138
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 2048
  br i1 %143, label %144, label %179

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %172, %144
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %146
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %17, align 8
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 4
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %158, %166
  %168 = ashr i32 %167, 1
  %169 = load i32*, i32** %16, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %16, align 8
  br label %172

172:                                              ; preds = %151
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %18, align 4
  br label %146

175:                                              ; preds = %146
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 8
  store i32 %178, i32* %5, align 4
  br label %141

179:                                              ; preds = %141
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %135

183:                                              ; preds = %135
  br label %221

184:                                              ; preds = %129, %126
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %217, %184
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 256
  br i1 %187, label %188, label %220

188:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %213, %188
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 256
  br i1 %191, label %192, label %216

192:                                              ; preds = %189
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = shl i32 %196, %197
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %8, align 4
  %201 = mul nsw i32 %199, %200
  %202 = add nsw i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %193, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = shl i32 %207, 8
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  store i32 %205, i32* %212, align 4
  br label %213

213:                                              ; preds = %192
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %189

216:                                              ; preds = %189
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %185

220:                                              ; preds = %185
  br label %221

221:                                              ; preds = %220, %183
  br label %222

222:                                              ; preds = %221, %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
