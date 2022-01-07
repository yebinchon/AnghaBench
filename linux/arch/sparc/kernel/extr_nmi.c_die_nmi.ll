; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_nmi.c_die_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_nmi.c_die_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DIE_NMIWATCHDOG = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8
@panic_on_oops = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Watchdog detected hard LOCKUP on cpu %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.pt_regs*, i32)* @die_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_nmi(i8* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @DIE_NMIWATCHDOG, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i32 @pt_regs_trap_type(%struct.pt_regs* %12)
  %14 = load i32, i32* @SIGINT, align 4
  %15 = call i64 @notify_die(i32 %9, i8* %10, %struct.pt_regs* %11, i32 0, i32 %13, i32 %14)
  %16 = load i64, i64* @NOTIFY_STOP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @panic_on_oops, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %18, %28, %25
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @pt_regs_trap_type(%struct.pt_regs*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
