; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_double_jacobian_default.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_double_jacobian_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@uECC_WORD_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_5__*)* @double_jacobian_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @double_jacobian_default(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %15 = load i32, i32* @uECC_MAX_WORDS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @uECC_MAX_WORDS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @uECC_vli_isZero(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %168

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = call i32 @uECC_vli_modSquare_fast(i32* %18, i32* %31, %struct.TYPE_5__* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = call i32 @uECC_vli_modMult_fast(i32* %21, i32* %34, i32* %18, %struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = call i32 @uECC_vli_modSquare_fast(i32* %18, i32* %18, %struct.TYPE_5__* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = call i32 @uECC_vli_modMult_fast(i32* %39, i32* %40, i32* %41, %struct.TYPE_5__* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = call i32 @uECC_vli_modSquare_fast(i32* %44, i32* %45, %struct.TYPE_5__* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @uECC_vli_modAdd(i32* %48, i32* %49, i32* %50, i32 %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @uECC_vli_modAdd(i32* %56, i32* %57, i32* %58, i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @uECC_vli_modSub(i32* %64, i32* %65, i32* %66, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = call i32 @uECC_vli_modMult_fast(i32* %72, i32* %73, i32* %74, %struct.TYPE_5__* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @uECC_vli_modAdd(i32* %77, i32* %78, i32* %79, i32 %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @uECC_vli_modAdd(i32* %85, i32* %86, i32* %87, i32 %90, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i64 @uECC_vli_testBit(i32* %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %30
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @uECC_vli_add(i32* %97, i32* %98, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @uECC_vli_rshift1(i32* %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @uECC_WORD_BITS, align 4
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 %107, %109
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %122

118:                                              ; preds = %30
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @uECC_vli_rshift1(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %96
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = call i32 @uECC_vli_modSquare_fast(i32* %123, i32* %124, %struct.TYPE_5__* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @uECC_vli_modSub(i32* %127, i32* %128, i32* %21, i32 %131, i32 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @uECC_vli_modSub(i32* %134, i32* %135, i32* %21, i32 %138, i32 %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @uECC_vli_modSub(i32* %21, i32* %21, i32* %141, i32 %144, i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %150 = call i32 @uECC_vli_modMult_fast(i32* %147, i32* %148, i32* %21, %struct.TYPE_5__* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @uECC_vli_modSub(i32* %18, i32* %151, i32* %18, i32 %154, i32 %155)
  %157 = load i32*, i32** %5, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @uECC_vli_set(i32* %157, i32* %158, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @uECC_vli_set(i32* %161, i32* %162, i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @uECC_vli_set(i32* %165, i32* %18, i32 %166)
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %122, %29
  %169 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %13, align 4
  switch i32 %170, label %172 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  ret void

172:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @uECC_vli_isZero(i32*, i32) #2

declare dso_local i32 @uECC_vli_modSquare_fast(i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uECC_vli_modMult_fast(i32*, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uECC_vli_modAdd(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modSub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i64 @uECC_vli_testBit(i32*, i32) #2

declare dso_local i32 @uECC_vli_add(i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_rshift1(i32*, i32) #2

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
