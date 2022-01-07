; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_xor_vmx.c___xor_altivec_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = common dso_local global i32 0, align 4
@v2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xor_altivec_2(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @v1, align 4
  %9 = call i32 @DEFINE(i32 %8)
  %10 = load i32, i32* @v2, align 4
  %11 = call i32 @DEFINE(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 4
  %14 = udiv i64 %13, 4
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %29, %3
  %16 = load i32, i32* @v1, align 4
  %17 = call i32 @LOAD(i32 %16)
  %18 = load i32, i32* @v2, align 4
  %19 = call i32 @LOAD(i32 %18)
  %20 = load i32, i32* @v1, align 4
  %21 = load i32, i32* @v2, align 4
  %22 = call i32 @XOR(i32 %20, i32 %21)
  %23 = load i32, i32* @v1, align 4
  %24 = call i32 @STORE(i32 %23)
  %25 = load i32, i32* @v1, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* @v1, align 4
  %27 = load i32, i32* @v2, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* @v2, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %7, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %15, label %33

33:                                               ; preds = %29
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
