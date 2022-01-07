; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_..eventsperf_event.h_set_linear_ip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_..eventsperf_event.h_set_linear_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64, i32 }

@__KERNEL_CS = common dso_local global i32 0, align 4
@__USER_CS = common dso_local global i32 0, align 4
@X86_VM_MASK = common dso_local global i32 0, align 4
@PERF_EFLAGS_VM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64)* @set_linear_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_linear_ip(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @kernel_ip(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @__KERNEL_CS, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @__USER_CS, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @X86_VM_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load i32, i32* @PERF_EFLAGS_VM, align 4
  %24 = load i32, i32* @X86_VM_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %22, %12
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  ret void
}

declare dso_local i64 @kernel_ip(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
