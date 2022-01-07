; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_ataints.c_atari_unregister_vme_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_ataints.c_atari_unregister_vme_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VME_SOURCE_BASE = common dso_local global i32 0, align 4
@VME_MAX_SOURCES = common dso_local global i32 0, align 4
@free_vme_vec_bitmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atari_unregister_vme_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @VME_SOURCE_BASE, align 4
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @VME_SOURCE_BASE, align 4
  %9 = load i32, i32* @VME_MAX_SOURCES, align 4
  %10 = add i32 %8, %9
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32, i32* @VME_SOURCE_BASE, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sub i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @free_vme_vec_bitmap, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @free_vme_vec_bitmap, align 4
  br label %21

21:                                               ; preds = %12, %6, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
