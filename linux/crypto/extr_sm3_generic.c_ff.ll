; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sm3_generic.c_ff.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sm3_generic.c_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = xor i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = xor i32 %14, %15
  br label %29

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  br label %29

29:                                               ; preds = %17, %11
  %30 = phi i32 [ %16, %11 ], [ %28, %17 ]
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
