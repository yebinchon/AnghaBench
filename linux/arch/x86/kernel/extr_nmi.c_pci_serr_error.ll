; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_pci_serr_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_pci_serr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@NMI_SERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"NMI: PCI system error (SERR) for reason %02x on CPU %d.\0A\00", align 1
@panic_on_unrecovered_nmi = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"NMI: Not continuing\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Dazed and confused, but trying to continue\0A\00", align 1
@NMI_REASON_CLEAR_MASK = common dso_local global i8 0, align 1
@NMI_REASON_CLEAR_SERR = common dso_local global i8 0, align 1
@NMI_REASON_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.pt_regs*)* @pci_serr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_serr_error(i8 zeroext %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.pt_regs*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load i32, i32* @NMI_SERR, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %7 = call i64 @nmi_handle(i32 %5, %struct.pt_regs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %34

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = call i32 (...) @smp_processor_id()
  %14 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i64, i64* @panic_on_unrecovered_nmi, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = call i32 @nmi_panic(%struct.pt_regs* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %10
  %21 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @NMI_REASON_CLEAR_MASK, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = load i8, i8* @NMI_REASON_CLEAR_SERR, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  %31 = load i8, i8* %3, align 1
  %32 = load i32, i32* @NMI_REASON_PORT, align 4
  %33 = call i32 @outb(i8 zeroext %31, i32 %32)
  br label %34

34:                                               ; preds = %20, %9
  ret void
}

declare dso_local i64 @nmi_handle(i32, %struct.pt_regs*) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
