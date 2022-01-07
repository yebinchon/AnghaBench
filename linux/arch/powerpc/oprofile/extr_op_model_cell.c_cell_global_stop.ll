; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_global_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_global_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@profiling_mode = common dso_local global i64 0, align 8
@PPU_PROFILING = common dso_local global i64 0, align 8
@SPU_PROFILING_EVENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cell_global_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_global_stop() #0 {
  %1 = load i64, i64* @profiling_mode, align 8
  %2 = load i64, i64* @PPU_PROFILING, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @cell_global_stop_ppu()
  br label %15

6:                                                ; preds = %0
  %7 = load i64, i64* @profiling_mode, align 8
  %8 = load i64, i64* @SPU_PROFILING_EVENTS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @cell_global_stop_spu_events()
  br label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @cell_global_stop_spu_cycles()
  br label %14

14:                                               ; preds = %12, %10
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @cell_global_stop_ppu(...) #1

declare dso_local i32 @cell_global_stop_spu_events(...) #1

declare dso_local i32 @cell_global_stop_spu_cycles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
