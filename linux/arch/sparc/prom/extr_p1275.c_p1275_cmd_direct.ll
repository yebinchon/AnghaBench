; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_p1275.c_p1275_cmd_direct.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_p1275.c_p1275_cmd_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIL_NMI = common dso_local global i64 0, align 8
@prom_entry_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p1275_cmd_direct(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_save_flags(i64 %4)
  %6 = load i64, i64* @PIL_NMI, align 8
  %7 = call i32 @local_irq_restore(i64 %6)
  %8 = call i32 @raw_spin_lock(i32* @prom_entry_lock)
  %9 = call i32 @prom_world(i32 1)
  %10 = load i64*, i64** %2, align 8
  %11 = call i32 @prom_cif_direct(i64* %10)
  %12 = call i32 @prom_world(i32 0)
  %13 = call i32 @raw_spin_unlock(i32* @prom_entry_lock)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_restore(i64 %14)
  ret void
}

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @prom_world(i32) #1

declare dso_local i32 @prom_cif_direct(i64*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
