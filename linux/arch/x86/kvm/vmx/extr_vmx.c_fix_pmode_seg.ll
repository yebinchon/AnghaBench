; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_fix_pmode_seg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_fix_pmode_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32 }

@emulate_invalid_guest_state = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@SEGMENT_RPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, %struct.kvm_segment*)* @fix_pmode_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_pmode_seg(%struct.kvm_vcpu* %0, i32 %1, %struct.kvm_segment* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_segment*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_segment* %2, %struct.kvm_segment** %6, align 8
  %7 = load i32, i32* @emulate_invalid_guest_state, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VCPU_SREG_CS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VCPU_SREG_SS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SEGMENT_RPL_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %33 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %3
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @vmx_set_segment(%struct.kvm_vcpu* %35, %struct.kvm_segment* %36, i32 %37)
  ret void
}

declare dso_local i32 @vmx_set_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
