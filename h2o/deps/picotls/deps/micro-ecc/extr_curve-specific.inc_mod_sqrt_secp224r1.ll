; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_mod_sqrt_secp224r1.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_curve-specific.inc_mod_sqrt_secp224r1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@num_words_secp224r1 = common dso_local global i32 0, align 4
@curve_secp224r1 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @mod_sqrt_secp224r1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mod_sqrt_secp224r1(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @num_words_secp224r1, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @num_words_secp224r1, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @num_words_secp224r1, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i32, i32* @num_words_secp224r1, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i32, i32* @num_words_secp224r1, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %29 = load i32, i32* @num_words_secp224r1, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @mod_sqrt_secp224r1_rp(i32* %22, i32* %25, i32* %28, i32* %32, i32* %33)
  %35 = call i32 @mod_sqrt_secp224r1_rs(i32* %31, i32* %16, i32* %19, i32* %22, i32* %25, i32* %28)
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %52, %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 95
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* @num_words_secp224r1, align 4
  %41 = call i32 @uECC_vli_set(i32* %22, i32* %31, i32 %40)
  %42 = load i32, i32* @num_words_secp224r1, align 4
  %43 = call i32 @uECC_vli_set(i32* %25, i32* %16, i32 %42)
  %44 = load i32, i32* @num_words_secp224r1, align 4
  %45 = call i32 @uECC_vli_set(i32* %28, i32* %19, i32 %44)
  %46 = call i32 @mod_sqrt_secp224r1_rs(i32* %31, i32* %16, i32* %19, i32* %22, i32* %25, i32* %28)
  %47 = load i32, i32* @num_words_secp224r1, align 4
  %48 = call i64 @uECC_vli_isZero(i32* %31, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %36

55:                                               ; preds = %50, %36
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @curve_secp224r1, i32 0, i32 0), align 4
  %57 = load i32, i32* @num_words_secp224r1, align 4
  %58 = call i32 @uECC_vli_modInv(i32* %19, i32* %25, i32 %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @uECC_vli_modMult_fast(i32* %59, i32* %22, i32* %19, %struct.TYPE_3__* @curve_secp224r1)
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mod_sqrt_secp224r1_rp(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @mod_sqrt_secp224r1_rs(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

declare dso_local i64 @uECC_vli_isZero(i32*, i32) #2

declare dso_local i32 @uECC_vli_modInv(i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modMult_fast(i32*, i32*, i32*, %struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
