; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_do_kern_addr_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_do_kern_addr_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@X86_PF_PK = common dso_local global i64 0, align 8
@X86_PF_RSVD = common dso_local global i64 0, align 8
@X86_PF_USER = common dso_local global i64 0, align 8
@X86_PF_PROT = common dso_local global i64 0, align 8
@X86_TRAP_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64)* @do_kern_addr_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_kern_addr_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @X86_PF_PK, align 8
  %9 = and i64 %7, %8
  %10 = call i32 @WARN_ON_ONCE(i64 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @X86_PF_RSVD, align 8
  %13 = load i64, i64* @X86_PF_USER, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @X86_PF_PROT, align 8
  %16 = or i64 %14, %15
  %17 = and i64 %11, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @vmalloc_fault(i64 %20)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %42

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @spurious_kernel_fault(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %42

31:                                               ; preds = %25
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = load i32, i32* @X86_TRAP_PF, align 4
  %34 = call i64 @kprobe_page_fault(%struct.pt_regs* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %36, %30, %23
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i64 @vmalloc_fault(i64) #1

declare dso_local i64 @spurious_kernel_fault(i64, i64) #1

declare dso_local i64 @kprobe_page_fault(%struct.pt_regs*, i32) #1

declare dso_local i32 @bad_area_nosemaphore(%struct.pt_regs*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
