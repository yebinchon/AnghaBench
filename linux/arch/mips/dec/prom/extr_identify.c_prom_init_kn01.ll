; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/dec/prom/extr_identify.c_prom_init_kn01.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/dec/prom/extr_identify.c_prom_init_kn01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KN01_SLOT_BASE = common dso_local global i64 0, align 8
@dec_kn_slot_base = common dso_local global i64 0, align 8
@KN01_SLOT_SIZE = common dso_local global i32 0, align 4
@dec_kn_slot_size = common dso_local global i32 0, align 4
@KN01_RTC = common dso_local global i64 0, align 8
@dec_rtc_base = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prom_init_kn01 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prom_init_kn01() #0 {
  %1 = load i64, i64* @KN01_SLOT_BASE, align 8
  store i64 %1, i64* @dec_kn_slot_base, align 8
  %2 = load i32, i32* @KN01_SLOT_SIZE, align 4
  store i32 %2, i32* @dec_kn_slot_size, align 4
  %3 = load i64, i64* @dec_kn_slot_base, align 8
  %4 = load i64, i64* @KN01_RTC, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i64 @CKSEG1ADDR(i64 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @dec_rtc_base, align 8
  ret void
}

declare dso_local i64 @CKSEG1ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
