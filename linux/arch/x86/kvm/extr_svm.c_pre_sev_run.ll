; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pre_sev_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pre_sev_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.svm_cpu_data = type { %struct.TYPE_6__** }

@svm_data = common dso_local global i32 0, align 4
@TLB_CONTROL_FLUSH_ASID = common dso_local global i32 0, align 4
@VMCB_ASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*, i32)* @pre_sev_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_sev_run(%struct.vcpu_svm* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svm_cpu_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @svm_data, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.svm_cpu_data* @per_cpu(i32 %7, i32 %8)
  store %struct.svm_cpu_data* %9, %struct.svm_cpu_data** %5, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sev_get_asid(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %5, align 8
  %22 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp eq %struct.TYPE_6__* %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %63

39:                                               ; preds = %32, %2
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %5, align 8
  %47 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %51, align 8
  %52 = load i32, i32* @TLB_CONTROL_FLUSH_ASID, align 4
  %53 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* @VMCB_ASID, align 4
  %62 = call i32 @mark_dirty(%struct.TYPE_6__* %60, i32 %61)
  br label %63

63:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.svm_cpu_data* @per_cpu(i32, i32) #1

declare dso_local i32 @sev_get_asid(i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
