; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_write_gc0_ebase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_write_gc0_ebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_mips64r6 = common dso_local global i64 0, align 8
@cpu_has_ebase_wg = common dso_local global i64 0, align 8
@MIPS_EBASE_WG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @kvm_vz_write_gc0_ebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_write_gc0_ebase(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @cpu_has_mips64r6, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @cpu_has_ebase_wg, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @MIPS_EBASE_WG, align 8
  %11 = or i64 %9, %10
  %12 = call i32 @write_gc0_ebase_64(i64 %11)
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @write_gc0_ebase_64(i64 %13)
  br label %22

15:                                               ; preds = %5
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MIPS_EBASE_WG, align 8
  %18 = or i64 %16, %17
  %19 = call i32 @write_gc0_ebase(i64 %18)
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @write_gc0_ebase(i64 %20)
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @write_gc0_ebase_64(i64) #1

declare dso_local i32 @write_gc0_ebase(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
