; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_gpsi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_gpsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm_run*, %struct.kvm_vcpu_arch }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu_arch = type { i64* }
%union.mips_instruction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@KVM_TRACE_EXIT_CACHE = common dso_local global i32 0, align 4
@KVM_TRACE_RDHWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"GPSI exception not supported (%p/%#x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_vcpu*)* @kvm_trap_vz_handle_gpsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_gpsi(i32 %0, i32* %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu_arch*, align 8
  %10 = alloca %struct.kvm_run*, align 8
  %11 = alloca %union.mips_instruction, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %7, align 8
  %16 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 1
  store %struct.kvm_vcpu_arch* %18, %struct.kvm_vcpu_arch** %9, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load %struct.kvm_run*, %struct.kvm_run** %20, align 8
  store %struct.kvm_run* %21, %struct.kvm_run** %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CAUSEF_BD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %6, align 8
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %32 = bitcast %union.mips_instruction* %11 to i32*
  %33 = call i32 @kvm_get_badinstr(i32* %30, %struct.kvm_vcpu* %31, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %133

38:                                               ; preds = %29
  %39 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %123 [
    i32 130, label %42
    i32 131, label %48
    i32 128, label %57
  ]

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.kvm_run*, %struct.kvm_run** %10, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = call i32 @kvm_vz_gpsi_cop0(%union.mips_instruction* byval(%union.mips_instruction) align 8 %11, i32* %43, i32 %44, %struct.kvm_run* %45, %struct.kvm_vcpu* %46)
  store i32 %47, i32* %8, align 4
  br label %131

48:                                               ; preds = %38
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = load i32, i32* @KVM_TRACE_EXIT_CACHE, align 4
  %51 = call i32 @trace_kvm_exit(%struct.kvm_vcpu* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.kvm_run*, %struct.kvm_run** %10, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = call i32 @kvm_vz_gpsi_cache(%union.mips_instruction* byval(%union.mips_instruction) align 8 %11, i32* %52, i32 %53, %struct.kvm_run* %54, %struct.kvm_vcpu* %55)
  store i32 %56, i32* %8, align 4
  br label %131

57:                                               ; preds = %38
  %58 = bitcast %union.mips_instruction* %11 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %120 [
    i32 129, label %61
  ]

61:                                               ; preds = %57
  %62 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %61
  br label %122

73:                                               ; preds = %66
  %74 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = bitcast %union.mips_instruction* %11 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 7
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %96 [
    i32 133, label %85
  ]

85:                                               ; preds = %73
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %87 = call i64 @kvm_mips_read_count(%struct.kvm_vcpu* %86)
  %88 = trunc i64 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  br label %103

96:                                               ; preds = %73
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %98 = load i32, i32* @KVM_TRACE_RDHWR, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @KVM_TRACE_HWR(i32 %99, i32 %100)
  %102 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %97, i32 %98, i32 %101, i64 0)
  br label %122

103:                                              ; preds = %85
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %105 = load i32, i32* @KVM_TRACE_RDHWR, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @KVM_TRACE_HWR(i32 %106, i32 %107)
  %109 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %9, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @trace_kvm_hwr(%struct.kvm_vcpu* %104, i32 %105, i32 %108, i64 %115)
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @update_pc(%struct.kvm_vcpu* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  br label %121

120:                                              ; preds = %57
  br label %122

121:                                              ; preds = %103
  br label %131

122:                                              ; preds = %120, %96, %72
  br label %123

123:                                              ; preds = %38, %122
  %124 = load i32*, i32** %6, align 8
  %125 = bitcast %union.mips_instruction* %11 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @kvm_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %124, i32 %126)
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %129 = call i32 @kvm_arch_vcpu_dump_regs(%struct.kvm_vcpu* %128)
  %130 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %123, %121, %48, %42
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %36
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_vz_gpsi_cop0(%union.mips_instruction* byval(%union.mips_instruction) align 8, i32*, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_exit(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vz_gpsi_cache(%union.mips_instruction* byval(%union.mips_instruction) align 8, i32*, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_mips_read_count(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_hwr(%struct.kvm_vcpu*, i32, i32, i64) #1

declare dso_local i32 @KVM_TRACE_HWR(i32, i32) #1

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_err(i8*, i32*, i32) #1

declare dso_local i32 @kvm_arch_vcpu_dump_regs(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
