; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_int_on.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_int_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_icp = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_int_on(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca %struct.kvmppc_ics*, align 8
  %9 = alloca %struct.ics_irq_state*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %13, align 8
  store %struct.kvmppc_xics* %14, %struct.kvmppc_xics** %6, align 8
  %15 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %16 = icmp ne %struct.kvmppc_xics* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %21, i32 %22, i64* %10)
  store %struct.kvmppc_ics* %23, %struct.kvmppc_ics** %8, align 8
  %24 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %25 = icmp ne %struct.kvmppc_ics* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %31 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %30, i32 0, i32 0
  %32 = load %struct.ics_irq_state*, %struct.ics_irq_state** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %32, i64 %33
  store %struct.ics_irq_state* %34, %struct.ics_irq_state** %9, align 8
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %37 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.kvm* %35, i32 %38)
  store %struct.kvmppc_icp* %39, %struct.kvmppc_icp** %7, align 8
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %41 = icmp ne %struct.kvmppc_icp* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %29
  %46 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %47 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %48 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %49 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %50 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %53 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %56 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @write_xive(%struct.kvmppc_xics* %46, %struct.kvmppc_ics* %47, %struct.ics_irq_state* %48, i32 %51, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %62 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @icp_deliver_irq(%struct.kvmppc_xics* %61, %struct.kvmppc_icp* %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %60, %45
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %42, %26, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.kvm*, i32) #1

declare dso_local i64 @write_xive(%struct.kvmppc_xics*, %struct.kvmppc_ics*, %struct.ics_irq_state*, i32, i32, i32) #1

declare dso_local i32 @icp_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
