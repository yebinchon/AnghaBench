; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_htab.c_ps3_hpte_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_htab.c_ps3_hpte_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppc64_pft_size = common dso_local global i64 0, align 8
@PS3_LPAR_VAS_ID_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps3_hpte_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3_hpte_clear() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @ppc64_pft_size, align 8
  %4 = shl i64 1, %3
  %5 = lshr i64 %4, 4
  store i64 %5, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32, i32* @PS3_LPAR_VAS_ID_CURRENT, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @lv1_write_htab_entry(i32 %11, i64 %12, i32 0, i32 0)
  br label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %2, align 8
  br label %6

17:                                               ; preds = %6
  %18 = call i32 (...) @ps3_mm_shutdown()
  %19 = call i32 (...) @ps3_mm_vas_destroy()
  ret void
}

declare dso_local i32 @lv1_write_htab_entry(i32, i64, i32, i32) #1

declare dso_local i32 @ps3_mm_shutdown(...) #1

declare dso_local i32 @ps3_mm_vas_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
