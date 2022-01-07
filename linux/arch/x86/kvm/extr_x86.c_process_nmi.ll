; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_process_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_process_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @process_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_nmi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 2, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i64 %6(%struct.kvm_vcpu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i64 @atomic_xchg(i32* %20, i32 0)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @KVM_REQ_EVENT, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @kvm_make_request(i32 %38, %struct.kvm_vcpu* %39)
  ret void
}

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
