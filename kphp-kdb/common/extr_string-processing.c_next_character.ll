; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_string-processing.c_next_character.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_string-processing.c_next_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32*)* @next_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @next_character(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 38
  br i1 %19, label %20, label %238

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 97
  br i1 %28, label %29, label %59

29:                                               ; preds = %20
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 109
  br i1 %37, label %38, label %59

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 112
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 59
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %5, align 4
  br label %237

59:                                               ; preds = %47, %38, %29, %20
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 35
  br i1 %67, label %68, label %125

68:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %101, %68
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 48, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 57
  br label %88

88:                                               ; preds = %80, %72
  %89 = phi i1 [ false, %72 ], [ %87, %80 ]
  br i1 %89, label %90, label %104

90:                                               ; preds = %88
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %91, 10
  %93 = load i8*, i8** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 %92, %98
  %100 = sub nsw i32 %99, 48
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %72

104:                                              ; preds = %88
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 59
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @remove_diacritics(i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sle i32 %115, 255
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %6, align 1
  br label %121

120:                                              ; preds = %112
  store i8 0, i8* %6, align 1
  br label %121

121:                                              ; preds = %120, %117
  br label %124

122:                                              ; preds = %104
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %121
  br label %236

125:                                              ; preds = %59
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 108
  br i1 %133, label %134, label %155

134:                                              ; preds = %125
  %135 = load i8*, i8** %3, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 116
  br i1 %142, label %143, label %155

143:                                              ; preds = %134
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 59
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %5, align 4
  store i8 60, i8* %6, align 1
  br label %235

155:                                              ; preds = %143, %134, %125
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 103
  br i1 %163, label %164, label %185

164:                                              ; preds = %155
  %165 = load i8*, i8** %3, align 8
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 116
  br i1 %172, label %173, label %185

173:                                              ; preds = %164
  %174 = load i8*, i8** %3, align 8
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 3
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 59
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 3
  store i32 %184, i32* %5, align 4
  store i8 62, i8* %6, align 1
  br label %234

185:                                              ; preds = %173, %164, %155
  %186 = load i8*, i8** %3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 113
  br i1 %193, label %194, label %233

194:                                              ; preds = %185
  %195 = load i8*, i8** %3, align 8
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 117
  br i1 %202, label %203, label %233

203:                                              ; preds = %194
  %204 = load i8*, i8** %3, align 8
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 3
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 111
  br i1 %211, label %212, label %233

212:                                              ; preds = %203
  %213 = load i8*, i8** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 116
  br i1 %220, label %221, label %233

221:                                              ; preds = %212
  %222 = load i8*, i8** %3, align 8
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 5
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 59
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 5
  store i32 %232, i32* %5, align 4
  store i8 34, i8* %6, align 1
  br label %233

233:                                              ; preds = %230, %221, %212, %203, %194, %185
  br label %234

234:                                              ; preds = %233, %182
  br label %235

235:                                              ; preds = %234, %152
  br label %236

236:                                              ; preds = %235, %124
  br label %237

237:                                              ; preds = %236, %56
  br label %274

238:                                              ; preds = %2
  %239 = load i8, i8* %6, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 60
  br i1 %241, label %242, label %273

242:                                              ; preds = %238
  %243 = load i8*, i8** %3, align 8
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 98
  br i1 %250, label %251, label %272

251:                                              ; preds = %242
  %252 = load i8*, i8** %3, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 114
  br i1 %259, label %260, label %272

260:                                              ; preds = %251
  %261 = load i8*, i8** %3, align 8
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 62
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 3
  store i32 %271, i32* %5, align 4
  store i8 10, i8* %6, align 1
  br label %272

272:                                              ; preds = %269, %260, %251, %242
  br label %273

273:                                              ; preds = %272, %238
  br label %274

274:                                              ; preds = %273, %237
  %275 = load i32, i32* %5, align 4
  %276 = load i32*, i32** %4, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i8, i8* %6, align 1
  ret i8 %277
}

declare dso_local i32 @remove_diacritics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
