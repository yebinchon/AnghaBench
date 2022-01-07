; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c_kvm_s390_handle_diag.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c_kvm_s390_handle_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_diag(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu* %5, i32* null)
  %7 = and i32 %6, 65535
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %21 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @trace_kvm_s390_handle_diag(%struct.kvm_vcpu* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %45 [
    i32 16, label %27
    i32 68, label %30
    i32 156, label %33
    i32 600, label %36
    i32 776, label %39
    i32 1280, label %42
  ]

27:                                               ; preds = %22
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = call i32 @diag_release_pages(%struct.kvm_vcpu* %28)
  store i32 %29, i32* %2, align 4
  br label %53

30:                                               ; preds = %22
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @__diag_time_slice_end(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @__diag_time_slice_end_directed(%struct.kvm_vcpu* %34)
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %22
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @__diag_page_ref_service(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %22
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @__diag_ipl_functions(%struct.kvm_vcpu* %40)
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %22
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @__diag_virtio_hypercall(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %22
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @kvm_s390_get_base_disp_rs(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_diag(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @diag_release_pages(%struct.kvm_vcpu*) #1

declare dso_local i32 @__diag_time_slice_end(%struct.kvm_vcpu*) #1

declare dso_local i32 @__diag_time_slice_end_directed(%struct.kvm_vcpu*) #1

declare dso_local i32 @__diag_page_ref_service(%struct.kvm_vcpu*) #1

declare dso_local i32 @__diag_ipl_functions(%struct.kvm_vcpu*) #1

declare dso_local i32 @__diag_virtio_hypercall(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
