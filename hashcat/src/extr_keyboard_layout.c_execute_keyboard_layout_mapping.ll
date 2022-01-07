; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_keyboard_layout.c_execute_keyboard_layout_mapping.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_keyboard_layout.c_execute_keyboard_layout_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_keyboard_layout_mapping(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %222, %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %223

31:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @MIN(i32 %34, i32 4)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 0
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* %18, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %18, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %18, align 4
  %67 = icmp sgt i32 %66, 3
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 %76, 0
  %78 = load i32, i32* %15, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* %16, align 4
  %82 = shl i32 %81, 16
  %83 = or i32 %80, %82
  %84 = load i32, i32* %17, align 4
  %85 = shl i32 %84, 24
  %86 = or i32 %83, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %20, align 4
  br label %88

88:                                               ; preds = %202, %75
  %89 = load i32, i32* %20, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %205

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @find_keyboard_layout_map(i32 %92, i32 %93, %struct.TYPE_4__* %94, i32 %95)
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %202

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  switch i32 %113, label %198 [
    i32 1, label %114
    i32 2, label %123
    i32 3, label %140
    i32 4, label %165
  ]

114:                                              ; preds = %100
  %115 = load i32, i32* %22, align 4
  %116 = ashr i32 %115, 0
  %117 = and i32 %116, 255
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %198

123:                                              ; preds = %100
  %124 = load i32, i32* %22, align 4
  %125 = ashr i32 %124, 0
  %126 = and i32 %125, 255
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %22, align 4
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 255
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  br label %198

140:                                              ; preds = %100
  %141 = load i32, i32* %22, align 4
  %142 = ashr i32 %141, 0
  %143 = and i32 %142, 255
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load i32, i32* %22, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* %22, align 4
  %158 = ashr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  br label %198

165:                                              ; preds = %100
  %166 = load i32, i32* %22, align 4
  %167 = ashr i32 %166, 0
  %168 = and i32 %167, 255
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load i32, i32* %22, align 4
  %175 = ashr i32 %174, 8
  %176 = and i32 %175, 255
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 %176, i32* %181, align 4
  %182 = load i32, i32* %22, align 4
  %183 = ashr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32, i32* %22, align 4
  %191 = ashr i32 %190, 24
  %192 = and i32 %191, 255
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  br label %198

198:                                              ; preds = %100, %165, %140, %123, %114
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %13, align 4
  br label %205

202:                                              ; preds = %99
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %20, align 4
  br label %88

205:                                              ; preds = %198, %88
  %206 = load i32, i32* %20, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %208, %205
  br label %27

223:                                              ; preds = %27
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %225 = load i32, i32* %224, align 16
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %225, i32* %227, align 4
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %229, i32* %231, align 4
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %233, i32* %235, align 4
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  store i32 %237, i32* %239, align 4
  %240 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 4
  %241 = load i32, i32* %240, align 16
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  store i32 %241, i32* %243, align 4
  %244 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 5
  store i32 %245, i32* %247, align 4
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %5, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 6
  store i32 %249, i32* %251, align 4
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 7
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %5, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 7
  store i32 %253, i32* %255, align 4
  %256 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 8
  %257 = load i32, i32* %256, align 16
  %258 = load i32*, i32** %5, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 8
  store i32 %257, i32* %259, align 4
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 9
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 9
  store i32 %261, i32* %263, align 4
  %264 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 10
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %5, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 10
  store i32 %265, i32* %267, align 4
  %268 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 11
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %5, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 11
  store i32 %269, i32* %271, align 4
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 12
  %273 = load i32, i32* %272, align 16
  %274 = load i32*, i32** %5, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 12
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 13
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %5, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 13
  store i32 %277, i32* %279, align 4
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 14
  %281 = load i32, i32* %280, align 8
  %282 = load i32*, i32** %5, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 14
  store i32 %281, i32* %283, align 4
  %284 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 15
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %5, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 15
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %11, align 4
  ret i32 %288
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @find_keyboard_layout_map(i32, i32, %struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
