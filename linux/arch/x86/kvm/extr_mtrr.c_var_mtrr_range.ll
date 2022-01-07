; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_var_mtrr_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_var_mtrr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mtrr_range = type { i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_mtrr_range*, i32*, i32*)* @var_mtrr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @var_mtrr_range(%struct.kvm_mtrr_range* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_mtrr_range*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_mtrr_range* %0, %struct.kvm_mtrr_range** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.kvm_mtrr_range*, %struct.kvm_mtrr_range** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mtrr_range, %struct.kvm_mtrr_range* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PAGE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.kvm_mtrr_range*, %struct.kvm_mtrr_range** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_mtrr_range, %struct.kvm_mtrr_range* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = or i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
