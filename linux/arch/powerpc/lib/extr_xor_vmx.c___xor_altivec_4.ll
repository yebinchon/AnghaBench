; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4
@v3 = common dso_local global i32 0, align 4
@v4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xor_altivec_4(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i32, i32* @v1, align 4
  %13 = call i32 @DEFINE(i32 %12)
  %14 = load i32, i32* @v2, align 4
  %15 = call i32 @DEFINE(i32 %14)
  %16 = load i32, i32* @v3, align 4
  %17 = call i32 @DEFINE(i32 %16)
  %18 = load i32, i32* @v4, align 4
  %19 = call i32 @DEFINE(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %20, 4
  %22 = udiv i64 %21, 4
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %51, %5
  %24 = load i32, i32* @v1, align 4
  %25 = call i32 @LOAD(i32 %24)
  %26 = load i32, i32* @v2, align 4
  %27 = call i32 @LOAD(i32 %26)
  %28 = load i32, i32* @v3, align 4
  %29 = call i32 @LOAD(i32 %28)
  %30 = load i32, i32* @v4, align 4
  %31 = call i32 @LOAD(i32 %30)
  %32 = load i32, i32* @v1, align 4
  %33 = load i32, i32* @v2, align 4
  %34 = call i32 @XOR(i32 %32, i32 %33)
  %35 = load i32, i32* @v3, align 4
  %36 = load i32, i32* @v4, align 4
  %37 = call i32 @XOR(i32 %35, i32 %36)
  %38 = load i32, i32* @v1, align 4
  %39 = load i32, i32* @v3, align 4
  %40 = call i32 @XOR(i32 %38, i32 %39)
  %41 = load i32, i32* @v1, align 4
  %42 = call i32 @STORE(i32 %41)
  %43 = load i32, i32* @v1, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* @v1, align 4
  %45 = load i32, i32* @v2, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* @v2, align 4
  %47 = load i32, i32* @v3, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* @v3, align 4
  %49 = load i32, i32* @v4, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* @v4, align 4
  br label %51

51:                                               ; preds = %23
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %11, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %23, label %55

55:                                               ; preds = %51
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
