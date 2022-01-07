; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kprobe_ctlblk = type { i32 }
%struct.kprobe = type { %struct.TYPE_3__, i64 (%struct.kprobe*, %struct.pt_regs*)* }
%struct.TYPE_3__ = type { i64 }

@KPROBE_REENTER = common dso_local global i32 0, align 4
@KPROBE_HIT_ACTIVE = common dso_local global i32 0, align 4
@KPROBE_HIT_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @kprobe_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kprobe_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.kprobe_ctlblk*, align 8
  %5 = alloca %struct.kprobe*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %7, %struct.kprobe_ctlblk** %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call %struct.kprobe* @get_kprobe(i8* %14)
  store %struct.kprobe* %15, %struct.kprobe** %5, align 8
  %16 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %17 = icmp ne %struct.kprobe* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %1
  %19 = call i64 (...) @kprobe_running()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %23 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %24 = call i32 @kprobe_reenter_check(%struct.kprobe_ctlblk* %22, %struct.kprobe* %23)
  %25 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %26 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %27 = call i32 @push_kprobe(%struct.kprobe_ctlblk* %25, %struct.kprobe* %26)
  %28 = load i32, i32* @KPROBE_REENTER, align 4
  %29 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %30 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %58

31:                                               ; preds = %18
  %32 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %33 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %34 = call i32 @push_kprobe(%struct.kprobe_ctlblk* %32, %struct.kprobe* %33)
  %35 = load i32, i32* @KPROBE_HIT_ACTIVE, align 4
  %36 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %37 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %39 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %38, i32 0, i32 1
  %40 = load i64 (%struct.kprobe*, %struct.pt_regs*)*, i64 (%struct.kprobe*, %struct.pt_regs*)** %39, align 8
  %41 = icmp ne i64 (%struct.kprobe*, %struct.pt_regs*)* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %44 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %43, i32 0, i32 1
  %45 = load i64 (%struct.kprobe*, %struct.pt_regs*)*, i64 (%struct.kprobe*, %struct.pt_regs*)** %44, align 8
  %46 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = call i64 %45(%struct.kprobe* %46, %struct.pt_regs* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %52 = call i32 @pop_kprobe(%struct.kprobe_ctlblk* %51)
  %53 = call i32 (...) @preempt_enable_no_resched()
  store i32 1, i32* %2, align 4
  br label %68

54:                                               ; preds = %42, %31
  %55 = load i32, i32* @KPROBE_HIT_SS, align 4
  %56 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %57 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %21
  %59 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %4, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %61 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %62 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @enable_singlestep(%struct.kprobe_ctlblk* %59, %struct.pt_regs* %60, i64 %64)
  store i32 1, i32* %2, align 4
  br label %68

66:                                               ; preds = %1
  %67 = call i32 (...) @preempt_enable_no_resched()
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %58, %50
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local %struct.kprobe* @get_kprobe(i8*) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i32 @kprobe_reenter_check(%struct.kprobe_ctlblk*, %struct.kprobe*) #1

declare dso_local i32 @push_kprobe(%struct.kprobe_ctlblk*, %struct.kprobe*) #1

declare dso_local i32 @pop_kprobe(%struct.kprobe_ctlblk*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @enable_singlestep(%struct.kprobe_ctlblk*, %struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
