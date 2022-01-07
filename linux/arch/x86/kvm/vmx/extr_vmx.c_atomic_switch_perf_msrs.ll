; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_atomic_switch_perf_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_atomic_switch_perf_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32 }
%struct.perf_guest_switch_msr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @atomic_switch_perf_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic_switch_perf_msrs(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_guest_switch_msr*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %6 = call %struct.perf_guest_switch_msr* @perf_guest_get_msrs(i32* %4)
  store %struct.perf_guest_switch_msr* %6, %struct.perf_guest_switch_msr** %5, align 8
  %7 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %8 = icmp ne %struct.perf_guest_switch_msr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %60, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %16, i64 %18
  %20 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %22, i64 %24
  %26 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %31 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %31, i64 %33
  %35 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clear_atomic_switch_msr(%struct.vcpu_vmx* %30, i32 %36)
  br label %59

38:                                               ; preds = %15
  %39 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %40 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %40, i64 %42
  %44 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %46, i64 %48
  %50 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.perf_guest_switch_msr*, %struct.perf_guest_switch_msr** %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %52, i64 %54
  %56 = getelementptr inbounds %struct.perf_guest_switch_msr, %struct.perf_guest_switch_msr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @add_atomic_switch_msr(%struct.vcpu_vmx* %39, i32 %45, i64 %51, i64 %57, i32 0)
  br label %59

59:                                               ; preds = %38, %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %11

63:                                               ; preds = %9, %11
  ret void
}

declare dso_local %struct.perf_guest_switch_msr* @perf_guest_get_msrs(i32*) #1

declare dso_local i32 @clear_atomic_switch_msr(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @add_atomic_switch_msr(%struct.vcpu_vmx*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
