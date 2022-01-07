; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/lib/extr_memcpy.c___memcpy_aligned_dn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/lib/extr_memcpy.c___memcpy_aligned_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @__memcpy_aligned_dn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__memcpy_aligned_dn(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ALIGN_DEST_TO8_DN(i64 %14, i64 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %18, 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %23, %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %24, 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = call i64 asm "ldq $0,$1", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %27) #2, !srcloc !2
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %29, 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %31, 8
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %4, align 8
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @DO_REST_ALIGNED_DN(i64 %39, i64 %40, i64 %41)
  ret void
}

declare dso_local i32 @ALIGN_DEST_TO8_DN(i64, i64, i64) #1

declare dso_local i32 @DO_REST_ALIGNED_DN(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 479}
