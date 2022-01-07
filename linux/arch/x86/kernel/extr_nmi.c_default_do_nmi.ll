; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_default_do_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_nmi.c_default_do_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8 (...)* }
%struct.pt_regs = type { i32 }

@last_nmi_rip = common dso_local global i32 0, align 4
@swallow_nmi = common dso_local global i32 0, align 4
@NMI_LOCAL = common dso_local global i32 0, align 4
@nmi_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nmi_reason_lock = common dso_local global i32 0, align 4
@x86_platform = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@NMI_REASON_MASK = common dso_local global i8 0, align 1
@NMI_REASON_SERR = common dso_local global i8 0, align 1
@NMI_REASON_IOCHK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @default_do_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_do_nmi(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %5, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @last_nmi_rip, align 4
  %10 = call i32 @__this_cpu_read(i32 %9)
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @swallow_nmi, align 4
  %15 = call i32 @__this_cpu_write(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i32, i32* @last_nmi_rip, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__this_cpu_write(i32 %17, i32 %20)
  %22 = load i32, i32* @NMI_LOCAL, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = call i32 @nmi_handle(i32 %22, %struct.pt_regs* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nmi_stats, i32 0, i32 2), align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @__this_cpu_add(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @swallow_nmi, align 4
  %35 = call i32 @__this_cpu_write(i32 %34, i32 1)
  br label %36

36:                                               ; preds = %33, %30
  br label %97

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %42, %37
  %39 = call i32 @raw_spin_trylock(i32* @nmi_reason_lock)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %44 = call i32 @run_crash_ipi_callback(%struct.pt_regs* %43)
  %45 = call i32 (...) @cpu_relax()
  br label %38

46:                                               ; preds = %38
  %47 = load i8 (...)*, i8 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_platform, i32 0, i32 0), align 8
  %48 = call zeroext i8 (...) %47()
  store i8 %48, i8* %3, align 1
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @NMI_REASON_MASK, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %46
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @NMI_REASON_SERR, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i8, i8* %3, align 1
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = call i32 @pci_serr_error(i8 zeroext %63, %struct.pt_regs* %64)
  br label %78

66:                                               ; preds = %55
  %67 = load i8, i8* %3, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @NMI_REASON_IOCHK, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i8, i8* %3, align 1
  %75 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %76 = call i32 @io_check_error(i8 zeroext %74, %struct.pt_regs* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nmi_stats, i32 0, i32 1), align 4
  %80 = call i32 @__this_cpu_add(i32 %79, i32 1)
  %81 = call i32 @raw_spin_unlock(i32* @nmi_reason_lock)
  br label %97

82:                                               ; preds = %46
  %83 = call i32 @raw_spin_unlock(i32* @nmi_reason_lock)
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @swallow_nmi, align 4
  %88 = call i32 @__this_cpu_read(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nmi_stats, i32 0, i32 0), align 4
  %92 = call i32 @__this_cpu_add(i32 %91, i32 1)
  br label %97

93:                                               ; preds = %86, %82
  %94 = load i8, i8* %3, align 1
  %95 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %96 = call i32 @unknown_nmi_error(i8 zeroext %94, %struct.pt_regs* %95)
  br label %97

97:                                               ; preds = %36, %78, %93, %90
  ret void
}

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @nmi_handle(i32, %struct.pt_regs*) #1

declare dso_local i32 @__this_cpu_add(i32, i32) #1

declare dso_local i32 @raw_spin_trylock(i32*) #1

declare dso_local i32 @run_crash_ipi_callback(%struct.pt_regs*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pci_serr_error(i8 zeroext, %struct.pt_regs*) #1

declare dso_local i32 @io_check_error(i8 zeroext, %struct.pt_regs*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @unknown_nmi_error(i8 zeroext, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
