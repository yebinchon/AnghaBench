; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4
@v3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xor_altivec_3(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i32, i32* @v1, align 4
  %11 = call i32 @DEFINE(i32 %10)
  %12 = load i32, i32* @v2, align 4
  %13 = call i32 @DEFINE(i32 %12)
  %14 = load i32, i32* @v3, align 4
  %15 = call i32 @DEFINE(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %16, 4
  %18 = udiv i64 %17, 4
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %40, %4
  %20 = load i32, i32* @v1, align 4
  %21 = call i32 @LOAD(i32 %20)
  %22 = load i32, i32* @v2, align 4
  %23 = call i32 @LOAD(i32 %22)
  %24 = load i32, i32* @v3, align 4
  %25 = call i32 @LOAD(i32 %24)
  %26 = load i32, i32* @v1, align 4
  %27 = load i32, i32* @v2, align 4
  %28 = call i32 @XOR(i32 %26, i32 %27)
  %29 = load i32, i32* @v1, align 4
  %30 = load i32, i32* @v3, align 4
  %31 = call i32 @XOR(i32 %29, i32 %30)
  %32 = load i32, i32* @v1, align 4
  %33 = call i32 @STORE(i32 %32)
  %34 = load i32, i32* @v1, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* @v1, align 4
  %36 = load i32, i32* @v2, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* @v2, align 4
  %38 = load i32, i32* @v3, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* @v3, align 4
  br label %40

40:                                               ; preds = %19
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %9, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %19, label %44

44:                                               ; preds = %40
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
