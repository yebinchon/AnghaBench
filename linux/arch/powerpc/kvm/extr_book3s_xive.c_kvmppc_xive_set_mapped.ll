; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_set_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_set_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.kvm*, i64)* }
%struct.irq_desc = type { i32 }
%struct.kvmppc_xive_src_block = type { i32, %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"set_mapped girq 0x%lx host HW irq 0x%x...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to set VCPU affinity for irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" old IPI prio %02x P:%d Q:%d\0A\00", align 1
@XIVE_ESB_SET_PQ_01 = common dso_local global i32 0, align 4
@MASKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_set_mapped(%struct.kvm* %0, i64 %1, %struct.irq_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca %struct.kvmppc_xive*, align 8
  %9 = alloca %struct.kvmppc_xive_src_block*, align 8
  %10 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %11 = alloca %struct.irq_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.irq_desc* %2, %struct.irq_desc** %7, align 8
  %17 = load %struct.kvm*, %struct.kvm** %5, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %19, align 8
  store %struct.kvmppc_xive* %20, %struct.kvmppc_xive** %8, align 8
  %21 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %22 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %21)
  store %struct.irq_data* %22, %struct.irq_data** %11, align 8
  %23 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %24 = call i32 @irq_desc_get_irq(%struct.irq_desc* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %26 = call i64 @irqd_to_hwirq(%struct.irq_data* %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %29 = icmp ne %struct.kvmppc_xive* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %145

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 (i8*, i64, i32, ...) @pr_devel(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35)
  %37 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive* %37, i64 %38, i64* %14)
  store %struct.kvmppc_xive_src_block* %39, %struct.kvmppc_xive_src_block** %9, align 8
  %40 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %41 = icmp ne %struct.kvmppc_xive_src_block* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %145

45:                                               ; preds = %33
  %46 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %47 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %46, i32 0, i32 1
  %48 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %48, i64 %49
  store %struct.kvmppc_xive_irq_state* %50, %struct.kvmppc_xive_irq_state** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %53 = call i32 @irq_set_vcpu_affinity(i32 %51, %struct.kvmppc_xive_irq_state* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %4, align 4
  br label %145

60:                                               ; preds = %45
  %61 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %62 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %63 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %64 = call i32 @xive_lock_and_mask(%struct.kvmppc_xive* %61, %struct.kvmppc_xive_src_block* %62, %struct.kvmppc_xive_irq_state* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %68 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %71 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i64, i32, ...) @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %66, i32 %69, i32 %72)
  %74 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %75 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %74, i32 0, i32 8
  %76 = load i32, i32* @XIVE_ESB_SET_PQ_01, align 4
  %77 = call i32 @xive_vm_esb_load(i32* %75, i32 %76)
  %78 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %79 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %60
  %83 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %84 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (%struct.kvm*, i64)*, i32 (%struct.kvm*, i64)** %86, align 8
  %88 = icmp ne i32 (%struct.kvm*, i64)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %91 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32 (%struct.kvm*, i64)*, i32 (%struct.kvm*, i64)** %93, align 8
  %95 = load %struct.kvm*, %struct.kvm** %5, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 %94(%struct.kvm* %95, i64 %96)
  br label %98

98:                                               ; preds = %89, %82, %60
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %101 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.irq_data*, %struct.irq_data** %11, align 8
  %103 = call i32 @irq_data_get_irq_handler_data(%struct.irq_data* %102)
  %104 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %105 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %108 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %109 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @kvmppc_xive_vp(%struct.kvmppc_xive* %107, i32 %110)
  %112 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %113 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %116 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @xive_native_configure_irq(i32 %106, i32 %111, i32 %114, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @MASKED, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %98
  %123 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %124 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %130 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @xive_vm_source_eoi(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %122, %98
  %134 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %135 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %137 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %136, i32 0, i32 0
  store i32 0, i32* %137, align 4
  %138 = call i32 (...) @mb()
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %141 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %143 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %142, i32 0, i32 0
  %144 = call i32 @arch_spin_unlock(i32* %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %133, %56, %42, %30
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @pr_devel(i8*, i64, i32, ...) #1

declare dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive*, i64, i64*) #1

declare dso_local i32 @irq_set_vcpu_affinity(i32, %struct.kvmppc_xive_irq_state*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @xive_lock_and_mask(%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*) #1

declare dso_local i32 @xive_vm_esb_load(i32*, i32) #1

declare dso_local i32 @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @xive_native_configure_irq(i32, i32, i32, i32) #1

declare dso_local i32 @kvmppc_xive_vp(%struct.kvmppc_xive*, i32) #1

declare dso_local i32 @xive_vm_source_eoi(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
