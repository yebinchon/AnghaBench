; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_book3s_radix_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_book3s_radix_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__, %struct.kvm* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.kvm_memory_slot = type { i32 }

@DSISR_ISSTORE = common dso_local global i64 0, align 8
@DSISR_UNSUPP_MMU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"KVM: Got unsupported MMU fault\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DSISR_BADACCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"KVM: Got radix HV page fault with DSISR=%lx\0A\00", align 1
@RESUME_GUEST = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DSISR_PRTABLE_FAULT = common dso_local global i64 0, align 8
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@DSISR_SET_RC = common dso_local global i64 0, align 8
@KVM_MEM_READONLY = common dso_local global i32 0, align 4
@DSISR_PROTFAULT = common dso_local global i64 0, align 8
@DSISR_BAD_FAULT_64S = common dso_local global i64 0, align 8
@DSISR_NOHPTE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_book3s_radix_page_fault(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kvm_memory_slot*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %6, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @DSISR_ISSTORE, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @DSISR_UNSUPP_MMU, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %187

35:                                               ; preds = %4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @DSISR_BADACCESS, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %43, i64 %44, i64 %45)
  %47 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %47, i32* %5, align 4
  br label %187

48:                                               ; preds = %35
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, -4096
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %55, 1152921504606846975
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @DSISR_PRTABLE_FAULT, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %8, align 8
  %66 = and i64 %65, 4095
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %64, %48
  %70 = load %struct.kvm*, %struct.kvm** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %70, i64 %71)
  store %struct.kvm_memory_slot* %72, %struct.kvm_memory_slot** %13, align 8
  %73 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %74 = icmp ne %struct.kvm_memory_slot* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %77 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %75, %69
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @DSISR_PRTABLE_FAULT, align 8
  %85 = load i64, i64* @DSISR_BADACCESS, align 8
  %86 = or i64 %84, %85
  %87 = load i64, i64* @DSISR_SET_RC, align 8
  %88 = or i64 %86, %87
  %89 = and i64 %83, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %92, i64 %93, i64 %94)
  %96 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %96, i32* %5, align 4
  br label %187

97:                                               ; preds = %82
  %98 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @kvmppc_hv_emulate_mmio(%struct.kvm_run* %98, %struct.kvm_vcpu* %99, i64 %100, i64 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %187

104:                                              ; preds = %75
  %105 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %106 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @KVM_MEM_READONLY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @DSISR_ISSTORE, align 8
  %118 = load i64, i64* @DSISR_PROTFAULT, align 8
  %119 = or i64 %117, %118
  %120 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %115, i64 %116, i64 %119)
  %121 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %121, i32* %5, align 4
  br label %187

122:                                              ; preds = %111
  store i32 1, i32* %16, align 4
  br label %123

123:                                              ; preds = %122, %104
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @DSISR_SET_RC, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %167

128:                                              ; preds = %123
  %129 = load %struct.kvm*, %struct.kvm** %10, align 8
  %130 = getelementptr inbounds %struct.kvm, %struct.kvm* %129, i32 0, i32 0
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load %struct.kvm*, %struct.kvm** %10, align 8
  %133 = load %struct.kvm*, %struct.kvm** %10, align 8
  %134 = getelementptr inbounds %struct.kvm, %struct.kvm* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.kvm*, %struct.kvm** %10, align 8
  %140 = getelementptr inbounds %struct.kvm, %struct.kvm* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @kvmppc_hv_handle_set_rc(%struct.kvm* %132, i32 %136, i32 %137, i64 %138, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %128
  %146 = load i64, i64* @DSISR_SET_RC, align 8
  %147 = xor i64 %146, -1
  %148 = load i64, i64* %9, align 8
  %149 = and i64 %148, %147
  store i64 %149, i64* %9, align 8
  br label %150

150:                                              ; preds = %145, %128
  %151 = load %struct.kvm*, %struct.kvm** %10, align 8
  %152 = getelementptr inbounds %struct.kvm, %struct.kvm* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @DSISR_BAD_FAULT_64S, align 8
  %156 = load i64, i64* @DSISR_NOHPTE, align 8
  %157 = or i64 %155, %156
  %158 = load i64, i64* @DSISR_PROTFAULT, align 8
  %159 = or i64 %157, %158
  %160 = load i64, i64* @DSISR_SET_RC, align 8
  %161 = or i64 %159, %160
  %162 = and i64 %154, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %150
  %165 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %165, i32* %5, align 4
  br label %187

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166, %123
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %169 = load i64, i64* %11, align 8
  %170 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i64 @kvmppc_book3s_instantiate_page(%struct.kvm_vcpu* %168, i64 %169, %struct.kvm_memory_slot* %170, i32 %171, i32 %172, i32* null, i32* null)
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %14, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %167
  %177 = load i64, i64* %14, align 8
  %178 = load i64, i64* @EAGAIN, align 8
  %179 = sub nsw i64 0, %178
  %180 = icmp eq i64 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %176, %167
  %182 = load i32, i32* @RESUME_GUEST, align 4
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %14, align 8
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i64, i64* %14, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %184, %164, %114, %97, %91, %40, %31
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i32 @kvmppc_hv_emulate_mmio(%struct.kvm_run*, %struct.kvm_vcpu*, i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kvmppc_hv_handle_set_rc(%struct.kvm*, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @kvmppc_book3s_instantiate_page(%struct.kvm_vcpu*, i64, %struct.kvm_memory_slot*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
