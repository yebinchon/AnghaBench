; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_msr_set_crash_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_msr_set_crash_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_hv }
%struct.kvm_hv = type { i32, i32* }

@HV_CRASH_CTL_CRASH_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hv crash (0x%llx 0x%llx 0x%llx 0x%llx 0x%llx)\0A\00", align 1
@KVM_REQ_HV_CRASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @kvm_hv_msr_set_crash_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_hv_msr_set_crash_ctl(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_hv*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.kvm_hv* %12, %struct.kvm_hv** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HV_CRASH_CTL_CRASH_NOTIFY, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HV_CRASH_CTL_CRASH_NOTIFY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_hv*, %struct.kvm_hv** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_hv, %struct.kvm_hv* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vcpu_debug(%struct.kvm_vcpu* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40, i32 %45, i32 %50, i32 %55)
  %57 = load i32, i32* @KVM_REQ_HV_CRASH, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = call i32 @kvm_make_request(i32 %57, %struct.kvm_vcpu* %58)
  br label %60

60:                                               ; preds = %29, %24, %21
  ret i32 0
}

declare dso_local i32 @vcpu_debug(%struct.kvm_vcpu*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
