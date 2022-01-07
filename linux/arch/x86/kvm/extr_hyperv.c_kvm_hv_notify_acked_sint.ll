; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_notify_acked_sint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_notify_acked_sint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvm_vcpu_hv_synic = type { i32* }
%struct.kvm_vcpu_hv = type { %struct.kvm_vcpu_hv_stimer* }
%struct.kvm_vcpu_hv_stimer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @kvm_hv_notify_acked_sint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_hv_notify_acked_sint(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %7 = alloca %struct.kvm_vcpu_hv*, align 8
  %8 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = load %struct.kvm*, %struct.kvm** %12, align 8
  store %struct.kvm* %13, %struct.kvm** %5, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu* %14)
  store %struct.kvm_vcpu_hv_synic* %15, %struct.kvm_vcpu_hv_synic** %6, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu* %16)
  store %struct.kvm_vcpu_hv* %17, %struct.kvm_vcpu_hv** %7, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @trace_kvm_hv_notify_acked_sint(i32 %20, i64 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %64, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %25, i32 0, i32 0
  %27 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %26, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.kvm_vcpu_hv_stimer* %27)
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %23
  %31 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %31, i32 0, i32 0
  %33 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %33, i64 %35
  store %struct.kvm_vcpu_hv_stimer* %36, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %37 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %8, align 8
  %62 = call i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %53, %47, %41, %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.kvm*, %struct.kvm** %5, align 8
  %69 = getelementptr inbounds %struct.kvm, %struct.kvm* %68, i32 0, i32 0
  %70 = call i32 @srcu_read_lock(i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %6, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = call i32 @atomic_read(i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.kvm*, %struct.kvm** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @kvm_notify_acked_gsi(%struct.kvm* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %67
  %84 = load %struct.kvm*, %struct.kvm** %5, align 8
  %85 = getelementptr inbounds %struct.kvm, %struct.kvm* %84, i32 0, i32 0
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @srcu_read_unlock(i32* %85, i32 %86)
  ret void
}

declare dso_local %struct.kvm_vcpu_hv_synic* @vcpu_to_synic(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hv_notify_acked_sint(i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer*, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kvm_notify_acked_gsi(%struct.kvm*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
