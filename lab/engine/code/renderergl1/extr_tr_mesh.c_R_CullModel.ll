; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_mesh.c_R_CullModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_mesh.c_R_CullModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64**, i32, i32 }

@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @R_CullModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_CullModel(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [2 x i64*], align 16
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = bitcast %struct.TYPE_12__* %12 to i32*
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = bitcast i32* %18 to %struct.TYPE_13__*
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 %24
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = bitcast %struct.TYPE_12__* %26 to i32*
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = bitcast i32* %32 to %struct.TYPE_13__*
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %38
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %117, label %45

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %45
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @R_CullLocalPointAndRadius(i32 %58, i32 %61)
  switch i32 %62, label %72 [
    i32 128, label %63
    i32 129, label %66
    i32 130, label %69
  ]

63:                                               ; preds = %55
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %230

66:                                               ; preds = %55
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %230

69:                                               ; preds = %55
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %72

72:                                               ; preds = %55, %69
  br label %116

73:                                               ; preds = %45
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @R_CullLocalPointAndRadius(i32 %76, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = icmp eq %struct.TYPE_13__* %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %11, align 4
  br label %94

86:                                               ; preds = %73
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @R_CullLocalPointAndRadius(i32 %89, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %86, %84
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %230

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %230

110:                                              ; preds = %104
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %2
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %214, %117
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %217

121:                                              ; preds = %118
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64**, i64*** %123, align 8
  %125 = getelementptr inbounds i64*, i64** %124, i64 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i64**, i64*** %132, align 8
  %134 = getelementptr inbounds i64*, i64** %133, i64 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %130, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %121
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64**, i64*** %143, align 8
  %145 = getelementptr inbounds i64*, i64** %144, i64 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  br label %161

151:                                              ; preds = %121
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i64**, i64*** %153, align 8
  %155 = getelementptr inbounds i64*, i64** %154, i64 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  br label %161

161:                                              ; preds = %151, %141
  %162 = phi i64 [ %150, %141 ], [ %160, %151 ]
  %163 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %164 = load i64*, i64** %163, align 16
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 %162, i64* %167, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64**, i64*** %169, align 8
  %171 = getelementptr inbounds i64*, i64** %170, i64 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i64**, i64*** %178, align 8
  %180 = getelementptr inbounds i64*, i64** %179, i64 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %176, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %161
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i64**, i64*** %189, align 8
  %191 = getelementptr inbounds i64*, i64** %190, i64 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  br label %207

197:                                              ; preds = %161
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i64**, i64*** %199, align 8
  %201 = getelementptr inbounds i64*, i64** %200, i64 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  br label %207

207:                                              ; preds = %197, %187
  %208 = phi i64 [ %196, %187 ], [ %206, %197 ]
  %209 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 1
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %208, i64* %213, align 8
  br label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %118

217:                                              ; preds = %118
  %218 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %219 = call i32 @R_CullLocalBox(i64** %218)
  switch i32 %219, label %227 [
    i32 129, label %220
    i32 130, label %223
    i32 128, label %226
  ]

220:                                              ; preds = %217
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  store i32 129, i32* %3, align 4
  br label %230

223:                                              ; preds = %217
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  store i32 130, i32* %3, align 4
  br label %230

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %217, %226
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  store i32 128, i32* %3, align 4
  br label %230

230:                                              ; preds = %227, %223, %220, %107, %101, %66, %63
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @R_CullLocalPointAndRadius(i32, i32) #1

declare dso_local i32 @R_CullLocalBox(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
