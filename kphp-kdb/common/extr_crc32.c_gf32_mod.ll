; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_crc32.c_gf32_mod.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_crc32.c_gf32_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @gf32_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf32_mod(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 32
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 32
  %21 = zext i32 %20 to i64
  %22 = shl i64 79764919, %21
  %23 = load i64, i64* %3, align 8
  %24 = xor i64 %23, %22
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i64, i64* %3, align 8
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
