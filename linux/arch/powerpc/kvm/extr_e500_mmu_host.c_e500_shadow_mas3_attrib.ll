; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_e500_shadow_mas3_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu_host.c_e500_shadow_mas3_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAS3_ATTRIB_MASK = common dso_local global i32 0, align 4
@E500_TLB_USER_PERM_MASK = common dso_local global i32 0, align 4
@E500_TLB_SUPER_PERM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @e500_shadow_mas3_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e500_shadow_mas3_attrib(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MAS3_ATTRIB_MASK, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @E500_TLB_USER_PERM_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @E500_TLB_SUPER_PERM_MASK, align 4
  %17 = and i32 %15, %16
  %18 = shl i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %10, %2
  %22 = load i32, i32* @E500_TLB_SUPER_PERM_MASK, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
