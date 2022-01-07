; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_io_check_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_io_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@NMI_IO_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"NMI: IOCK error (debug interrupt?) for reason %02x on CPU %d.\0A\00", align 1
@panic_on_io_nmi = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"NMI IOCK error: Not continuing\00", align 1
@NMI_REASON_CLEAR_MASK = common dso_local global i8 0, align 1
@NMI_REASON_CLEAR_IOCHK = common dso_local global i8 0, align 1
@NMI_REASON_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.pt_regs*)* @io_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_check_error(i8 zeroext %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i32, i32* @NMI_IO_CHECK, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = call i64 @nmi_handle(i32 %6, %struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  %12 = load i8, i8* %3, align 1
  %13 = call i32 (...) @smp_processor_id()
  %14 = call i32 @pr_emerg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8 zeroext %12, i32 %13)
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = call i32 @show_regs(%struct.pt_regs* %15)
  %17 = load i64, i64* @panic_on_io_nmi, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = call i32 @nmi_panic(%struct.pt_regs* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %53

22:                                               ; preds = %11
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @NMI_REASON_CLEAR_MASK, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = load i8, i8* @NMI_REASON_CLEAR_IOCHK, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  %32 = load i8, i8* %3, align 1
  %33 = load i32, i32* @NMI_REASON_PORT, align 4
  %34 = call i32 @outb(i8 zeroext %32, i32 %33)
  store i64 20000, i64* %5, align 8
  br label %35

35:                                               ; preds = %39, %22
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 (...) @touch_nmi_watchdog()
  %41 = call i32 @udelay(i32 100)
  br label %35

42:                                               ; preds = %35
  %43 = load i8, i8* @NMI_REASON_CLEAR_IOCHK, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %3, align 1
  %50 = load i8, i8* %3, align 1
  %51 = load i32, i32* @NMI_REASON_PORT, align 4
  %52 = call i32 @outb(i8 zeroext %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %19, %10
  ret void
}

declare dso_local i64 @nmi_handle(i32, %struct.pt_regs*) #1

declare dso_local i32 @pr_emerg(i8*, i8 zeroext, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
