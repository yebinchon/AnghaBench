; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RunLerpFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_RunLerpFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i64, i64, double, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64 }

@dp_realtime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @UI_RunLerpFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_RunLerpFrame(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %3
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @UI_SetLerpFrameAnimation(i32* %21, %struct.TYPE_5__* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i64, i64* @dp_realtime, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %197

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  br label %249

50:                                               ; preds = %31
  %51 = load i64, i64* @dp_realtime, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %56
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sdiv i64 %80, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %73
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %95, 2
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %73
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %101
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = srem i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %130

124:                                              ; preds = %101
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  %127 = load i64, i64* @dp_realtime, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %109
  br label %131

131:                                              ; preds = %130, %97
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %186

149:                                              ; preds = %131
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = sub nsw i32 %167, 1
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = srem i32 %169, %172
  %174 = sub nsw i32 %168, %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %185

177:                                              ; preds = %154, %149
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %160
  br label %186

186:                                              ; preds = %185, %136
  %187 = load i64, i64* @dp_realtime, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i64, i64* @dp_realtime, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %192, %186
  br label %197

197:                                              ; preds = %196, %25
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @dp_realtime, align 8
  %202 = add nsw i64 %201, 200
  %203 = icmp sgt i64 %200, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i64, i64* @dp_realtime, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %197
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @dp_realtime, align 8
  %213 = icmp sgt i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i64, i64* @dp_realtime, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 4
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %208
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %221, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %218
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 6
  store double 0.000000e+00, double* %228, align 8
  br label %249

229:                                              ; preds = %218
  %230 = load i64, i64* @dp_realtime, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %230, %233
  %235 = sitofp i64 %234 to float
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = sitofp i64 %242 to float
  %244 = fdiv float %235, %243
  %245 = fpext float %244 to double
  %246 = fsub double 1.000000e+00, %245
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 6
  store double %246, double* %248, align 8
  br label %249

249:                                              ; preds = %49, %229, %226
  ret void
}

declare dso_local i32 @UI_SetLerpFrameAnimation(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
