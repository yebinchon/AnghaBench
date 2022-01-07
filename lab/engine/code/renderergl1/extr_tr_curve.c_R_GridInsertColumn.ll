; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_curve.c_R_GridInsertColumn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_curve.c_R_GridInsertColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, float*, float*, float, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@MAX_GRID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @R_GridInsertColumn(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  %24 = load i32, i32* @MAX_GRID_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @MAX_GRID_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = mul nuw i64 %25, %27
  %30 = alloca %struct.TYPE_13__, i64 %29, align 16
  store i64 %25, i64* %18, align 8
  store i64 %27, i64* %19, align 8
  %31 = load i32, i32* @MAX_GRID_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 2, %32
  %34 = alloca float, i64 %33, align 16
  store i64 %32, i64* %20, align 8
  store i32 0, i32* %16, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @MAX_GRID_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 1, i32* %23, align 4
  br label %224

43:                                               ; preds = %5
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %169, %43
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %172

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %112, %55
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %115

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %86
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, %27
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = call i32 @LerpDrawVert(%struct.TYPE_13__* %75, %struct.TYPE_13__* %87, %struct.TYPE_13__* %94)
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %62
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, %27
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %103
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VectorCopy(i32 %100, i32 %109)
  br label %111

111:                                              ; preds = %99, %62
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %56

115:                                              ; preds = %56
  %116 = load float, float* %11, align 4
  %117 = mul nsw i64 0, %32
  %118 = getelementptr inbounds float, float* %34, i64 %117
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  store float %116, float* %121, align 4
  br label %169

122:                                              ; preds = %51
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load float*, float** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = mul nsw i64 0, %32
  %131 = getelementptr inbounds float, float* %34, i64 %130
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  store float %129, float* %134, align 4
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %163, %122
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %27
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %144
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %159
  %161 = bitcast %struct.TYPE_13__* %148 to i8*
  %162 = bitcast %struct.TYPE_13__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 4, i1 false)
  br label %163

163:                                              ; preds = %141
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %135

166:                                              ; preds = %135
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %166, %115
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %47

172:                                              ; preds = %47
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %192, %172
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load float*, float** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = mul nsw i64 1, %32
  %188 = getelementptr inbounds float, float* %34, i64 %187
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  store float %186, float* %191, align 4
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %173

195:                                              ; preds = %173
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %15, align 4
  %198 = bitcast %struct.TYPE_13__* %30 to %struct.TYPE_13__**
  %199 = call i32 @MakeMeshNormals(i32 %196, i32 %197, %struct.TYPE_13__** %198)
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %22, align 4
  %204 = call i32 @VectorCopy(i32 %202, i32 %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 4
  %207 = load float, float* %206, align 8
  store float %207, float* %21, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %209 = call i32 @R_FreeSurfaceGridMesh(%struct.TYPE_12__* %208)
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = bitcast %struct.TYPE_13__* %30 to %struct.TYPE_13__**
  %213 = bitcast float* %34 to float**
  %214 = call %struct.TYPE_12__* @R_CreateSurfaceGridMesh(i32 %210, i32 %211, %struct.TYPE_13__** %212, float** %213)
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** %7, align 8
  %215 = load float, float* %21, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  store float %215, float* %217, align 8
  %218 = load i32, i32* %22, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @VectorCopy(i32 %218, i32 %221)
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %223, %struct.TYPE_12__** %6, align 8
  store i32 1, i32* %23, align 4
  br label %224

224:                                              ; preds = %195, %42
  %225 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LerpDrawVert(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @MakeMeshNormals(i32, i32, %struct.TYPE_13__**) #2

declare dso_local i32 @R_FreeSurfaceGridMesh(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_12__* @R_CreateSurfaceGridMesh(i32, i32, %struct.TYPE_13__**, float**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
