; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_5.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4
@v3 = common dso_local global i32 0, align 4
@v4 = common dso_local global i32 0, align 4
@v5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xor_altivec_5(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i32, i32* @v1, align 4
  %15 = call i32 @DEFINE(i32 %14)
  %16 = load i32, i32* @v2, align 4
  %17 = call i32 @DEFINE(i32 %16)
  %18 = load i32, i32* @v3, align 4
  %19 = call i32 @DEFINE(i32 %18)
  %20 = load i32, i32* @v4, align 4
  %21 = call i32 @DEFINE(i32 %20)
  %22 = load i32, i32* @v5, align 4
  %23 = call i32 @DEFINE(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = udiv i64 %24, 4
  %26 = udiv i64 %25, 4
  store i64 %26, i64* %13, align 8
  br label %27

27:                                               ; preds = %62, %6
  %28 = load i32, i32* @v1, align 4
  %29 = call i32 @LOAD(i32 %28)
  %30 = load i32, i32* @v2, align 4
  %31 = call i32 @LOAD(i32 %30)
  %32 = load i32, i32* @v3, align 4
  %33 = call i32 @LOAD(i32 %32)
  %34 = load i32, i32* @v4, align 4
  %35 = call i32 @LOAD(i32 %34)
  %36 = load i32, i32* @v5, align 4
  %37 = call i32 @LOAD(i32 %36)
  %38 = load i32, i32* @v1, align 4
  %39 = load i32, i32* @v2, align 4
  %40 = call i32 @XOR(i32 %38, i32 %39)
  %41 = load i32, i32* @v3, align 4
  %42 = load i32, i32* @v4, align 4
  %43 = call i32 @XOR(i32 %41, i32 %42)
  %44 = load i32, i32* @v1, align 4
  %45 = load i32, i32* @v5, align 4
  %46 = call i32 @XOR(i32 %44, i32 %45)
  %47 = load i32, i32* @v1, align 4
  %48 = load i32, i32* @v3, align 4
  %49 = call i32 @XOR(i32 %47, i32 %48)
  %50 = load i32, i32* @v1, align 4
  %51 = call i32 @STORE(i32 %50)
  %52 = load i32, i32* @v1, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* @v1, align 4
  %54 = load i32, i32* @v2, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* @v2, align 4
  %56 = load i32, i32* @v3, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* @v3, align 4
  %58 = load i32, i32* @v4, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* @v4, align 4
  %60 = load i32, i32* @v5, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* @v5, align 4
  br label %62

62:                                               ; preds = %27
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %13, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %27, label %66

66:                                               ; preds = %62
  ret void
}

declare dso_local i32 @DEFINE(i32) #1

declare dso_local i32 @LOAD(i32) #1

declare dso_local i32 @XOR(i32, i32) #1

declare dso_local i32 @STORE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
