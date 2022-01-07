; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_set_sint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_set_sint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i32* }

@HV_SYNIC_SINT_VECTOR_MASK = common dso_local global i32 0, align 4
@HV_SYNIC_SINT_MASKED = common dso_local global i32 0, align 4
@HV_SYNIC_FIRST_VALID_VECTOR = common dso_local global i32 0, align 4
@KVM_REQ_SCAN_IOAPIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu_hv_synic*, i32, i32, i32)* @synic_set_sint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synic_set_sint(%struct.kvm_vcpu_hv_synic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_synic* %0, %struct.kvm_vcpu_hv_synic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @HV_SYNIC_SINT_VECTOR_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @HV_SYNIC_SINT_MASKED, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @HV_SYNIC_FIRST_VALID_VECTOR, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %53

29:                                               ; preds = %25, %22, %4
  %30 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic* %30, i32 %31)
  %33 = load i32, i32* @HV_SYNIC_SINT_VECTOR_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @atomic64_set(i32* %40, i32 %41)
  %43 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @synic_update_vector(%struct.kvm_vcpu_hv_synic* %43, i32 %44)
  %46 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @synic_update_vector(%struct.kvm_vcpu_hv_synic* %46, i32 %47)
  %49 = load i32, i32* @KVM_REQ_SCAN_IOAPIC, align 4
  %50 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %51 = call i32 @synic_to_vcpu(%struct.kvm_vcpu_hv_synic* %50)
  %52 = call i32 @kvm_make_request(i32 %49, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %29, %28
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @synic_read_sint(%struct.kvm_vcpu_hv_synic*, i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @synic_update_vector(%struct.kvm_vcpu_hv_synic*, i32) #1

declare dso_local i32 @kvm_make_request(i32, i32) #1

declare dso_local i32 @synic_to_vcpu(%struct.kvm_vcpu_hv_synic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
