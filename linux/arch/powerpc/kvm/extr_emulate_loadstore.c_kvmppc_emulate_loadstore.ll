; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_emulate_loadstore.c_kvmppc_emulate_loadstore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_emulate_loadstore.c_kvmppc_emulate_loadstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.kvm_run* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64, i8*, %struct.TYPE_12__, %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_run = type { i32 }
%struct.instruction_op = type { i32, i32, i32, i32, i32, i32, i32 }

@EMULATE_FAIL = common dso_local global i32 0, align 4
@EMULATED_INST_EXITS = common dso_local global i32 0, align 4
@INST_GENERIC = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4
@KVMPPC_VSX_COPY_NONE = common dso_local global i8* null, align 8
@INSTR_TYPE_MASK = common dso_local global i32 0, align 4
@BYTEREV = common dso_local global i32 0, align 4
@SIGNEXT = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@FPCONV = common dso_local global i32 0, align 4
@KVMPPC_VMX_COPY_BYTE = common dso_local global i8* null, align 8
@KVMPPC_VMX_COPY_DWORD = common dso_local global i8* null, align 8
@KVMPPC_VMX_COPY_HWORD = common dso_local global i8* null, align 8
@KVMPPC_VMX_COPY_WORD = common dso_local global i8* null, align 8
@KVMPPC_VSX_COPY_DWORD = common dso_local global i8* null, align 8
@KVMPPC_VSX_COPY_DWORD_LOAD_DUMP = common dso_local global i8* null, align 8
@KVMPPC_VSX_COPY_WORD = common dso_local global i8* null, align 8
@KVMPPC_VSX_COPY_WORD_LOAD_DUMP = common dso_local global i8* null, align 8
@KVM_MMIO_REG_FPR = common dso_local global i32 0, align 4
@KVM_MMIO_REG_VMX = common dso_local global i32 0, align 4
@KVM_MMIO_REG_VSX = common dso_local global i32 0, align 4
@MSR_FP = common dso_local global i32 0, align 4
@MSR_VEC = common dso_local global i32 0, align 4
@MSR_VSX = common dso_local global i32 0, align 4
@VSX_CHECK_VEC = common dso_local global i32 0, align 4
@VSX_FPCONV = common dso_local global i32 0, align 4
@VSX_SPLAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_emulate_loadstore(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.instruction_op, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  %17 = load %struct.kvm_run*, %struct.kvm_run** %16, align 8
  store %struct.kvm_run* %17, %struct.kvm_run** %4, align 8
  %18 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %18, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @EMULATED_INST_EXITS, align 4
  %21 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %19, i32 %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* @INST_GENERIC, align 4
  %24 = call i32 @kvmppc_get_last_inst(%struct.kvm_vcpu* %22, i32 %23, i32* %5)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EMULATE_DONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %189

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @get_ra(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @get_rs(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @get_rt(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** @KVMPPC_VSX_COPY_NONE, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 6
  store i8* %43, i8** %46, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 10
  store i64 0, i64* %52, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 9
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 7
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @analyse_instr(%struct.instruction_op* %11, %struct.TYPE_12__* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %166

79:                                               ; preds = %30
  %80 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @INSTR_TYPE_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %12, align 4
  %84 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GETSIZE(i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  switch i32 %87, label %164 [
    i32 135, label %88
    i32 131, label %138
    i32 136, label %162
  ]

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BYTEREV, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SIGNEXT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %88
  %99 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @kvmppc_handle_loads(%struct.kvm_run* %99, %struct.kvm_vcpu* %100, i32 %102, i32 %103, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %120

109:                                              ; preds = %88
  %110 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @kvmppc_handle_load(%struct.kvm_run* %110, %struct.kvm_vcpu* %111, i32 %113, i32 %114, i32 %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %109, %98
  %121 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @UPDATE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @EMULATE_FAIL, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %131, i32 %133, i32 %135)
  br label %137

137:                                              ; preds = %130, %126, %120
  br label %165

138:                                              ; preds = %79
  %139 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %141 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @kvmppc_handle_store(%struct.kvm_run* %139, %struct.kvm_vcpu* %140, i32 %142, i32 %143, i32 1)
  store i32 %144, i32* %9, align 4
  %145 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @UPDATE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %138
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @EMULATE_FAIL, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %155, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %154, %150, %138
  br label %165

162:                                              ; preds = %79
  %163 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %163, i32* %9, align 4
  br label %165

164:                                              ; preds = %79
  br label %165

165:                                              ; preds = %164, %162, %161, %137
  br label %166

166:                                              ; preds = %165, %30
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @EMULATE_FAIL, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %171, i32 0)
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %176 = call i64 @kvmppc_get_pc(%struct.kvm_vcpu* %175)
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @trace_kvm_ppc_instr(i32 %174, i64 %176, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %184 = call i64 @kvmppc_get_pc(%struct.kvm_vcpu* %183)
  %185 = add nsw i64 %184, 4
  %186 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %182, i64 %185)
  br label %187

187:                                              ; preds = %181, %173
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %28
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @kvmppc_set_exit_type(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_last_inst(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @get_ra(i32) #1

declare dso_local i32 @get_rs(i32) #1

declare dso_local i32 @get_rt(i32) #1

declare dso_local i64 @analyse_instr(%struct.instruction_op*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @GETSIZE(i32) #1

declare dso_local i32 @kvmppc_handle_loads(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvmppc_handle_load(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_handle_store(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvmppc_core_queue_program(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_ppc_instr(i32, i64, i32) #1

declare dso_local i64 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
