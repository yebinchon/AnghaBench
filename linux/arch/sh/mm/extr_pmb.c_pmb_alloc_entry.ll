; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_pmb.c_pmb_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmb_map = common dso_local global i32 0, align 4
@NR_PMB_ENTRIES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pmb_alloc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmb_alloc_entry() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pmb_map, align 4
  %3 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %4 = call i32 @find_first_zero_bit(i32 %2, i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @NR_PMB_ENTRIES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @pmb_map, align 4
  %14 = call i32 @__set_bit(i32 %12, i32 %13)
  br label %18

15:                                               ; preds = %7, %0
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
