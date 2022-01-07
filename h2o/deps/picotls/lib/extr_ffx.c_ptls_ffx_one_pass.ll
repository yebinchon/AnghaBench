; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_ffx.c_ptls_ffx_one_pass.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_ffx.c_ptls_ffx_one_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptls_ffx_one_pass.zeros = internal constant [16 x i32] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32*, i64, i32, i32*, i32*, i32*, i32, i32)* @ptls_ffx_one_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptls_ffx_one_pass(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load i32*, i32** %19, align 8
  %26 = load i32*, i32** %20, align 8
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 16)
  %28 = load i32, i32* %22, align 4
  %29 = load i32*, i32** %19, align 8
  %30 = load i32, i32* %21, align 4
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, %28
  store i32 %35, i32* %33, align 4
  store i64 0, i64* %23, align 8
  br label %36

36:                                               ; preds = %50, %11
  %37 = load i64, i64* %23, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32*, i32** %13, align 8
  %42 = load i64, i64* %23, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = load i64, i64* %23, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i64, i64* %23, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %23, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @ptls_cipher_init(i32* %54, i32* %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @ptls_cipher_encrypt(i32* %57, i32* %58, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @ptls_ffx_one_pass.zeros, i64 0, i64 0), i32 16)
  store i64 0, i64* %24, align 8
  br label %60

60:                                               ; preds = %75, %53
  %61 = load i64, i64* %24, align 8
  %62 = load i64, i64* %16, align 8
  %63 = sub i64 %62, 1
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %24, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i64, i64* %24, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i64, i64* %24, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %24, align 8
  br label %60

78:                                               ; preds = %60
  %79 = load i32*, i32** %18, align 8
  %80 = load i64, i64* %16, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %17, align 4
  %85 = and i32 %83, %84
  %86 = load i32*, i32** %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %85
  store i32 %91, i32* %89, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ptls_cipher_init(i32*, i32*) #1

declare dso_local i32 @ptls_cipher_encrypt(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
