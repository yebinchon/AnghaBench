; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_CullModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_CullModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64**, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

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
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 %19
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %28
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %107, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @R_CullLocalPointAndRadius(i32 %48, i32 %51)
  switch i32 %52, label %62 [
    i32 128, label %53
    i32 129, label %56
    i32 130, label %59
  ]

53:                                               ; preds = %45
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %220

56:                                               ; preds = %45
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %220

59:                                               ; preds = %45
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %62

62:                                               ; preds = %45, %59
  br label %106

63:                                               ; preds = %35
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @R_CullLocalPointAndRadius(i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = icmp eq %struct.TYPE_13__* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %11, align 4
  br label %84

76:                                               ; preds = %63
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @R_CullLocalPointAndRadius(i32 %79, i32 %82)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %76, %74
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 5), align 4
  store i32 128, i32* %3, align 4
  br label %220

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 129
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 4), align 4
  store i32 129, i32* %3, align 4
  br label %220

100:                                              ; preds = %94
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 3), align 4
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %62
  br label %107

107:                                              ; preds = %106, %2
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %204, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %207

111:                                              ; preds = %108
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64**, i64*** %113, align 8
  %115 = getelementptr inbounds i64*, i64** %114, i64 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64**, i64*** %122, align 8
  %124 = getelementptr inbounds i64*, i64** %123, i64 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %120, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %111
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64**, i64*** %133, align 8
  %135 = getelementptr inbounds i64*, i64** %134, i64 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  br label %151

141:                                              ; preds = %111
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64**, i64*** %143, align 8
  %145 = getelementptr inbounds i64*, i64** %144, i64 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  br label %151

151:                                              ; preds = %141, %131
  %152 = phi i64 [ %140, %131 ], [ %150, %141 ]
  %153 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %154 = load i64*, i64** %153, align 16
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64 %152, i64* %157, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i64**, i64*** %159, align 8
  %161 = getelementptr inbounds i64*, i64** %160, i64 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64**, i64*** %168, align 8
  %170 = getelementptr inbounds i64*, i64** %169, i64 1
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %166, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %151
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i64**, i64*** %179, align 8
  %181 = getelementptr inbounds i64*, i64** %180, i64 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  br label %197

187:                                              ; preds = %151
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i64**, i64*** %189, align 8
  %191 = getelementptr inbounds i64*, i64** %190, i64 1
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  br label %197

197:                                              ; preds = %187, %177
  %198 = phi i64 [ %186, %177 ], [ %196, %187 ]
  %199 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 1
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64 %198, i64* %203, align 8
  br label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %108

207:                                              ; preds = %108
  %208 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %209 = call i32 @R_CullLocalBox(i64** %208)
  switch i32 %209, label %217 [
    i32 129, label %210
    i32 130, label %213
    i32 128, label %216
  ]

210:                                              ; preds = %207
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 2), align 4
  store i32 129, i32* %3, align 4
  br label %220

213:                                              ; preds = %207
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 1), align 4
  store i32 130, i32* %3, align 4
  br label %220

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %207, %216
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0, i32 0), align 4
  store i32 128, i32* %3, align 4
  br label %220

220:                                              ; preds = %217, %213, %210, %97, %91, %56, %53
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @R_CullLocalPointAndRadius(i32, i32) #1

declare dso_local i32 @R_CullLocalBox(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
