; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_vmap.c_lwGetVMap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_vmap.c_lwGetVMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, float**, i8**, i8**, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @lwGetVMap(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = call i32 @set_flen(i32 0)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @getbytes(i32* %21, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %224

27:                                               ; preds = %5
  %28 = call i8* @_pico_calloc(i32 1, i32 48)
  %29 = bitcast i8* %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %14, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @_pico_free(i8* %33)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %224

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %13, align 8
  %40 = call i32 @set_flen(i32 0)
  %41 = call i32 @sgetU4(i8** %13)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = call i32 @sgetU2(i8** %13)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 @sgetS0(i8** %13)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = call i32 (...) @get_flen()
  store i32 %50, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %66, %35
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = icmp ult i8* %52, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = call i8* @sgetVX(i8** %13)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = call i8* @sgetVX(i8** %13)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %13, align 8
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i8* @_pico_calloc(i32 %80, i32 4)
  %82 = bitcast i8* %81 to i8**
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i8** %82, i8*** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i8**, i8*** %86, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %215

90:                                               ; preds = %76
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = call i8* @_pico_calloc(i32 %94, i32 4)
  %96 = bitcast i8* %95 to i8**
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  store i8** %96, i8*** %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %215

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %90
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %105
  %111 = load i32, i32* %18, align 4
  %112 = call i8* @_pico_calloc(i32 %111, i32 8)
  %113 = bitcast i8* %112 to float**
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  store float** %113, float*** %115, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load float**, float*** %117, align 8
  %119 = icmp ne float** %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  br label %215

121:                                              ; preds = %110
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = call float* @_pico_alloc(i32 %129)
  store float* %130, float** %15, align 8
  %131 = load float*, float** %15, align 8
  %132 = icmp ne float* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %121
  br label %215

134:                                              ; preds = %121
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %154, %134
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load float*, float** %15, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %140, i64 %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load float**, float*** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float*, float** %150, i64 %152
  store float* %147, float** %153, align 8
  br label %154

154:                                              ; preds = %139
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %16, align 4
  br label %135

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %157, %105
  %159 = load i8*, i8** %12, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8* %162, i8** %13, align 8
  store i32 0, i32* %16, align 4
  br label %163

163:                                              ; preds = %208, %158
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %211

167:                                              ; preds = %163
  %168 = call i8* @sgetVX(i8** %13)
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 5
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = call i8* @sgetVX(i8** %13)
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %178, i8** %184, align 8
  br label %185

185:                                              ; preds = %177, %167
  store i32 0, i32* %17, align 4
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = call float @sgetF4(i8** %13)
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load float**, float*** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float*, float** %196, i64 %198
  %200 = load float*, float** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %200, i64 %202
  store float %193, float* %203, align 4
  br label %204

204:                                              ; preds = %192
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %17, align 4
  br label %186

207:                                              ; preds = %186
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %163

211:                                              ; preds = %163
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @_pico_free(i8* %212)
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %214, %struct.TYPE_4__** %6, align 8
  br label %224

215:                                              ; preds = %133, %120, %103, %89
  %216 = load i8*, i8** %12, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i8*, i8** %12, align 8
  %220 = call i32 @_pico_free(i8* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %223 = call i32 @lwFreeVMap(%struct.TYPE_4__* %222)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %224

224:                                              ; preds = %221, %211, %32, %26
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %225
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i8* @getbytes(i32*, i32) #1

declare dso_local i8* @_pico_calloc(i32, i32) #1

declare dso_local i32 @_pico_free(i8*) #1

declare dso_local i32 @sgetU4(i8**) #1

declare dso_local i32 @sgetU2(i8**) #1

declare dso_local i32 @sgetS0(i8**) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i8* @sgetVX(i8**) #1

declare dso_local float* @_pico_alloc(i32) #1

declare dso_local float @sgetF4(i8**) #1

declare dso_local i32 @lwFreeVMap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
