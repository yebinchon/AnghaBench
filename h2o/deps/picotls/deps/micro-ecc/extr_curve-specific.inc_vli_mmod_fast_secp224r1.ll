; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp224r1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp224r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@num_words_secp224r1 = common dso_local global i32 0, align 4
@curve_secp224r1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vli_mmod_fast_secp224r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_fast_secp224r1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @num_words_secp224r1, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @num_words_secp224r1, align 4
  %15 = call i32 @uECC_vli_set(i32* %12, i32* %13, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @num_words_secp224r1, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %22, align 16
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, -4294967296
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @num_words_secp224r1, align 4
  %41 = call i64 @uECC_vli_add(i32* %38, i32* %39, i32* %11, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, -4294967296
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @num_words_secp224r1, align 4
  %57 = call i64 @uECC_vli_add(i32* %54, i32* %55, i32* %11, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 32
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 32
  %66 = or i32 %61, %65
  %67 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %66, i32* %67, align 16
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 32
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 32
  %76 = or i32 %71, %75
  %77 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 32
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 32
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 %86, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 32
  %92 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @num_words_secp224r1, align 4
  %96 = call i64 @uECC_vli_sub(i32* %93, i32* %94, i32* %11, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 32
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 32
  %109 = or i32 %104, %108
  %110 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %109, i32* %110, align 16
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 32
  %115 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 0, i32* %117, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @num_words_secp224r1, align 4
  %121 = call i64 @uECC_vli_sub(i32* %118, i32* %119, i32* %11, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %2
  br label %129

129:                                              ; preds = %139, %128
  %130 = load i32*, i32** %3, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp224r1, i32 0, i32 0), align 8
  %133 = load i32, i32* @num_words_secp224r1, align 4
  %134 = call i64 @uECC_vli_add(i32* %130, i32* %131, i32* %132, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %129, label %142

142:                                              ; preds = %139
  br label %157

143:                                              ; preds = %2
  br label %144

144:                                              ; preds = %150, %143
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp224r1, i32 0, i32 0), align 8
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* @num_words_secp224r1, align 4
  %148 = call i32 @uECC_vli_cmp_unsafe(i32* %145, i32* %146, i32 %147)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i32*, i32** %3, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp224r1, i32 0, i32 0), align 8
  %154 = load i32, i32* @num_words_secp224r1, align 4
  %155 = call i64 @uECC_vli_sub(i32* %151, i32* %152, i32* %153, i32 %154)
  br label %144

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %142
  %158 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %158)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_add(i32*, i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_sub(i32*, i32*, i32*, i32) #2

declare dso_local i32 @uECC_vli_cmp_unsafe(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
