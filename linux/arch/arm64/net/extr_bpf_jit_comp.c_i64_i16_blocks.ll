; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_i64_i16_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_i64_i16_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @i64_i16_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i64_i16_blocks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 0
  %7 = and i32 %6, 65535
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 65535, i32 0
  %12 = icmp ne i32 %7, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 65535
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 65535, i32 0
  %21 = icmp ne i32 %16, %20
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %13, %22
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 32
  %26 = and i32 %25, 65535
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 65535, i32 0
  %31 = icmp ne i32 %26, %30
  %32 = zext i1 %31 to i32
  %33 = add nsw i32 %23, %32
  %34 = load i32, i32* %3, align 4
  %35 = ashr i32 %34, 48
  %36 = and i32 %35, 65535
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 65535, i32 0
  %41 = icmp ne i32 %36, %40
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %33, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
