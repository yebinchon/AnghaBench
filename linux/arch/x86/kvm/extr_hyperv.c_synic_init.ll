; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i32*, i32*, i32 }

@HV_SYNIC_VERSION_1 = common dso_local global i32 0, align 4
@HV_SYNIC_SINT_MASKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_synic*)* @synic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synic_init(%struct.kvm_vcpu_hv_synic* %0) #0 {
  %2 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_synic* %0, %struct.kvm_vcpu_hv_synic** %2, align 8
  %4 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %2, align 8
  %5 = call i32 @memset(%struct.kvm_vcpu_hv_synic* %4, i32 0, i32 24)
  %6 = load i32, i32* @HV_SYNIC_VERSION_1, align 4
  %7 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* @HV_SYNIC_SINT_MASKED, align 4
  %24 = call i32 @atomic64_set(i32* %22, i32 %23)
  %25 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @atomic_set(i32* %30, i32 -1)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %9

35:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.kvm_vcpu_hv_synic*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
