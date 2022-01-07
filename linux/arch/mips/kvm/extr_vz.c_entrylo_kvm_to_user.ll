; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_entrylo_kvm_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_entrylo_kvm_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@MIPS_ENTRYLO_RI = common dso_local global i32 0, align 4
@MIPS_ENTRYLO_XI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @entrylo_kvm_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entrylo_kvm_to_user(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @BITS_PER_LONG, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @MIPS_ENTRYLO_RI, align 4
  %11 = load i32, i32* @MIPS_ENTRYLO_XI, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* %2, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %18, %19
  %21 = shl i32 %20, 32
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %9, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
