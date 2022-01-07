; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_block.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.kvm = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@KVM_REQ_UNHALT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_vcpu*)* @vcpu_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_block(%struct.kvm* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %7 = call i32 @kvm_arch_vcpu_runnable(%struct.kvm_vcpu* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %11, align 8
  %13 = icmp ne i64 (%struct.kvm_vcpu*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %16, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = call i64 %17(%struct.kvm_vcpu* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %14, %9
  %22 = load %struct.kvm*, %struct.kvm** %4, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @srcu_read_unlock(i32* %23, i32 %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = call i32 @kvm_vcpu_block(%struct.kvm_vcpu* %28)
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = call i32 @srcu_read_lock(i32* %31)
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %36, align 8
  %38 = icmp ne i32 (%struct.kvm_vcpu*)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %44 = call i32 %42(%struct.kvm_vcpu* %43)
  br label %45

45:                                               ; preds = %39, %21
  %46 = load i32, i32* @KVM_REQ_UNHALT, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = call i32 @kvm_check_request(i32 %46, %struct.kvm_vcpu* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %77

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %14, %2
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = call i32 @kvm_apic_accept_events(%struct.kvm_vcpu* %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %73 [
    i32 130, label %59
    i32 128, label %67
    i32 129, label %72
  ]

59:                                               ; preds = %52
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 128, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %59
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %76

72:                                               ; preds = %52
  br label %76

73:                                               ; preds = %52
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %72, %67
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %73, %50
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @kvm_arch_vcpu_runnable(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvm_vcpu_block(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_check_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_apic_accept_events(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
