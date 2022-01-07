; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_xycz_add_c.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_xycz_add_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32)* @xycz_add_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xycz_add_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @vli_mod_sub(i32* %20, i32* %27, i32* %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @vli_mod_square_fast(i32* %20, i32* %20, i32* %32, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @vli_mod_mult_fast(i32* %35, i32* %36, i32* %20, i32* %37, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @vli_mod_mult_fast(i32* %40, i32* %41, i32* %20, i32* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @vli_mod_add(i32* %20, i32* %45, i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @vli_mod_sub(i32* %50, i32* %51, i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @vli_mod_sub(i32* %23, i32* %56, i32* %57, i32* %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @vli_mod_mult_fast(i32* %61, i32* %62, i32* %23, i32* %63, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @vli_mod_add(i32* %23, i32* %66, i32* %67, i32* %68, i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @vli_mod_square_fast(i32* %71, i32* %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @vli_mod_sub(i32* %76, i32* %77, i32* %23, i32* %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @vli_mod_sub(i32* %26, i32* %81, i32* %82, i32* %83, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @vli_mod_mult_fast(i32* %86, i32* %87, i32* %26, i32* %88, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @vli_mod_sub(i32* %91, i32* %92, i32* %93, i32* %94, i32 %95)
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @vli_mod_square_fast(i32* %26, i32* %20, i32* %97, i32 %98)
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @vli_mod_sub(i32* %26, i32* %26, i32* %23, i32* %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @vli_mod_sub(i32* %23, i32* %26, i32* %103, i32* %104, i32 %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @vli_mod_mult_fast(i32* %23, i32* %23, i32* %20, i32* %107, i32 %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @vli_mod_sub(i32* %110, i32* %23, i32* %111, i32* %112, i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @vli_set(i32* %115, i32* %26, i32 %116)
  %118 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_mod_sub(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_square_fast(i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_mult_fast(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_mod_add(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
