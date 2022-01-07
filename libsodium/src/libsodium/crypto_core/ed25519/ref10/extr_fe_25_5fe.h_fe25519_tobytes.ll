; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_tobytes.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_tobytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe25519_tobytes(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @fe25519_reduce(i32* %6, i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 0
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %15, align 1
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %29, align 1
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 24
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 4
  %38 = or i32 %33, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  store i8 %39, i8* %41, align 1
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 6
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8 %46, i8* %48, align 1
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 14
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  store i8 %53, i8* %55, align 1
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 22
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 8
  %64 = or i32 %59, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  store i8 %65, i8* %67, align 1
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 5
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 7
  store i8 %72, i8* %74, align 1
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 13
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  store i8 %79, i8* %81, align 1
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 21
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %88, 32
  %90 = or i32 %85, %89
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 9
  store i8 %91, i8* %93, align 1
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 3
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 10
  store i8 %98, i8* %100, align 1
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 11
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 11
  store i8 %105, i8* %107, align 1
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 19
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 64
  %116 = or i32 %111, %115
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 12
  store i8 %117, i8* %119, align 1
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 2
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 13
  store i8 %124, i8* %126, align 1
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 10
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 14
  store i8 %131, i8* %133, align 1
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 18
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 15
  store i8 %138, i8* %140, align 1
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 0
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 16
  store i8 %145, i8* %147, align 1
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 8
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %3, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 17
  store i8 %152, i8* %154, align 1
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 16
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 18
  store i8 %159, i8* %161, align 1
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 24
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 6
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 2
  %170 = or i32 %165, %169
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 19
  store i8 %171, i8* %173, align 1
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 6
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 7
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %3, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 20
  store i8 %178, i8* %180, align 1
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  %183 = load i32, i32* %182, align 4
  %184 = ashr i32 %183, 15
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %3, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 21
  store i8 %185, i8* %187, align 1
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 23
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %194, 8
  %196 = or i32 %191, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 22
  store i8 %197, i8* %199, align 1
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 7
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 5
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %3, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 23
  store i8 %204, i8* %206, align 1
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 13
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %3, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 24
  store i8 %211, i8* %213, align 1
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 7
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 21
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, 16
  %222 = or i32 %217, %221
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %3, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 25
  store i8 %223, i8* %225, align 1
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 8
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = load i8*, i8** %3, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 26
  store i8 %230, i8* %232, align 1
  %233 = load i32*, i32** %5, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 8
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 12
  %237 = trunc i32 %236 to i8
  %238 = load i8*, i8** %3, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 27
  store i8 %237, i8* %239, align 1
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 8
  %242 = load i32, i32* %241, align 4
  %243 = ashr i32 %242, 20
  %244 = load i32*, i32** %5, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 9
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 64
  %248 = or i32 %243, %247
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %3, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 28
  store i8 %249, i8* %251, align 1
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 9
  %254 = load i32, i32* %253, align 4
  %255 = ashr i32 %254, 2
  %256 = trunc i32 %255 to i8
  %257 = load i8*, i8** %3, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 29
  store i8 %256, i8* %258, align 1
  %259 = load i32*, i32** %5, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 9
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 10
  %263 = trunc i32 %262 to i8
  %264 = load i8*, i8** %3, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 30
  store i8 %263, i8* %265, align 1
  %266 = load i32*, i32** %5, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 9
  %268 = load i32, i32* %267, align 4
  %269 = ashr i32 %268, 18
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %3, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 31
  store i8 %270, i8* %272, align 1
  ret void
}

declare dso_local i32 @fe25519_reduce(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
