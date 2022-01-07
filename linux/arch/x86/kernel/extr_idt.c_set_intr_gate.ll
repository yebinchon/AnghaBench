; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_idt.c_set_intr_gate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_idt.c_set_intr_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_data = type { i32, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@__KERNEL_CS = common dso_local global i32 0, align 4
@GATE_INTERRUPT = common dso_local global i32 0, align 4
@idt_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @set_intr_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_intr_gate(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.idt_data, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ugt i32 %6, 255
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = call i32 @memset(%struct.idt_data* %5, i32 0, i32 24)
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.idt_data, %struct.idt_data* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.idt_data, %struct.idt_data* %5, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @__KERNEL_CS, align 4
  %16 = getelementptr inbounds %struct.idt_data, %struct.idt_data* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @GATE_INTERRUPT, align 4
  %18 = getelementptr inbounds %struct.idt_data, %struct.idt_data* %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.idt_data, %struct.idt_data* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @idt_table, align 4
  %23 = call i32 @idt_setup_from_table(i32 %22, %struct.idt_data* %5, i32 1, i32 0)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.idt_data*, i32, i32) #1

declare dso_local i32 @idt_setup_from_table(i32, %struct.idt_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
