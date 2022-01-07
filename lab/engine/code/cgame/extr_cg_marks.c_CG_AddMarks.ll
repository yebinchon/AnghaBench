; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_AddMarks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_AddMarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32*, %struct.TYPE_13__*, %struct.TYPE_11__, i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@cg_addMarks = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@cg_activeMarkPolys = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@MARK_TOTAL_TIME = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@MARK_FADE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddMarks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg_addMarks, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %244

9:                                                ; preds = %0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_activeMarkPolys, i32 0, i32 6), align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %2, align 8
  br label %11

11:                                               ; preds = %242, %9
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, @cg_activeMarkPolys
  br i1 %13, label %14, label %244

14:                                               ; preds = %11
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MARK_TOTAL_TIME, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp sgt i64 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = call i32 @CG_FreeMarkPoly(%struct.TYPE_12__* %26)
  br label %242

28:                                               ; preds = %14
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %28
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = sitofp i64 %39 to double
  %41 = fdiv double %40, 3.000000e+03
  %42 = fmul double 4.500000e+02, %41
  %43 = fsub double 4.500000e+02, %42
  %44 = fptosi double %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 255
  br i1 %46, label %47, label %123

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %118, %61
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %76, i32* %85, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %92, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %108, i32* %117, align 4
  br label %118

118:                                              ; preds = %69
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %62

121:                                              ; preds = %62
  br label %122

122:                                              ; preds = %121, %51
  br label %123

123:                                              ; preds = %122, %34
  br label %124

124:                                              ; preds = %123, %28
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MARK_TOTAL_TIME, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %131 = sub nsw i64 %129, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @MARK_FADE_TIME, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %230

136:                                              ; preds = %124
  %137 = load i32, i32* %4, align 4
  %138 = mul nsw i32 255, %137
  %139 = load i32, i32* @MARK_FADE_TIME, align 4
  %140 = sdiv i32 %138, %139
  store i32 %140, i32* %5, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %136
  store i32 0, i32* %1, align 4
  br label %146

146:                                              ; preds = %164, %145
  %147 = load i32, i32* %1, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  store i32 %154, i32* %163, align 4
  br label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %1, align 4
  br label %146

167:                                              ; preds = %146
  br label %229

168:                                              ; preds = %136
  store i32 0, i32* %1, align 4
  br label %169

169:                                              ; preds = %225, %168
  %170 = load i32, i32* %1, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %228

176:                                              ; preds = %169
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %5, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %183, i32* %192, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %5, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 %199, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %5, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = load i32, i32* %1, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32 %215, i32* %224, align 4
  br label %225

225:                                              ; preds = %176
  %226 = load i32, i32* %1, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %1, align 4
  br label %169

228:                                              ; preds = %169
  br label %229

229:                                              ; preds = %228, %167
  br label %230

230:                                              ; preds = %229, %124
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = call i32 @trap_R_AddPolyToScene(i64 %233, i32 %237, %struct.TYPE_13__* %240)
  br label %242

242:                                              ; preds = %230, %25
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %243, %struct.TYPE_12__** %2, align 8
  br label %11

244:                                              ; preds = %8, %11
  ret void
}

declare dso_local i32 @CG_FreeMarkPoly(%struct.TYPE_12__*) #1

declare dso_local i32 @trap_R_AddPolyToScene(i64, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
