; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_EccPoint_mult.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_EccPoint_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i64, %struct.TYPE_8__*)* @EccPoint_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EccPoint_mult(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %12, align 8
  %20 = load i32, i32* @uECC_MAX_WORDS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = mul nuw i64 2, %21
  %24 = alloca i32, i64 %23, align 16
  store i64 %21, i64* %14, align 8
  %25 = load i32, i32* @uECC_MAX_WORDS, align 4
  %26 = zext i32 %25 to i64
  %27 = mul nuw i64 2, %26
  %28 = alloca i32, i64 %27, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @uECC_MAX_WORDS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %19, align 4
  %35 = mul nsw i64 1, %21
  %36 = getelementptr inbounds i32, i32* %24, i64 %35
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @uECC_vli_set(i32* %36, i32* %37, i32 %38)
  %40 = mul nsw i64 1, %26
  %41 = getelementptr inbounds i32, i32* %28, i64 %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @uECC_vli_set(i32* %41, i32* %45, i32 %46)
  %48 = mul nsw i64 1, %21
  %49 = getelementptr inbounds i32, i32* %24, i64 %48
  %50 = mul nsw i64 1, %26
  %51 = getelementptr inbounds i32, i32* %28, i64 %50
  %52 = mul nsw i64 0, %21
  %53 = getelementptr inbounds i32, i32* %24, i64 %52
  %54 = mul nsw i64 0, %26
  %55 = getelementptr inbounds i32, i32* %28, i64 %54
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = call i32 @XYcZ_initial_double(i32* %49, i32* %51, i32* %53, i32* %55, i32* %56, %struct.TYPE_8__* %57)
  %59 = load i64, i64* %11, align 8
  %60 = sub nsw i64 %59, 2
  store i64 %60, i64* %17, align 8
  br label %61

61:                                               ; preds = %111, %6
  %62 = load i64, i64* %17, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @uECC_vli_testBit(i32* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, %21
  %75 = getelementptr inbounds i32, i32* %24, i64 %74
  %76 = load i32, i32* %18, align 4
  %77 = sub nsw i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %26
  %80 = getelementptr inbounds i32, i32* %28, i64 %79
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %21
  %84 = getelementptr inbounds i32, i32* %24, i64 %83
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %26
  %88 = getelementptr inbounds i32, i32* %28, i64 %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = call i32 @XYcZ_addC(i32* %75, i32* %80, i32* %84, i32* %88, %struct.TYPE_8__* %89)
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %21
  %94 = getelementptr inbounds i32, i32* %24, i64 %93
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %26
  %98 = getelementptr inbounds i32, i32* %28, i64 %97
  %99 = load i32, i32* %18, align 4
  %100 = sub nsw i32 1, %99
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %101, %21
  %103 = getelementptr inbounds i32, i32* %24, i64 %102
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 1, %104
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %26
  %108 = getelementptr inbounds i32, i32* %28, i64 %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = call i32 @XYcZ_add(i32* %94, i32* %98, i32* %103, i32* %108, %struct.TYPE_8__* %109)
  br label %111

111:                                              ; preds = %64
  %112 = load i64, i64* %17, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %17, align 8
  br label %61

114:                                              ; preds = %61
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @uECC_vli_testBit(i32* %115, i64 0)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = sub nsw i32 1, %120
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %122, %21
  %124 = getelementptr inbounds i32, i32* %24, i64 %123
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 1, %125
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %26
  %129 = getelementptr inbounds i32, i32* %28, i64 %128
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %131, %21
  %133 = getelementptr inbounds i32, i32* %24, i64 %132
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %26
  %137 = getelementptr inbounds i32, i32* %28, i64 %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %139 = call i32 @XYcZ_addC(i32* %124, i32* %129, i32* %133, i32* %137, %struct.TYPE_8__* %138)
  %140 = mul nsw i64 1, %21
  %141 = getelementptr inbounds i32, i32* %24, i64 %140
  %142 = mul nsw i64 0, %21
  %143 = getelementptr inbounds i32, i32* %24, i64 %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @uECC_vli_modSub(i32* %31, i32* %141, i32* %143, i32 %146, i32 %147)
  %149 = load i32, i32* %18, align 4
  %150 = sub nsw i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %26
  %153 = getelementptr inbounds i32, i32* %28, i64 %152
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %155 = call i32 @uECC_vli_modMult_fast(i32* %31, i32* %31, i32* %153, %struct.TYPE_8__* %154)
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %158 = call i32 @uECC_vli_modMult_fast(i32* %31, i32* %31, i32* %156, %struct.TYPE_8__* %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @uECC_vli_modInv(i32* %31, i32* %31, i32 %161, i32 %162)
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = call i32 @uECC_vli_modMult_fast(i32* %31, i32* %31, i32* %167, %struct.TYPE_8__* %168)
  %170 = load i32, i32* %18, align 4
  %171 = sub nsw i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 %172, %21
  %174 = getelementptr inbounds i32, i32* %24, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %176 = call i32 @uECC_vli_modMult_fast(i32* %31, i32* %31, i32* %174, %struct.TYPE_8__* %175)
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %178, %21
  %180 = getelementptr inbounds i32, i32* %24, i64 %179
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, %26
  %184 = getelementptr inbounds i32, i32* %28, i64 %183
  %185 = load i32, i32* %18, align 4
  %186 = sub nsw i32 1, %185
  %187 = sext i32 %186 to i64
  %188 = mul nsw i64 %187, %21
  %189 = getelementptr inbounds i32, i32* %24, i64 %188
  %190 = load i32, i32* %18, align 4
  %191 = sub nsw i32 1, %190
  %192 = sext i32 %191 to i64
  %193 = mul nsw i64 %192, %26
  %194 = getelementptr inbounds i32, i32* %28, i64 %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %196 = call i32 @XYcZ_add(i32* %180, i32* %184, i32* %189, i32* %194, %struct.TYPE_8__* %195)
  %197 = mul nsw i64 0, %21
  %198 = getelementptr inbounds i32, i32* %24, i64 %197
  %199 = mul nsw i64 0, %26
  %200 = getelementptr inbounds i32, i32* %28, i64 %199
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %202 = call i32 @apply_z(i32* %198, i32* %200, i32* %31, %struct.TYPE_8__* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = mul nsw i64 0, %21
  %205 = getelementptr inbounds i32, i32* %24, i64 %204
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @uECC_vli_set(i32* %203, i32* %205, i32 %206)
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = mul nsw i64 0, %26
  %213 = getelementptr inbounds i32, i32* %28, i64 %212
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @uECC_vli_set(i32* %211, i32* %213, i32 %214)
  %216 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %216)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

declare dso_local i32 @XYcZ_initial_double(i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @uECC_vli_testBit(i32*, i64) #2

declare dso_local i32 @XYcZ_addC(i32*, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @XYcZ_add(i32*, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @uECC_vli_modSub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modMult_fast(i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @uECC_vli_modInv(i32*, i32*, i32, i32) #2

declare dso_local i32 @apply_z(i32*, i32*, i32*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
