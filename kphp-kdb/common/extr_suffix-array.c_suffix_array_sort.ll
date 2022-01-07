; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_suffix-array.c_suffix_array_sort.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_suffix-array.c_suffix_array_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @suffix_array_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suffix_array_sort(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @dyn_mark(i32 %27)
  %29 = call i32* @zmalloc0(i32 1024)
  store i32* %29, i32** %10, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %45, %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %30

48:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %49

70:                                               ; preds = %49
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 4, %72
  %74 = call i8* @zmalloc(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  %79 = load i32, i32* %4, align 4
  %80 = mul nsw i32 4, %79
  %81 = call i8* @zmalloc(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 4, %83
  %85 = call i8* @zmalloc(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 4, %87
  %89 = call i8* @zmalloc(i32 %88)
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 4, %91
  %93 = call i8* @zmalloc(i32 %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %13, align 8
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %105, %70
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %95

108:                                              ; preds = %95
  store i32 1, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %109

130:                                              ; preds = %109
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @ss_bucket_sort(%struct.TYPE_6__* %11, i32* %131, i32 %132, i32* %133, i32 0)
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %240, %130
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %246

142:                                              ; preds = %137
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @ss_bucket_sort(%struct.TYPE_6__* %11, i32* %143, i32 %144, i32* %145, i32 %146)
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @ss_bucket_sort(%struct.TYPE_6__* %11, i32* %148, i32 %149, i32* %150, i32 0)
  store i32 0, i32* %6, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  store i32 0, i32* %157, align 4
  store i32 1, i32* %7, align 4
  br label %158

158:                                              ; preds = %237, %142
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %240

162:                                              ; preds = %158
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %15, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %16, align 4
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %178, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %162
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %187, i32* %191, align 4
  br label %237

192:                                              ; preds = %162
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %4, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %192
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  br label %209

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %208, %202
  %210 = phi i32 [ %207, %202 ], [ -1, %208 ]
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  br label %221

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %214
  %222 = phi i32 [ %219, %214 ], [ -1, %220 ]
  %223 = icmp ne i32 %210, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i32, i32* %6, align 4
  %229 = load i32*, i32** %13, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %229, i64 %235
  store i32 %228, i32* %236, align 4
  br label %237

237:                                              ; preds = %227, %185
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %158

240:                                              ; preds = %158
  %241 = load i32*, i32** %12, align 8
  store i32* %241, i32** %17, align 8
  %242 = load i32*, i32** %13, align 8
  store i32* %242, i32** %12, align 8
  %243 = load i32*, i32** %17, align 8
  store i32* %243, i32** %13, align 8
  %244 = load i32, i32* %14, align 4
  %245 = shl i32 %244, 1
  store i32 %245, i32* %14, align 4
  br label %137

246:                                              ; preds = %137
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @dyn_release(i32 %247)
  ret void
}

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32* @zmalloc0(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @ss_bucket_sort(%struct.TYPE_6__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dyn_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
