; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_check_resend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_check_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i32, i64 }
%struct.kvmppc_icp = type { i32 }

@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"resend %#x prio %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xics*, %struct.kvmppc_ics*, %struct.kvmppc_icp*)* @ics_check_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ics_check_resend(%struct.kvmppc_xics* %0, %struct.kvmppc_ics* %1, %struct.kvmppc_icp* %2) #0 {
  %4 = alloca %struct.kvmppc_xics*, align 8
  %5 = alloca %struct.kvmppc_ics*, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ics_irq_state*, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %4, align 8
  store %struct.kvmppc_ics* %1, %struct.kvmppc_ics** %5, align 8
  store %struct.kvmppc_icp* %2, %struct.kvmppc_icp** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @KVMPPC_XICS_IRQ_PER_ICS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %5, align 8
  %15 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %14, i32 0, i32 0
  %16 = load %struct.ics_irq_state*, %struct.ics_irq_state** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %16, i64 %18
  store %struct.ics_irq_state* %19, %struct.ics_irq_state** %8, align 8
  %20 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %21 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %13
  %25 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %26 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %29 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @XICS_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %4, align 8
  %33 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %34 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %35 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @icp_deliver_irq(%struct.kvmppc_xics* %32, %struct.kvmppc_icp* %33, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %24, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %9

42:                                               ; preds = %9
  ret void
}

declare dso_local i32 @XICS_DBG(i8*, i32, i32) #1

declare dso_local i32 @icp_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
