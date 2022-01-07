; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp160r1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_vli_mmod_fast_secp160r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@num_words_secp160r1 = common dso_local global i32 0, align 4
@curve_secp160r1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vli_mmod_fast_secp160r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_fast_secp160r1(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @num_words_secp160r1, align 4
  %9 = mul nsw i32 2, %8
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @num_words_secp160r1, align 4
  %14 = call i32 @uECC_vli_clear(i32* %12, i32 %13)
  %15 = load i32, i32* @num_words_secp160r1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* @num_words_secp160r1, align 4
  %19 = call i32 @uECC_vli_clear(i32* %17, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @num_words_secp160r1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = call i32 @omega_mult_secp160r1(i32* %12, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @num_words_secp160r1, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* @num_words_secp160r1, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %12, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @num_words_secp160r1, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %12, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %40, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @num_words_secp160r1, align 4
  %45 = call i32 @uECC_vli_add(i32* %42, i32* %43, i32* %12, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @num_words_secp160r1, align 4
  %48 = call i32 @uECC_vli_clear(i32* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @num_words_secp160r1, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %12, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @num_words_secp160r1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %12, i64 %56
  %58 = getelementptr inbounds i32, i32* %57, i64 -1
  %59 = call i32 @omega_mult_secp160r1(i32* %54, i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @num_words_secp160r1, align 4
  %64 = call i32 @uECC_vli_add(i32* %60, i32* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %71, %2
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp160r1, i32 0, i32 0), align 4
  %68 = load i32, i32* @num_words_secp160r1, align 4
  %69 = call i64 @uECC_vli_cmp_unsafe(i32* %66, i32 %67, i32 %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curve_secp160r1, i32 0, i32 0), align 4
  %75 = load i32, i32* @num_words_secp160r1, align 4
  %76 = call i32 @uECC_vli_sub(i32* %72, i32* %73, i32 %74, i32 %75)
  br label %65

77:                                               ; preds = %65
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_clear(i32*, i32) #2

declare dso_local i32 @omega_mult_secp160r1(i32*, i32*) #2

declare dso_local i32 @uECC_vli_add(i32*, i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_cmp_unsafe(i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_sub(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
