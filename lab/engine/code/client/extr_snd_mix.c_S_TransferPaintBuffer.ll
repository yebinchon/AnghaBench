; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_TransferPaintBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_TransferPaintBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@s_testsound = common dso_local global %struct.TYPE_4__* null, align 8
@s_paintedtime = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_TransferPaintBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 4), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_testsound, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @s_paintedtime, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %48, %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i32, i32* @s_paintedtime, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = sitofp i32 %31 to double
  %33 = fmul double %32, 1.000000e-01
  %34 = fptosi double %33 to i32
  %35 = call i32 @sin(i32 %34)
  %36 = mul nsw i32 %35, 20000
  %37 = mul nsw i32 %36, 256
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %37, i32* %47, align 4
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @S_TransferStereo16(i64* %59, i32 %60)
  br label %201

62:                                               ; preds = %55, %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i32*
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @s_paintedtime, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 2), align 8
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @s_paintedtime, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %78 = sub nsw i32 3, %77
  store i32 %78, i32* %7, align 4
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 3), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %62
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %120

84:                                               ; preds = %81
  %85 = load i64*, i64** %9, align 8
  %86 = bitcast i64* %85 to float*
  store float* %86, float** %11, align 8
  br label %87

87:                                               ; preds = %107, %84
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %4, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 32767
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 32767, i32* %8, align 4
  br label %107

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, -32767
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -32767, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, i32* %8, align 4
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %109, 3.276700e+04
  %111 = load float*, float** %11, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  store float %110, float* %114, align 4
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %3, align 4
  br label %87

119:                                              ; preds = %87
  br label %200

120:                                              ; preds = %81, %62
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load i64*, i64** %9, align 8
  %125 = bitcast i64* %124 to i16*
  store i16* %125, i16** %12, align 8
  br label %126

126:                                              ; preds = %146, %123
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %4, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 8
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 32767
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  store i32 32767, i32* %8, align 4
  br label %146

141:                                              ; preds = %130
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, -32768
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 -32768, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %141
  br label %146

146:                                              ; preds = %145, %140
  %147 = load i32, i32* %8, align 4
  %148 = trunc i32 %147 to i16
  %149 = load i16*, i16** %12, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i16, i16* %149, i64 %151
  store i16 %148, i16* %152, align 2
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %3, align 4
  br label %126

157:                                              ; preds = %126
  br label %199

158:                                              ; preds = %120
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %160 = icmp eq i32 %159, 8
  br i1 %160, label %161, label %198

161:                                              ; preds = %158
  %162 = load i64*, i64** %9, align 8
  %163 = bitcast i64* %162 to i8*
  store i8* %163, i8** %13, align 8
  br label %164

164:                                              ; preds = %184, %161
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %4, align 4
  %167 = icmp ne i32 %165, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %164
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 8
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = icmp sgt i32 %176, 32767
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  store i32 32767, i32* %8, align 4
  br label %184

179:                                              ; preds = %168
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %180, -32768
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 -32768, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %179
  br label %184

184:                                              ; preds = %183, %178
  %185 = load i32, i32* %8, align 4
  %186 = ashr i32 %185, 8
  %187 = add nsw i32 %186, 128
  %188 = trunc i32 %187 to i8
  %189 = load i8*, i8** %13, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 %188, i8* %192, align 1
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* %5, align 4
  %196 = and i32 %194, %195
  store i32 %196, i32* %3, align 4
  br label %164

197:                                              ; preds = %164
  br label %198

198:                                              ; preds = %197, %158
  br label %199

199:                                              ; preds = %198, %157
  br label %200

200:                                              ; preds = %199, %119
  br label %201

201:                                              ; preds = %200, %58
  ret void
}

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @S_TransferStereo16(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
