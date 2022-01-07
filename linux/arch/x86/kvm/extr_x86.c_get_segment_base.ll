; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_get_segment_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_get_segment_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32)* @get_segment_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_segment_base(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64 (%struct.kvm_vcpu*, i32)*, i64 (%struct.kvm_vcpu*, i32)** %6, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 %7(%struct.kvm_vcpu* %8, i32 %9)
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
