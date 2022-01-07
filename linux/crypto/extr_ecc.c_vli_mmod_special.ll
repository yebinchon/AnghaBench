; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_special.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @vli_mmod_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_special(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %18 = mul nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %23 = mul nsw i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 2
  %29 = call i32 @vli_set(i32* %25, i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %38, %4
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vli_is_zero(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %25, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vli_umult(i32* %21, i32* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %25, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @vli_clear(i32* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = mul i32 %50, 2
  %52 = call i32 @vli_add(i32* %25, i32* %25, i32* %21, i32 %51)
  br label %30

53:                                               ; preds = %30
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @vli_set(i32* %21, i32* %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %21, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @vli_clear(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %67, %53
  %63 = load i32, i32* %8, align 4
  %64 = mul i32 %63, 2
  %65 = call i64 @vli_cmp(i32* %25, i32* %21, i32 %64)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = mul i32 %68, 2
  %70 = call i32 @vli_sub(i32* %25, i32* %25, i32* %21, i32 %69)
  br label %62

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @vli_set(i32* %72, i32* %25, i32 %73)
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_is_zero(i32*, i32) #2

declare dso_local i32 @vli_umult(i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_clear(i32*, i32) #2

declare dso_local i32 @vli_add(i32*, i32*, i32*, i32) #2

declare dso_local i64 @vli_cmp(i32*, i32*, i32) #2

declare dso_local i32 @vli_sub(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
