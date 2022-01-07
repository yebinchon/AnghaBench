; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_next_runnable_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_next_runnable_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcore = type { i32* }

@MAX_SMT_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvmppc_vcore*, i32*)* @next_runnable_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @next_runnable_thread(%struct.kvmppc_vcore* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vcore*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @MAX_SMT_THREADS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %17 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.kvm_vcpu* @READ_ONCE(i32 %22)
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %7, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %25 = icmp ne %struct.kvm_vcpu* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_vcpu* %29, %struct.kvm_vcpu** %3, align 8
  br label %32

30:                                               ; preds = %15
  br label %10

31:                                               ; preds = %10
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %3, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %33
}

declare dso_local %struct.kvm_vcpu* @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
