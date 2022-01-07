; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_set_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_set_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu_hv_stimer*, i64, i32)* @stimer_set_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stimer_set_count(%struct.kvm_vcpu_hv_stimer* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %8 = call %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @trace_kvm_hv_stimer_set_count(i32 %10, i32 %13, i64 %14, i32 %15)
  %17 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %18 = call i32 @stimer_cleanup(%struct.kvm_vcpu_hv_stimer* %17)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %41

30:                                               ; preds = %3
  %31 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %49 = call i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %41
  ret i32 0
}

declare dso_local i32 @trace_kvm_hv_stimer_set_count(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_cleanup(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_mark_pending(%struct.kvm_vcpu_hv_stimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
