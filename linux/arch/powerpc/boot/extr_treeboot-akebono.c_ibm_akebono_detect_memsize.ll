; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-akebono.c_ibm_akebono_detect_memsize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-akebono.c_ibm_akebono_detect_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RANKS = common dso_local global i32 0, align 4
@DDR3_MR0CF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ibm_akebono_detect_memsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibm_akebono_detect_memsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MAX_RANKS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = load i64, i64* @DDR3_MR0CF, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = call i32 @mfdcrx(i64 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %28

18:                                               ; preds = %8
  %19 = load i32, i32* %1, align 4
  %20 = and i32 %19, 61440
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = ashr i32 %21, 12
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 8388608, %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %18, %17
  %29 = load i32, i32* %2, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %4

31:                                               ; preds = %4
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @mfdcrx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
