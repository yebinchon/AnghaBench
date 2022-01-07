; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_try_pick_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_try_pick_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive_vcpu* }
%struct.kvmppc_xive_vcpu = type { %struct.xive_q*, i32 }
%struct.xive_q = type { i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@XIVE_Q_GAP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @xive_try_pick_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_try_pick_queue(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_xive_vcpu*, align 8
  %7 = alloca %struct.xive_q*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %11, align 8
  store %struct.kvmppc_xive_vcpu* %12, %struct.kvmppc_xive_vcpu** %6, align 8
  %13 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %14 = icmp ne %struct.kvmppc_xive_vcpu* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %24 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %22
  %31 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %6, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %31, i32 0, i32 0
  %33 = load %struct.xive_q*, %struct.xive_q** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %33, i64 %34
  store %struct.xive_q* %35, %struct.xive_q** %7, align 8
  %36 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %37 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %65

47:                                               ; preds = %30
  %48 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %49 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = load i64, i64* @XIVE_Q_GAP, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %8, align 8
  %54 = load %struct.xive_q*, %struct.xive_q** %7, align 8
  %55 = getelementptr inbounds %struct.xive_q, %struct.xive_q* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @atomic_add_unless(i32* %55, i32 1, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i32 [ 0, %59 ], [ %62, %60 ]
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %44, %27, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
