; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_SetFocus.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_SetFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i64, i32)*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, %struct.TYPE_14__, %struct.TYPE_15__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__** }

@DC = common dso_local global %struct.TYPE_12__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@WINDOW_DECORATION = common dso_local global i32 0, align 4
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@WINDOW_VISIBLE = common dso_local global i32 0, align 4
@CVAR_ENABLE = common dso_local global i32 0, align 4
@CVAR_DISABLE = common dso_local global i32 0, align 4
@CVAR_SHOW = common dso_local global i32 0, align 4
@CVAR_HIDE = common dso_local global i32 0, align 4
@ITEM_TYPE_TEXT = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_SetFocus(%struct.TYPE_17__* %0, float %1, float %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i64* %16, i64** %10, align 8
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WINDOW_DECORATION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WINDOW_VISIBLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36, %28, %20, %3
  %45 = load i64, i64* @qfalse, align 8
  store i64 %45, i64* %4, align 8
  br label %215

46:                                               ; preds = %36
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %12, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CVAR_ENABLE, align 4
  %55 = load i32, i32* @CVAR_DISABLE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = load i32, i32* @CVAR_ENABLE, align 4
  %62 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_17__* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @qfalse, align 8
  store i64 %65, i64* %4, align 8
  br label %215

66:                                               ; preds = %59, %46
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CVAR_SHOW, align 4
  %71 = load i32, i32* @CVAR_HIDE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = load i32, i32* @CVAR_SHOW, align 4
  %78 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_17__* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* @qfalse, align 8
  store i64 %81, i64* %4, align 8
  br label %215

82:                                               ; preds = %75, %66
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = call %struct.TYPE_17__* @Menu_ClearFocus(i64 %85)
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %9, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ITEM_TYPE_TEXT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %82
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 5
  %95 = bitcast %struct.TYPE_15__* %13 to i8*
  %96 = bitcast %struct.TYPE_15__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 16, i1 false)
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %98
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 8
  %104 = load float, float* %6, align 4
  %105 = load float, float* %7, align 4
  %106 = call i64 @Rect_ContainsPoint(%struct.TYPE_15__* %13, float %104, float %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %92
  %109 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  store i64* %121, i64** %10, align 8
  br label %122

122:                                              ; preds = %119, %108
  %123 = load i64, i64* @qtrue, align 8
  store i64 %123, i64* %11, align 8
  br label %146

124:                                              ; preds = %92
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = icmp ne %struct.TYPE_17__* %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @Item_RunScript(%struct.TYPE_17__* %139, i64 %142)
  br label %144

144:                                              ; preds = %138, %127
  br label %145

145:                                              ; preds = %144, %124
  br label %146

146:                                              ; preds = %145, %122
  br label %174

147:                                              ; preds = %82
  %148 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %147
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @Item_RunScript(%struct.TYPE_17__* %159, i64 %162)
  br label %164

164:                                              ; preds = %158, %147
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  store i64* %171, i64** %10, align 8
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i64, i64* @qtrue, align 8
  store i64 %173, i64* %11, align 8
  br label %174

174:                                              ; preds = %172, %146
  %175 = load i64, i64* %11, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load i64*, i64** %10, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32 (i64, i32)*, i32 (i64, i32)** %182, align 8
  %184 = load i64*, i64** %10, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %187 = call i32 %183(i64 %185, i32 %186)
  br label %188

188:                                              ; preds = %180, %177, %174
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %210, %188
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %189
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %198, i64 %200
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %201, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = icmp eq %struct.TYPE_17__* %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %195
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %213

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %189

213:                                              ; preds = %205, %189
  %214 = load i64, i64* @qtrue, align 8
  store i64 %214, i64* %4, align 8
  br label %215

215:                                              ; preds = %213, %80, %64, %44
  %216 = load i64, i64* %4, align 8
  ret i64 %216
}

declare dso_local i32 @Item_EnableShowViaCvar(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @Menu_ClearFocus(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_15__*, float, float) #1

declare dso_local i32 @Item_RunScript(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
