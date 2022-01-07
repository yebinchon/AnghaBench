; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_assemble.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc1_ctx = type { i32*, i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pc1_ctx*)* @pc1_assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc1_assemble(%struct.pc1_ctx* %0) #0 {
  %2 = alloca %struct.pc1_ctx*, align 8
  store %struct.pc1_ctx* %0, %struct.pc1_ctx** %2, align 8
  %3 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 256
  %9 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %8, %13
  %15 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %20 = call i32 @pc1_code(%struct.pc1_ctx* %19)
  %21 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 256
  %37 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %36, %41
  %43 = xor i32 %30, %42
  %44 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %49 = call i32 @pc1_code(%struct.pc1_ctx* %48)
  %50 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %52, %55
  %57 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 256
  %70 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %69, %74
  %76 = xor i32 %63, %75
  %77 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %76, i32* %80, align 4
  %81 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %82 = call i32 @pc1_code(%struct.pc1_ctx* %81)
  %83 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %85, %88
  %90 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 256
  %103 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %104 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %102, %107
  %109 = xor i32 %96, %108
  %110 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %111 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 %109, i32* %113, align 4
  %114 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %115 = call i32 @pc1_code(%struct.pc1_ctx* %114)
  %116 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %117 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %120 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %118, %121
  %123 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %124 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %126 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %131 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 256
  %136 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %137 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 9
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %135, %140
  %142 = xor i32 %129, %141
  %143 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %144 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  store i32 %142, i32* %146, align 4
  %147 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %148 = call i32 @pc1_code(%struct.pc1_ctx* %147)
  %149 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %150 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %153 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %151, %154
  %156 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %159 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 10
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 256
  %169 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %170 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 11
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %168, %173
  %175 = xor i32 %162, %174
  %176 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %177 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  store i32 %175, i32* %179, align 4
  %180 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %181 = call i32 @pc1_code(%struct.pc1_ctx* %180)
  %182 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %183 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %186 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %184, %187
  %189 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %190 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %192 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %197 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 12
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %200, 256
  %202 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %203 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 13
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %201, %206
  %208 = xor i32 %195, %207
  %209 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %210 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  store i32 %208, i32* %212, align 4
  %213 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %214 = call i32 @pc1_code(%struct.pc1_ctx* %213)
  %215 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %216 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %219 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %217, %220
  %222 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %223 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %225 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 6
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %230 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 14
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 256
  %235 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %236 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 15
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %234, %239
  %241 = xor i32 %228, %240
  %242 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %243 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 7
  store i32 %241, i32* %245, align 4
  %246 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %247 = call i32 @pc1_code(%struct.pc1_ctx* %246)
  %248 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %249 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %252 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %250, %253
  %255 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %256 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %258 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %257, i32 0, i32 4
  store i64 0, i64* %258, align 8
  ret void
}

declare dso_local i32 @pc1_code(%struct.pc1_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
