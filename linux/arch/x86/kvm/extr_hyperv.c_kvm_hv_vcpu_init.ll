; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_vcpu_hv = type { i32*, i32, i32 }

@HV_SYNIC_STIMER_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_hv_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_vcpu_hv*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu* %5)
  store %struct.kvm_vcpu_hv* %6, %struct.kvm_vcpu_hv** %3, align 8
  %7 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %7, i32 0, i32 2
  %9 = call i32 @synic_init(i32* %8)
  %10 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HV_SYNIC_STIMER_COUNT, align 4
  %14 = call i32 @bitmap_zero(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @stimer_init(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %15

34:                                               ; preds = %15
  ret void
}

declare dso_local %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @synic_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @stimer_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
