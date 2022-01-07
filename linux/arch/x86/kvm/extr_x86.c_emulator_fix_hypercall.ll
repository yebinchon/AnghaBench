; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_fix_hypercall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_fix_hypercall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, i8*)* }
%struct.kvm_vcpu = type { i32 }
%struct.x86_emulate_ctxt = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @emulator_fix_hypercall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_fix_hypercall(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca i64, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %6 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %7 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %6)
  store %struct.kvm_vcpu* %7, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.kvm_vcpu*, i8*)*, i32 (%struct.kvm_vcpu*, i8*)** %11, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %15 = call i32 %12(%struct.kvm_vcpu* %13, i8* %14)
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 0
  %21 = call i32 @emulator_write_emulated(%struct.x86_emulate_ctxt* %16, i64 %17, i8* %18, i32 3, i32* %20)
  ret i32 %21
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @emulator_write_emulated(%struct.x86_emulate_ctxt*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
