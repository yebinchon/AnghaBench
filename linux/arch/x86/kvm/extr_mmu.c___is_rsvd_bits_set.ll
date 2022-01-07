; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___is_rsvd_bits_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___is_rsvd_bits_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsvd_bits_validate = type { i32**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsvd_bits_validate*, i32, i32)* @__is_rsvd_bits_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_rsvd_bits_set(%struct.rsvd_bits_validate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rsvd_bits_validate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rsvd_bits_validate* %0, %struct.rsvd_bits_validate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 7
  %11 = and i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 63
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %4, align 8
  %16 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %14, %26
  %28 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %4, align 8
  %29 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = or i32 %27, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
