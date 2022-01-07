; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_unknown_nmi_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_unknown_nmi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }

@NMI_UNKNOWN = common dso_local global i32 0, align 4
@nmi_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [56 x i8] c"Uhhuh. NMI received for unknown reason %02x on CPU %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Do you have a strange power saving mode enabled?\0A\00", align 1
@unknown_nmi_panic = common dso_local global i64 0, align 8
@panic_on_unrecovered_nmi = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"NMI: Not continuing\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Dazed and confused, but trying to continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.pt_regs*)* @unknown_nmi_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unknown_nmi_error(i8 zeroext %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load i32, i32* @NMI_UNKNOWN, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = call i32 @nmi_handle(i32 %6, %struct.pt_regs* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nmi_stats, i32 0, i32 0), align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__this_cpu_add(i32 %12, i32 %13)
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nmi_stats, i32 0, i32 0), align 4
  %17 = call i32 @__this_cpu_add(i32 %16, i32 1)
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 (...) @smp_processor_id()
  %21 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @unknown_nmi_panic, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* @panic_on_unrecovered_nmi, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %15
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = call i32 @nmi_panic(%struct.pt_regs* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @nmi_handle(i32, %struct.pt_regs*) #1

declare dso_local i32 @__this_cpu_add(i32, i32) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
