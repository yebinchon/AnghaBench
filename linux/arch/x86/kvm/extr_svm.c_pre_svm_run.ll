; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pre_svm_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pre_svm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.svm_cpu_data = type { i64 }

@svm_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @pre_svm_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_svm_run(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.svm_cpu_data*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @svm_data, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.svm_cpu_data* @per_cpu(i32 %6, i32 %7)
  store %struct.svm_cpu_data* %8, %struct.svm_cpu_data** %4, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @sev_guest(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %17 = load i32, i32* %3, align 4
  call void @pre_sev_run(%struct.vcpu_svm* %16, i32 %17)
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %23 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %28 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %29 = call i32 @new_asid(%struct.vcpu_svm* %27, %struct.svm_cpu_data* %28)
  br label %30

30:                                               ; preds = %15, %26, %18
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.svm_cpu_data* @per_cpu(i32, i32) #1

declare dso_local i64 @sev_guest(i32) #1

declare dso_local void @pre_sev_run(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @new_asid(%struct.vcpu_svm*, %struct.svm_cpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
