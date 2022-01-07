; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_facebsp.c_SelectSplitPlaneNum.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_facebsp.c_SelectSplitPlaneNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, float* }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i64, %struct.TYPE_9__* }

@blockSize = common dso_local global i32* null, align 8
@qfalse = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_7__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i32*)* @SelectSplitPlaneNum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SelectSplitPlaneNum(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  store i32 -1, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %82, %4
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %85

29:                                               ; preds = %26
  %30 = load i32*, i32** @blockSize, align 8
  %31 = load i32, i32* %20, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %82

37:                                               ; preds = %29
  %38 = load i32*, i32** @blockSize, align 8
  %39 = load i32, i32* %20, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @blockSize, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %49, %54
  %56 = call i32 @floor(i32 %55)
  %57 = add nsw i32 %56, 1
  %58 = mul nsw i32 %42, %57
  %59 = sitofp i32 %58 to float
  store float %59, float* %22, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %22, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %37
  %70 = load i32*, i32** %21, align 8
  %71 = call i32 @VectorClear(i32* %70)
  %72 = load i32*, i32** %21, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 1, i32* %75, align 4
  %76 = load i32*, i32** %21, align 8
  %77 = load float, float* %22, align 4
  %78 = call i32 @FindFloatPlane(i32* %76, float %77, i32 0, i32* null)
  store i32 %78, i32* %23, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %218

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %20, align 4
  br label %26

85:                                               ; preds = %26
  store i32 -99999, i32* %19, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %11, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %9, align 8
  br label %88

88:                                               ; preds = %95, %85
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = icmp ne %struct.TYPE_9__* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i64, i64* @qfalse, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %9, align 8
  br label %88

99:                                               ; preds = %88
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %9, align 8
  br label %101

101:                                              ; preds = %200, %99
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %204

104:                                              ; preds = %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %200

110:                                              ; preds = %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapplanes, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %114
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %17, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %10, align 8
  br label %117

117:                                              ; preds = %168, %110
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %172

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = load i64, i64* @qtrue, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  br label %168

134:                                              ; preds = %120
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @WindingOnPlaneSide(i32 %137, i32 %140, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @SIDE_CROSS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %134
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %167

151:                                              ; preds = %134
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @SIDE_FRONT, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %166

158:                                              ; preds = %151
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @SIDE_BACK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %162, %158
  br label %166

166:                                              ; preds = %165, %155
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %128
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %10, align 8
  br label %117

172:                                              ; preds = %117
  %173 = load i32, i32* %13, align 4
  %174 = mul nsw i32 5, %173
  %175 = load i32, i32* %12, align 4
  %176 = mul nsw i32 5, %175
  %177 = sub nsw i32 %174, %176
  store i32 %177, i32* %18, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %180, 3
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 5
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %182, %172
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %19, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %185
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %19, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %11, align 8
  br label %199

199:                                              ; preds = %196, %185
  br label %200

200:                                              ; preds = %199, %109
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %9, align 8
  br label %101

204:                                              ; preds = %101
  %205 = load i32, i32* %19, align 4
  %206 = icmp eq i32 %205, -99999
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %218

208:                                              ; preds = %204
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i32*, i32** %7, align 8
  store i32 %212, i32* %213, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32*, i32** %8, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %208, %207, %69
  ret void
}

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @FindFloatPlane(i32*, float, i32, i32*) #1

declare dso_local i32 @WindingOnPlaneSide(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
