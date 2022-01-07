; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i32*, i32*)* }
%struct.kvm_vcpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@X86_CR0_PG = common dso_local global i64 0, align 8
@X86_CR0_WP = common dso_local global i64 0, align 8
@X86_CR0_ET = common dso_local global i64 0, align 8
@CR0_RESERVED_BITS = common dso_local global i64 0, align 8
@X86_CR0_NW = common dso_local global i64 0, align 8
@X86_CR0_CD = common dso_local global i64 0, align 8
@X86_CR0_PE = common dso_local global i64 0, align 8
@X86_CR4_PCIDE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@KVM_X86_QUIRK_CD_NW_CLEARED = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr0(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i64 @kvm_read_cr0(%struct.kvm_vcpu* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @X86_CR0_PG, align 8
  %11 = load i64, i64* @X86_CR0_WP, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @X86_CR0_ET, align 8
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @CR0_RESERVED_BITS, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @X86_CR0_NW, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @X86_CR0_CD, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %131

30:                                               ; preds = %24, %2
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @X86_CR0_PG, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @X86_CR0_PE, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %131

41:                                               ; preds = %35, %30
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = call i32 @is_paging(%struct.kvm_vcpu* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @X86_CR0_PG, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = call i64 @is_pae(%struct.kvm_vcpu* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %60)
  %62 = call i32 @load_pdptrs(%struct.kvm_vcpu* %55, i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %131

65:                                               ; preds = %54, %50
  br label %66

66:                                               ; preds = %65, %45, %41
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @X86_CR0_PG, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = load i32, i32* @X86_CR4_PCIDE, align 4
  %74 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %131

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %79, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 %80(%struct.kvm_vcpu* %81, i64 %82)
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = xor i64 %84, %85
  %87 = load i64, i64* @X86_CR0_PG, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = call i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu* %91)
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %94 = call i32 @kvm_async_pf_hash_reset(%struct.kvm_vcpu* %93)
  br label %95

95:                                               ; preds = %90, %77
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = xor i64 %96, %97
  %99 = load i64, i64* %7, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %103)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = xor i64 %106, %107
  %109 = load i64, i64* @X86_CR0_CD, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @kvm_arch_has_noncoherent_dma(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @KVM_X86_QUIRK_CD_NW_CLEARED, align 4
  %123 = call i32 @kvm_check_has_quirk(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @kvm_zap_gfn_range(i32 %128, i32 0, i64 -1)
  br label %130

130:                                              ; preds = %125, %118, %112, %105
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %76, %64, %40, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_clear_async_pf_completion_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_async_pf_hash_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_arch_has_noncoherent_dma(i32) #1

declare dso_local i32 @kvm_check_has_quirk(i32, i32) #1

declare dso_local i32 @kvm_zap_gfn_range(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
