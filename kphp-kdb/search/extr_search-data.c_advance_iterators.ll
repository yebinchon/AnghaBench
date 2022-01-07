; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_advance_iterators.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_advance_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@MAX_ITEM_ID = common dso_local global i64 0, align 8
@reoptimize_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @advance_iterators(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_ITEM_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %336

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %334 [
    i32 132, label %22
    i32 129, label %26
    i32 128, label %26
    i32 133, label %63
    i32 130, label %150
    i32 131, label %245
  ]

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i32 0, i32* %24, align 8
  %25 = load i64, i64* @MAX_ITEM_ID, align 8
  store i64 %25, i64* %3, align 8
  br label %336

26:                                               ; preds = %18, %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ihe_skip_advance(%struct.TYPE_6__* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 132, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @reoptimize_flag, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @reoptimize_flag, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = load i64, i64* @MAX_ITEM_ID, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i64 %43, i64* %3, align 8
  br label %336

46:                                               ; preds = %26
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i64 %60, i64* %3, align 8
  br label %336

63:                                               ; preds = %18
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %8, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load i64, i64* @MAX_ITEM_ID, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @advance_iterators(%struct.TYPE_5__* %77, i64 %78)
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @MAX_ITEM_ID, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  store i64 %82, i64* %3, align 8
  br label %336

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %63
  br label %87

87:                                               ; preds = %129, %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %87
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load i64, i64* @MAX_ITEM_ID, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @advance_iterators(%struct.TYPE_5__* %105, i64 %108)
  %110 = icmp eq i64 %104, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i64, i64* @MAX_ITEM_ID, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  store i64 %112, i64* %3, align 8
  br label %336

115:                                              ; preds = %103
  br label %129

116:                                              ; preds = %95
  %117 = load i64, i64* @MAX_ITEM_ID, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @advance_iterators(%struct.TYPE_5__* %118, i64 %121)
  %123 = icmp eq i64 %117, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i64, i64* @MAX_ITEM_ID, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  store i64 %125, i64* %3, align 8
  br label %336

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %115
  br label %87

130:                                              ; preds = %87
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  store i64 %147, i64* %3, align 8
  br label %336

150:                                              ; preds = %18
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %7, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %8, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %150
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @advance_iterators(%struct.TYPE_5__* %163, i64 %164)
  br label %166

166:                                              ; preds = %162, %150
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %5, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %174 = load i64, i64* %5, align 8
  %175 = call i64 @advance_iterators(%struct.TYPE_5__* %173, i64 %174)
  br label %176

176:                                              ; preds = %172, %166
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp slt i64 %179, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %176
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  store i64 %197, i64* %3, align 8
  br label %336

200:                                              ; preds = %176
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %203, %206
  br i1 %207, label %208, label %224

208:                                              ; preds = %200
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  store i64 %221, i64* %3, align 8
  br label %336

224:                                              ; preds = %200
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  store i64 %242, i64* %3, align 8
  br label %336

245:                                              ; preds = %18
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  store %struct.TYPE_5__* %248, %struct.TYPE_5__** %7, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  store %struct.TYPE_5__* %251, %struct.TYPE_5__** %8, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %5, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %245
  %258 = load i64, i64* @MAX_ITEM_ID, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %260 = load i64, i64* %5, align 8
  %261 = call i64 @advance_iterators(%struct.TYPE_5__* %259, i64 %260)
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i64, i64* @MAX_ITEM_ID, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  store i64 %264, i64* %266, align 8
  store i64 %264, i64* %3, align 8
  br label %336

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %267, %245
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %271, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %268
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @advance_iterators(%struct.TYPE_5__* %277, i64 %280)
  br label %282

282:                                              ; preds = %276, %268
  br label %283

283:                                              ; preds = %312, %282
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %286, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %283
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @MAX_ITEM_ID, align 8
  %296 = icmp slt i64 %294, %295
  br label %297

297:                                              ; preds = %291, %283
  %298 = phi i1 [ false, %283 ], [ %296, %291 ]
  br i1 %298, label %299, label %318

299:                                              ; preds = %297
  %300 = load i64, i64* @MAX_ITEM_ID, align 8
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, 1
  %306 = call i64 @advance_iterators(%struct.TYPE_5__* %301, i64 %305)
  %307 = icmp eq i64 %300, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %299
  %309 = load i64, i64* @MAX_ITEM_ID, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  store i64 %309, i64* %3, align 8
  br label %336

312:                                              ; preds = %299
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i64 @advance_iterators(%struct.TYPE_5__* %313, i64 %316)
  br label %283

318:                                              ; preds = %297
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 8
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  store i64 %331, i64* %3, align 8
  br label %336

334:                                              ; preds = %18
  %335 = call i32 @assert(i32 0)
  br label %336

336:                                              ; preds = %14, %22, %34, %46, %81, %111, %124, %130, %184, %208, %225, %263, %308, %318, %334
  %337 = load i64, i64* %3, align 8
  ret i64 %337
}

declare dso_local i32 @ihe_skip_advance(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
