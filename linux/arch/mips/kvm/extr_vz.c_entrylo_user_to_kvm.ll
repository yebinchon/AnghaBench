; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_entrylo_user_to_kvm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_entrylo_user_to_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@MIPS_ENTRYLO_RI = common dso_local global i64 0, align 8
@MIPS_ENTRYLO_XI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @entrylo_user_to_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @entrylo_user_to_kvm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @BITS_PER_LONG, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i64, i64* @MIPS_ENTRYLO_RI, align 8
  %11 = load i64, i64* @MIPS_ENTRYLO_XI, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* %4, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %9, %1
  %25 = load i64, i64* %4, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
