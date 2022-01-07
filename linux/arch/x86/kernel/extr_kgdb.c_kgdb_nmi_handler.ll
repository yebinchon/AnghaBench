; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_nmi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_nmi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@kgdb_active = common dso_local global i32 0, align 4
@was_in_debug_nmi = common dso_local global i32 0, align 4
@NMI_HANDLED = common dso_local global i32 0, align 4
@NMI_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pt_regs*)* @kgdb_nmi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_nmi_handler(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %31 [
    i32 129, label %8
    i32 128, label %22
  ]

8:                                                ; preds = %2
  %9 = call i32 @atomic_read(i32* @kgdb_active)
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = call i32 (...) @raw_smp_processor_id()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %15 = call i32 @kgdb_nmicallback(i32 %13, %struct.pt_regs* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @was_in_debug_nmi, align 4
  %18 = call i32 @set_bit(i32 %16, i32 %17)
  %19 = call i32 (...) @touch_nmi_watchdog()
  %20 = load i32, i32* @NMI_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %8
  br label %32

22:                                               ; preds = %2
  %23 = call i32 (...) @raw_smp_processor_id()
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @was_in_debug_nmi, align 4
  %26 = call i32 @__test_and_clear_bit(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @NMI_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %30, %21
  %33 = load i32, i32* @NMI_DONE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @kgdb_nmicallback(i32, %struct.pt_regs*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @__test_and_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
