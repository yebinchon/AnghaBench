; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_vcpu_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_vcpu_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_vcpu_hv = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_hv_vcpu_uninit(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_vcpu_hv*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu* %5)
  store %struct.kvm_vcpu_hv* %6, %struct.kvm_vcpu_hv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @stimer_cleanup(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  ret void
}

declare dso_local %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @stimer_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
