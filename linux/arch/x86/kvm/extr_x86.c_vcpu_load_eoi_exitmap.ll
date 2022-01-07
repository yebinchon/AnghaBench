; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_load_eoi_exitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_load_eoi_exitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*, i32*)* }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vcpu_load_eoi_exitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_load_eoi_exitmap(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @kvm_apic_hw_enabled(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call %struct.TYPE_5__* @vcpu_to_synic(%struct.kvm_vcpu* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bitmap_or(i32* %12, i32 %16, i32 %20, i32 256)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (%struct.kvm_vcpu*, i32*)*, i32 (%struct.kvm_vcpu*, i32*)** %23, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %27 = call i32 %24(%struct.kvm_vcpu* %25, i32* %26)
  br label %28

28:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @kvm_apic_hw_enabled(i32) #1

declare dso_local i32 @bitmap_or(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @vcpu_to_synic(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
