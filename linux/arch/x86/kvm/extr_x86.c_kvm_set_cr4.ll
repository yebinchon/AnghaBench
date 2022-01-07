; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu*, i64)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@X86_CR4_PGE = common dso_local global i64 0, align 8
@X86_CR4_PSE = common dso_local global i64 0, align 8
@X86_CR4_PAE = common dso_local global i64 0, align 8
@X86_CR4_SMEP = common dso_local global i64 0, align 8
@X86_CR4_SMAP = common dso_local global i64 0, align 8
@X86_CR4_PKE = common dso_local global i64 0, align 8
@X86_CR4_PCIDE = common dso_local global i64 0, align 8
@X86_FEATURE_PCID = common dso_local global i32 0, align 4
@X86_CR3_PCID_MASK = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@X86_CR4_OSXSAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i64 @kvm_read_cr4(%struct.kvm_vcpu* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @X86_CR4_PGE, align 8
  %11 = load i64, i64* @X86_CR4_PSE, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @X86_CR4_PAE, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @X86_CR4_SMEP, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @X86_CR4_SMAP, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @X86_CR4_PKE, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @kvm_valid_cr4(%struct.kvm_vcpu* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %135

26:                                               ; preds = %2
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = call i64 @is_long_mode(%struct.kvm_vcpu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @X86_CR4_PAE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %135

36:                                               ; preds = %30
  br label %65

37:                                               ; preds = %26
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = call i64 @is_paging(%struct.kvm_vcpu* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @X86_CR4_PAE, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = xor i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %59)
  %61 = call i32 @load_pdptrs(%struct.kvm_vcpu* %54, i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %135

64:                                               ; preds = %53, %46, %41, %37
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @X86_CR4_PCIDE, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @X86_CR4_PCIDE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %70
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %77 = load i32, i32* @X86_FEATURE_PCID, align 4
  %78 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %135

81:                                               ; preds = %75
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %83 = call i32 @kvm_read_cr3(%struct.kvm_vcpu* %82)
  %84 = load i32, i32* @X86_CR3_PCID_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = call i64 @is_long_mode(%struct.kvm_vcpu* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87, %81
  store i32 1, i32* %3, align 4
  br label %135

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %70, %65
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64 (%struct.kvm_vcpu*, i64)*, i64 (%struct.kvm_vcpu*, i64)** %95, align 8
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 %96(%struct.kvm_vcpu* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %3, align 4
  br label %135

102:                                              ; preds = %93
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = xor i64 %103, %104
  %106 = load i64, i64* %7, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @X86_CR4_PCIDE, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @X86_CR4_PCIDE, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %102
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %120)
  br label %122

122:                                              ; preds = %119, %114, %109
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = xor i64 %123, %124
  %126 = load i64, i64* @X86_CR4_OSXSAVE, align 8
  %127 = load i64, i64* @X86_CR4_PKE, align 8
  %128 = or i64 %126, %127
  %129 = and i64 %125, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = call i32 @kvm_update_cpuid(%struct.kvm_vcpu* %132)
  br label %134

134:                                              ; preds = %131, %122
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %101, %91, %80, %63, %35, %25
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_valid_cr4(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_cpuid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
