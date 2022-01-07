; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_isa-irq.c_isa_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_isa-irq.c_isa_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@PCIIACK_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @isa_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isa_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load i64, i64* @PCIIACK_BASE, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @_ISA_IRQ(i32 0)
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @_ISA_IRQ(i32 16)
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call i32 @do_bad_IRQ(%struct.irq_desc* %16)
  br label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @generic_handle_irq(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @_ISA_IRQ(i32) #1

declare dso_local i32 @do_bad_IRQ(%struct.irq_desc*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
