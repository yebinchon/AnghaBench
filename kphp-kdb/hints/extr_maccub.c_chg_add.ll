; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chg_add(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32**, i32*** %3, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 0, %24
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %271

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = sub nsw i64 0, %31
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 0, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %5, align 8
  br label %72

42:                                               ; preds = %29
  %43 = load i32*, i32** %5, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = call i32* @dl_malloc(i32 12)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 2, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  br label %71

64:                                               ; preds = %42
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %57
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72
  br label %268

74:                                               ; preds = %2
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %262

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %250

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %102, %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -2
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %97, -2
  %99 = icmp sgt i32 %96, %98
  br label %100

100:                                              ; preds = %90, %86
  %101 = phi i1 [ false, %86 ], [ %99, %90 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %86

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %271

118:                                              ; preds = %109, %105
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %4, align 4
  %129 = xor i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load i32, i32* %4, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %271

137:                                              ; preds = %122, %118
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %153, %138
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %144, %140
  %152 = phi i1 [ false, %140 ], [ %150, %144 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %140

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %221

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %163, label %185

163:                                              ; preds = %160
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @trp_conv_from_array(i32* %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @dl_free(i32* %168, i32 %173)
  %175 = call i32* @dl_malloc(i32 8)
  store i32* %175, i32** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 0, %176
  %178 = load i32*, i32** %5, align 8
  %179 = bitcast i32* %178 to %struct.TYPE_3__*
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = bitcast i32* %182 to %struct.TYPE_3__*
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  br label %220

185:                                              ; preds = %160
  %186 = load i32, i32* %8, align 4
  %187 = mul nsw i32 %186, 2
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = mul i64 4, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32* @dl_malloc0(i32 %191)
  store i32* %192, i32** %6, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = mul nsw i32 %197, 2
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 4, %206
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memcpy(i32* %202, i32* %204, i32 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = mul i64 4, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @dl_free(i32* %210, i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = mul nsw i32 %217, 2
  store i32 %218, i32* %8, align 4
  %219 = load i32*, i32** %6, align 8
  store i32* %219, i32** %5, align 8
  br label %220

220:                                              ; preds = %185, %163
  br label %221

221:                                              ; preds = %220, %156
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %249

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %230, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %243

230:                                              ; preds = %226
  %231 = load i32*, i32** %5, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %10, align 4
  br label %226

243:                                              ; preds = %226
  %244 = load i32, i32* %4, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %243, %221
  br label %250

250:                                              ; preds = %249, %77
  %251 = load i32*, i32** %5, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i32*, i32** %5, align 8
  %257 = bitcast i32* %256 to %struct.TYPE_3__*
  %258 = load i32, i32* %4, align 4
  %259 = call i32 (...) @my_rand()
  %260 = call i32 @trp_add_or_set(%struct.TYPE_3__* %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %255, %250
  br label %267

262:                                              ; preds = %74
  %263 = load i32, i32* %4, align 4
  %264 = sub nsw i32 0, %263
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i32*
  store i32* %266, i32** %5, align 8
  br label %267

267:                                              ; preds = %262, %261
  br label %268

268:                                              ; preds = %267, %73
  %269 = load i32*, i32** %5, align 8
  %270 = load i32**, i32*** %3, align 8
  store i32* %269, i32** %270, align 8
  br label %271

271:                                              ; preds = %268, %131, %117, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32 @trp_conv_from_array(i32*, i32) #1

declare dso_local i32 @dl_free(i32*, i32) #1

declare dso_local i32* @dl_malloc0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @trp_add_or_set(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @my_rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
