; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawArcs.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_drawArcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i32* }

@uiDrawFillModeWinding = common dso_local global i32 0, align 4
@uiPi = common dso_local global double 0.000000e+00, align 8
@uiDrawBrushTypeSolid = common dso_local global i32 0, align 4
@uiDrawLineCapFlat = common dso_local global i32 0, align 4
@uiDrawLineJoinMiter = common dso_local global i32 0, align 4
@uiDrawDefaultMiterLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @drawArcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawArcs(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 20, i32* %4, align 4
  store i32 20, i32* %5, align 4
  store i32 25, i32* %6, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @uiDrawFillModeWinding, align 4
  %18 = call i32* @uiDrawNewPath(i32 %17)
  store i32* %18, i32** %3, align 8
  %19 = load double, double* @uiPi, align 8
  %20 = fmul double 2.000000e+00, %19
  %21 = fdiv double %20, 1.200000e+01
  store double %21, double* %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %47, %1
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load double, double* %9, align 8
  %37 = call i32 @uiDrawPathNewFigureWithArc(i32* %32, i32 %33, i32 %34, i32 %35, double 0.000000e+00, double %36, i32 0)
  %38 = load double, double* %10, align 8
  %39 = load double, double* %9, align 8
  %40 = fadd double %39, %38
  store double %40, double* %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %83, %50
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 13
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @uiDrawPathNewFigure(i32* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load double, double* %9, align 8
  %73 = call i32 @uiDrawPathArcTo(i32* %68, i32 %69, i32 %70, i32 %71, double 0.000000e+00, double %72, i32 0)
  %74 = load double, double* %10, align 8
  %75 = load double, double* %9, align 8
  %76 = fadd double %75, %74
  store double %76, double* %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 2, %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load i32, i32* %6, align 4
  %88 = mul nsw i32 2, %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %117, %86
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 13
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load double, double* @uiPi, align 8
  %105 = fdiv double %104, 4.000000e+00
  %106 = load double, double* %9, align 8
  %107 = call i32 @uiDrawPathNewFigureWithArc(i32* %100, i32 %101, i32 %102, i32 %103, double %105, double %106, i32 0)
  %108 = load double, double* %10, align 8
  %109 = load double, double* %9, align 8
  %110 = fadd double %109, %108
  store double %110, double* %9, align 8
  %111 = load i32, i32* %6, align 4
  %112 = mul nsw i32 2, %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %96

120:                                              ; preds = %96
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 2, %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %155, %120
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 13
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @uiDrawPathNewFigure(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load double, double* @uiPi, align 8
  %143 = fdiv double %142, 4.000000e+00
  %144 = load double, double* %9, align 8
  %145 = call i32 @uiDrawPathArcTo(i32* %138, i32 %139, i32 %140, i32 %141, double %143, double %144, i32 0)
  %146 = load double, double* %10, align 8
  %147 = load double, double* %9, align 8
  %148 = fadd double %147, %146
  store double %148, double* %9, align 8
  %149 = load i32, i32* %6, align 4
  %150 = mul nsw i32 2, %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %133
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %130

158:                                              ; preds = %130
  %159 = load i32, i32* %6, align 4
  %160 = mul nsw i32 2, %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %165, %166
  store i32 %167, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %191, %158
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 13
  br i1 %170, label %171, label %194

171:                                              ; preds = %168
  %172 = load i32*, i32** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load double, double* @uiPi, align 8
  %177 = load double, double* @uiPi, align 8
  %178 = fdiv double %177, 5.000000e+00
  %179 = fadd double %176, %178
  %180 = load double, double* %9, align 8
  %181 = call i32 @uiDrawPathNewFigureWithArc(i32* %172, i32 %173, i32 %174, i32 %175, double %179, double %180, i32 0)
  %182 = load double, double* %10, align 8
  %183 = load double, double* %9, align 8
  %184 = fadd double %183, %182
  store double %184, double* %9, align 8
  %185 = load i32, i32* %6, align 4
  %186 = mul nsw i32 2, %185
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %171
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %168

194:                                              ; preds = %168
  %195 = load i32, i32* %6, align 4
  %196 = mul nsw i32 2, %195
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %201, %202
  store i32 %203, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %231, %194
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %205, 13
  br i1 %206, label %207, label %234

207:                                              ; preds = %204
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @uiDrawPathNewFigure(i32* %208, i32 %209, i32 %210)
  %212 = load i32*, i32** %3, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load double, double* @uiPi, align 8
  %217 = load double, double* @uiPi, align 8
  %218 = fdiv double %217, 5.000000e+00
  %219 = fadd double %216, %218
  %220 = load double, double* %9, align 8
  %221 = call i32 @uiDrawPathArcTo(i32* %212, i32 %213, i32 %214, i32 %215, double %219, double %220, i32 0)
  %222 = load double, double* %10, align 8
  %223 = load double, double* %9, align 8
  %224 = fadd double %223, %222
  store double %224, double* %9, align 8
  %225 = load i32, i32* %6, align 4
  %226 = mul nsw i32 2, %225
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %207
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %204

234:                                              ; preds = %204
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @uiDrawPathEnd(i32* %235)
  %237 = load i32, i32* @uiDrawBrushTypeSolid, align 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %237, i32* %238, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i64 0, i64* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i64 0, i64* %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load i32, i32* @uiDrawLineCapFlat, align 4
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* @uiDrawLineJoinMiter, align 4
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %245, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load i32, i32* @uiDrawDefaultMiterLimit, align 4
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %248, i32* %249, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @uiDrawStroke(i32 %252, i32* %253, %struct.TYPE_8__* %12, %struct.TYPE_7__* %13)
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 @uiDrawFreePath(i32* %255)
  ret void
}

declare dso_local i32* @uiDrawNewPath(i32) #1

declare dso_local i32 @uiDrawPathNewFigureWithArc(i32*, i32, i32, i32, double, double, i32) #1

declare dso_local i32 @uiDrawPathNewFigure(i32*, i32, i32) #1

declare dso_local i32 @uiDrawPathArcTo(i32*, i32, i32, i32, double, double, i32) #1

declare dso_local i32 @uiDrawPathEnd(i32*) #1

declare dso_local i32 @uiDrawStroke(i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @uiDrawFreePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
