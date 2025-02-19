; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/lib/extr_memcpy.c___memcpy_aligned_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/lib/extr_memcpy.c___memcpy_aligned_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @__memcpy_aligned_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__memcpy_aligned_up(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @ALIGN_DEST_TO8_UP(i64 %8, i64 %9, i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = sub nsw i64 %12, 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %17, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = call i64 asm "ldq $0,$1", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* %19) #2, !srcloc !2
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %21, 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 8
  store i64 %29, i64* %4, align 8
  br label %14

30:                                               ; preds = %14
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @DO_REST_ALIGNED_UP(i64 %33, i64 %34, i64 %35)
  ret void
}

declare dso_local i32 @ALIGN_DEST_TO8_UP(i64, i64, i64) #1

declare dso_local i32 @DO_REST_ALIGNED_UP(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 451}
