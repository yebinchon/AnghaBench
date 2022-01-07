; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_hv_setup_htab_rma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_hv_setup_htab_rma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_memory_slot = type { i32, i64 }
%struct.vm_area_struct = type { i64, i32 }
%struct.kvm_hpt_info = type { i32 }

@KVM_DEFAULT_HPT_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPC_MIN_HPT_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"KVM: Couldn't alloc HPT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@VM_IO = common dso_local global i32 0, align 4
@SLB_VSID_B_1T = common dso_local global i64 0, align 8
@VRMA_VSID = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT_1T = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@LPCR_VRMASD_SH = common dso_local global i32 0, align 4
@LPCR_VRMASD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvmppc_hv_setup_htab_rma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_hv_setup_htab_rma(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvm_hpt_info, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 0, i32* %3, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load %struct.kvm*, %struct.kvm** %16, align 8
  store %struct.kvm* %17, %struct.kvm** %4, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @KVM_DEFAULT_HPT_ORDER, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @kvmppc_allocate_hpt(%struct.kvm_hpt_info* %14, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %40, %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @PPC_MIN_HPT_ORDER, align 4
  %37 = icmp sge i32 %35, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @kvmppc_allocate_hpt(%struct.kvm_hpt_info* %14, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %28

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %155

48:                                               ; preds = %43
  %49 = load %struct.kvm*, %struct.kvm** %4, align 8
  %50 = call i32 @kvmppc_set_hpt(%struct.kvm* %49, %struct.kvm_hpt_info* %14)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.kvm*, %struct.kvm** %4, align 8
  %53 = getelementptr inbounds %struct.kvm, %struct.kvm* %52, i32 0, i32 0
  %54 = call i32 @srcu_read_lock(i32* %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.kvm*, %struct.kvm** %4, align 8
  %56 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %55, i32 0)
  store %struct.kvm_memory_slot* %56, %struct.kvm_memory_slot** %6, align 8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  %59 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %60 = icmp ne %struct.kvm_memory_slot* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %63 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %51
  br label %150

69:                                               ; preds = %61
  %70 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %71 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 @down_read(i32* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_7__* %80, i64 %81)
  store %struct.vm_area_struct* %82, %struct.vm_area_struct** %7, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %84 = icmp ne %struct.vm_area_struct* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %69
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VM_IO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91, %85, %69
  br label %157

99:                                               ; preds = %91
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %101 = call i64 @vma_kernel_pagesize(%struct.vm_area_struct* %100)
  store i64 %101, i64* %10, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = call i32 @up_read(i32* %105)
  %107 = load i64, i64* %10, align 8
  %108 = icmp uge i64 %107, 16777216
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i64 16777216, i64* %10, align 8
  br label %116

110:                                              ; preds = %99
  %111 = load i64, i64* %10, align 8
  %112 = icmp uge i64 %111, 65536
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i64 65536, i64* %10, align 8
  br label %115

114:                                              ; preds = %110
  store i64 4096, i64* %10, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %109
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @__ilog2(i64 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @slb_pgsize_encoding(i64 %119)
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @SLB_VSID_B_1T, align 8
  %123 = or i64 %121, %122
  %124 = load i64, i64* @VRMA_VSID, align 8
  %125 = load i64, i64* @SLB_VSID_SHIFT_1T, align 8
  %126 = shl i64 %124, %125
  %127 = or i64 %123, %126
  %128 = load %struct.kvm*, %struct.kvm** %4, align 8
  %129 = getelementptr inbounds %struct.kvm, %struct.kvm* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %132 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @kvmppc_map_vrma(%struct.kvm_vcpu* %131, %struct.kvm_memory_slot* %132, i64 %133)
  %135 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %136 = call i32 @cpu_has_feature(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %116
  %139 = load i64, i64* %9, align 8
  %140 = load i32, i32* @LPCR_VRMASD_SH, align 4
  %141 = sub nsw i32 %140, 4
  %142 = zext i32 %141 to i64
  %143 = shl i64 %139, %142
  store i64 %143, i64* %8, align 8
  %144 = load %struct.kvm*, %struct.kvm** %4, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i32, i32* @LPCR_VRMASD, align 4
  %147 = call i32 @kvmppc_update_lpcr(%struct.kvm* %144, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %116
  %149 = call i32 (...) @smp_wmb()
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %157, %148, %68
  %151 = load %struct.kvm*, %struct.kvm** %4, align 8
  %152 = getelementptr inbounds %struct.kvm, %struct.kvm* %151, i32 0, i32 0
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @srcu_read_unlock(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %46
  %156 = load i32, i32* %3, align 4
  ret i32 %156

157:                                              ; preds = %98
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = call i32 @up_read(i32* %161)
  br label %150
}

declare dso_local i32 @kvmppc_allocate_hpt(%struct.kvm_hpt_info*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kvmppc_set_hpt(%struct.kvm*, %struct.kvm_hpt_info*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @vma_kernel_pagesize(%struct.vm_area_struct*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @__ilog2(i64) #1

declare dso_local i64 @slb_pgsize_encoding(i64) #1

declare dso_local i32 @kvmppc_map_vrma(%struct.kvm_vcpu*, %struct.kvm_memory_slot*, i64) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_update_lpcr(%struct.kvm*, i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
