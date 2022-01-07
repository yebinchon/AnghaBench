; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsort_run = type { i32, i32 }
%struct.tsort_store = type { i8**, i64 (i8*, i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.tsort_run*, i32, %struct.tsort_store*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge(i8** %0, %struct.tsort_run* %1, i32 %2, %struct.tsort_store* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tsort_run*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tsort_store*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store %struct.tsort_run* %1, %struct.tsort_run** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tsort_store* %3, %struct.tsort_store** %8, align 8
  %16 = load %struct.tsort_run*, %struct.tsort_run** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %16, i64 %19
  %21 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.tsort_run*, %struct.tsort_run** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %23, i64 %26
  %28 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.tsort_run*, %struct.tsort_run** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %30, i64 %33
  %35 = getelementptr inbounds %struct.tsort_run, %struct.tsort_run* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @MIN(i32 %38, i32 %39)
  %41 = call i64 @resize(%struct.tsort_store* %37, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %269

44:                                               ; preds = %4
  %45 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %46 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  store i8** %47, i8*** %12, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %160

51:                                               ; preds = %44
  %52 = load i8**, i8*** %12, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8** %52, i8** %56, i32 %60)
  store i32 0, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %156, %51
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %159

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %79, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %78
  %87 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %88 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %87, i32 0, i32 1
  %89 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %88, align 8
  %90 = load i8**, i8*** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %101 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 %89(i8* %94, i8* %99, i32 %102)
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %86
  %106 = load i8**, i8*** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  store i8* %111, i8** %115, align 8
  br label %127

116:                                              ; preds = %86
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %116, %105
  br label %155

128:                                              ; preds = %78, %74
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load i8**, i8*** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %138, i8** %142, align 8
  br label %154

143:                                              ; preds = %128
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* %149, i8** %153, align 8
  br label %154

154:                                              ; preds = %143, %132
  br label %155

155:                                              ; preds = %154, %127
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %66

159:                                              ; preds = %66
  br label %269

160:                                              ; preds = %44
  %161 = load i8**, i8*** %12, align 8
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %162, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memcpy(i8** %161, i8** %167, i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %181, %182
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %265, %160
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %268

189:                                              ; preds = %185
  %190 = load i32, i32* %13, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %238

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %238

196:                                              ; preds = %192
  %197 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %198 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %197, i32 0, i32 1
  %199 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %198, align 8
  %200 = load i8**, i8*** %5, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %12, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.tsort_store*, %struct.tsort_store** %8, align 8
  %211 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i64 %199(i8* %204, i8* %209, i32 %212)
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %196
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %14, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8*, i8** %216, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  store i8* %221, i8** %225, align 8
  br label %237

226:                                              ; preds = %196
  %227 = load i8**, i8*** %12, align 8
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %13, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** %5, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* %232, i8** %236, align 8
  br label %237

237:                                              ; preds = %226, %215
  br label %264

238:                                              ; preds = %192, %189
  %239 = load i32, i32* %13, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i8**, i8*** %12, align 8
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %13, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  store i8* %247, i8** %251, align 8
  br label %263

252:                                              ; preds = %238
  %253 = load i8**, i8*** %5, align 8
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %14, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8*, i8** %253, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  store i8* %258, i8** %262, align 8
  br label %263

263:                                              ; preds = %252, %241
  br label %264

264:                                              ; preds = %263, %237
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %15, align 4
  br label %185

268:                                              ; preds = %185
  br label %269

269:                                              ; preds = %43, %268, %159
  ret void
}

declare dso_local i64 @resize(%struct.tsort_store*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
