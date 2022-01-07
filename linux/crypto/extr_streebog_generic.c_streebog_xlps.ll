; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_xlps.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_streebog_generic.c_streebog_xlps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streebog_uint512 = type { i32* }

@Ax = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streebog_uint512*, %struct.streebog_uint512*, %struct.streebog_uint512*)* @streebog_xlps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streebog_xlps(%struct.streebog_uint512* %0, %struct.streebog_uint512* %1, %struct.streebog_uint512* %2) #0 {
  %4 = alloca %struct.streebog_uint512*, align 8
  %5 = alloca %struct.streebog_uint512*, align 8
  %6 = alloca %struct.streebog_uint512*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.streebog_uint512* %0, %struct.streebog_uint512** %4, align 8
  store %struct.streebog_uint512* %1, %struct.streebog_uint512** %5, align 8
  store %struct.streebog_uint512* %2, %struct.streebog_uint512** %6, align 8
  %16 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %17 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %22 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %20, %25
  %27 = call i32 @le64_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %29 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %34 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %32, %37
  %39 = call i32 @le64_to_cpu(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %41 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %46 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %44, %49
  %51 = call i32 @le64_to_cpu(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %53 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %58 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %56, %61
  %63 = call i32 @le64_to_cpu(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %65 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %70 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %68, %73
  %75 = call i32 @le64_to_cpu(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %77 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %82 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %80, %85
  %87 = call i32 @le64_to_cpu(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %89 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %94 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 6
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %92, %97
  %99 = call i32 @le64_to_cpu(i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.streebog_uint512*, %struct.streebog_uint512** %4, align 8
  %101 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.streebog_uint512*, %struct.streebog_uint512** %5, align 8
  %106 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %104, %109
  %111 = call i32 @le64_to_cpu(i32 %110)
  store i32 %111, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %266, %3
  %113 = load i32, i32* %15, align 4
  %114 = icmp sle i32 %113, 7
  br i1 %114, label %115, label %269

115:                                              ; preds = %112
  %116 = load i32**, i32*** @Ax, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 255
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cpu_to_le64(i32 %123)
  %125 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %126 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i32**, i32*** @Ax, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 255
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @cpu_to_le64(i32 %138)
  %140 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %141 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, %139
  store i32 %147, i32* %145, align 4
  %148 = load i32**, i32*** @Ax, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 255
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @cpu_to_le64(i32 %155)
  %157 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %158 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, %156
  store i32 %164, i32* %162, align 4
  %165 = load i32**, i32*** @Ax, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 255
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @cpu_to_le64(i32 %172)
  %174 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %175 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %180, %173
  store i32 %181, i32* %179, align 4
  %182 = load i32**, i32*** @Ax, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 4
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = and i32 %185, 255
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @cpu_to_le64(i32 %189)
  %191 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %192 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %197, %190
  store i32 %198, i32* %196, align 4
  %199 = load i32**, i32*** @Ax, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 5
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, 255
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @cpu_to_le64(i32 %206)
  %208 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %209 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = xor i32 %214, %207
  store i32 %215, i32* %213, align 4
  %216 = load i32**, i32*** @Ax, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 6
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %13, align 4
  %220 = and i32 %219, 255
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @cpu_to_le64(i32 %223)
  %225 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %226 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %231, %224
  store i32 %232, i32* %230, align 4
  %233 = load i32**, i32*** @Ax, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 7
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = and i32 %236, 255
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @cpu_to_le64(i32 %240)
  %242 = load %struct.streebog_uint512*, %struct.streebog_uint512** %6, align 8
  %243 = getelementptr inbounds %struct.streebog_uint512, %struct.streebog_uint512* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = xor i32 %248, %241
  store i32 %249, i32* %247, align 4
  %250 = load i32, i32* %7, align 4
  %251 = ashr i32 %250, 8
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = ashr i32 %252, 8
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %9, align 4
  %255 = ashr i32 %254, 8
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %10, align 4
  %257 = ashr i32 %256, 8
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = ashr i32 %258, 8
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = ashr i32 %260, 8
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %13, align 4
  %263 = ashr i32 %262, 8
  store i32 %263, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = ashr i32 %264, 8
  store i32 %265, i32* %14, align 4
  br label %266

266:                                              ; preds = %115
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %112

269:                                              ; preds = %112
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
