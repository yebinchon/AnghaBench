; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_set_sint_gsi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_set_sint_gsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_vcpu_hv_synic = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64, i64, i32)* @kvm_hv_set_sint_gsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_hv_set_sint_gsi(%struct.kvm* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.kvm*, %struct.kvm** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.kvm_vcpu_hv_synic* @synic_get(%struct.kvm* %11, i64 %12)
  store %struct.kvm_vcpu_hv_synic* %13, %struct.kvm_vcpu_hv_synic** %10, align 8
  %14 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %10, align 8
  %15 = icmp ne %struct.kvm_vcpu_hv_synic* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %10, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @ARRAY_SIZE(i32* %23)
  %25 = icmp uge i64 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %10, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @atomic_set(i32* %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %26, %16
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.kvm_vcpu_hv_synic* @synic_get(%struct.kvm*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
