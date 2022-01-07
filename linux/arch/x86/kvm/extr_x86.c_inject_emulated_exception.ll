; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_inject_emulated_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_inject_emulated_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.x86_emulate_ctxt }
%struct.x86_emulate_ctxt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }

@PF_VECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @inject_emulated_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_emulated_exception(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.x86_emulate_ctxt* %7, %struct.x86_emulate_ctxt** %4, align 8
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PF_VECTOR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 0
  %18 = call i32 @kvm_propagate_fault(%struct.kvm_vcpu* %15, %struct.TYPE_4__* %17)
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %28 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %32 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %26, i64 %30, i32 %34)
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %37, i64 %41)
  br label %43

43:                                               ; preds = %36, %25
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @kvm_propagate_fault(%struct.kvm_vcpu*, %struct.TYPE_4__*) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
