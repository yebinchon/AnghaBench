; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_enter_smm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_enter_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)*, i64 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*, i8*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.desc_ptr = type { i64, i64 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@HF_SMM_MASK = common dso_local global i32 0, align 4
@HF_SMM_INSIDE_NMI_MASK = common dso_local global i32 0, align 4
@X86_EFLAGS_FIXED = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@X86_CR0_EM = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i32 0, align 4
@DR7_FIXED_1 = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@X86_FEATURE_LM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @enter_smm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_smm(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_segment, align 8
  %4 = alloca %struct.kvm_segment, align 8
  %5 = alloca %struct.desc_ptr, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_kvm_enter_smm(i32 %10, i32 %14, i32 1)
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 512)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %20 = call i32 @enter_smm_save_state_32(%struct.kvm_vcpu* %18, i8* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i32 (%struct.kvm_vcpu*, i8*)*, i32 (%struct.kvm_vcpu*, i8*)** %22, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %26 = call i32 %23(%struct.kvm_vcpu* %24, i8* %25)
  %27 = load i32, i32* @HF_SMM_MASK, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 65024
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %40 = call i32 @kvm_vcpu_write_guest(%struct.kvm_vcpu* %33, i32 %38, i8* %39, i32 512)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %42, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = call i64 %43(%struct.kvm_vcpu* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %1
  %48 = load i32, i32* @HF_SMM_INSIDE_NMI_MASK, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %60

54:                                               ; preds = %1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %56, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = call i32 %57(%struct.kvm_vcpu* %58, i32 1)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = load i32, i32* @X86_EFLAGS_FIXED, align 4
  %63 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %61, i32 %62)
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %65 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %64, i32 32768)
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @X86_CR0_PE, align 4
  %71 = load i32, i32* @X86_CR0_EM, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @X86_CR0_TS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @X86_CR0_PG, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %69, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %80, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 %81(%struct.kvm_vcpu* %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %90, align 8
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %93 = call i32 %91(%struct.kvm_vcpu* %92, i32 0)
  %94 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %5, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)** %97, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %100 = call i32 %98(%struct.kvm_vcpu* %99, %struct.desc_ptr* %5)
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %102 = load i32, i32* @DR7_FIXED_1, align 4
  %103 = call i32 @__kvm_set_dr(%struct.kvm_vcpu* %101, i32 7, i32 %102)
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 4
  %109 = and i32 %108, 65535
  %110 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 2
  store i32 -1, i32* %118, align 8
  %119 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 2
  store i32 -1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 3
  store i32 3, i32* %120, align 4
  %121 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 3
  store i32 3, i32* %121, align 4
  %122 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 12
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 12
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 11
  store i64 0, i64* %124, align 8
  %125 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 11
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 4
  store i32 1, i32* %126, align 8
  %127 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 4
  store i32 1, i32* %127, align 8
  %128 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 10
  store i64 0, i64* %128, align 8
  %129 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 10
  store i64 0, i64* %129, align 8
  %130 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 5
  store i32 1, i32* %130, align 4
  %131 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 5
  store i32 1, i32* %131, align 4
  %132 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 9
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 9
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 6
  store i32 1, i32* %134, align 8
  %135 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 6
  store i32 1, i32* %135, align 8
  %136 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 8
  store i64 0, i64* %136, align 8
  %137 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 8
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 7
  store i64 0, i64* %138, align 8
  %139 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %3, i32 0, i32 7
  store i64 0, i64* %139, align 8
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %141 = load i32, i32* @VCPU_SREG_CS, align 4
  %142 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %140, %struct.kvm_segment* %3, i32 %141)
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %144 = load i32, i32* @VCPU_SREG_DS, align 4
  %145 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %143, %struct.kvm_segment* %4, i32 %144)
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %147 = load i32, i32* @VCPU_SREG_ES, align 4
  %148 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %146, %struct.kvm_segment* %4, i32 %147)
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %150 = load i32, i32* @VCPU_SREG_FS, align 4
  %151 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %149, %struct.kvm_segment* %4, i32 %150)
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %153 = load i32, i32* @VCPU_SREG_GS, align 4
  %154 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %152, %struct.kvm_segment* %4, i32 %153)
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %156 = load i32, i32* @VCPU_SREG_SS, align 4
  %157 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %155, %struct.kvm_segment* %4, i32 %156)
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %159 = call i32 @kvm_update_cpuid(%struct.kvm_vcpu* %158)
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %161 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %160)
  ret void
}

declare dso_local i32 @trace_kvm_enter_smm(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @enter_smm_save_state_32(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvm_vcpu_write_guest(%struct.kvm_vcpu*, i32, i8*, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__kvm_set_dr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

declare dso_local i32 @kvm_update_cpuid(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
