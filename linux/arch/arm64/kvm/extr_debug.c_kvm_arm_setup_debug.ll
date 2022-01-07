; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_debug.c_kvm_arm_setup_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_debug.c_kvm_arm_setup_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_3__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@KVM_ARM64_DEBUG_DIRTY = common dso_local global i32 0, align 4
@mdcr_el2 = common dso_local global i32 0, align 4
@MDCR_EL2_HPMN_MASK = common dso_local global i32 0, align 4
@MDCR_EL2_TPM = common dso_local global i32 0, align 4
@MDCR_EL2_TPMS = common dso_local global i32 0, align 4
@MDCR_EL2_TPMCR = common dso_local global i32 0, align 4
@MDCR_EL2_TDRA = common dso_local global i32 0, align 4
@MDCR_EL2_TDOSA = common dso_local global i32 0, align 4
@MDCR_EL2_TDE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@DBG_SPSR_SS = common dso_local global i64 0, align 8
@MDSCR_EL1 = common dso_local global i32 0, align 4
@DBG_MDSCR_SS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"SPSR_EL2\00", align 1
@KVM_GUESTDBG_USE_HW = common dso_local global i32 0, align 4
@DBG_MDSCR_MDE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"BKPTS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WAPTS\00", align 1
@MDCR_EL2_TDA = common dso_local global i32 0, align 4
@DBG_MDSCR_KDE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"MDCR_EL2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"MDSCR_EL1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arm_setup_debug(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @KVM_ARM64_DEBUG_DIRTY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @trace_kvm_arm_setup_debug(%struct.kvm_vcpu* %14, i32 %17)
  %19 = load i32, i32* @mdcr_el2, align 4
  %20 = call i32 @__this_cpu_read(i32 %19)
  %21 = load i32, i32* @MDCR_EL2_HPMN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @MDCR_EL2_TPM, align 4
  %27 = load i32, i32* @MDCR_EL2_TPMS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MDCR_EL2_TPMCR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MDCR_EL2_TDRA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MDCR_EL2_TDOSA, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %154

44:                                               ; preds = %1
  %45 = load i32, i32* @MDCR_EL2_TDE, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = call i32 @save_guest_debug_regs(%struct.kvm_vcpu* %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %44
  %60 = load i64, i64* @DBG_SPSR_SS, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %61)
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = load i32, i32* @MDSCR_EL1, align 4
  %67 = call i64 @vcpu_read_sys_reg(%struct.kvm_vcpu* %65, i32 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* @DBG_MDSCR_SS, align 8
  %69 = load i64, i64* %4, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* @MDSCR_EL1, align 4
  %74 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %71, i64 %72, i32 %73)
  br label %87

75:                                               ; preds = %44
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = load i32, i32* @MDSCR_EL1, align 4
  %78 = call i64 @vcpu_read_sys_reg(%struct.kvm_vcpu* %76, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* @DBG_MDSCR_SS, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %4, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* @MDSCR_EL1, align 4
  %86 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %83, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %75, %59
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %88)
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @trace_kvm_arm_set_dreg32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @KVM_GUESTDBG_USE_HW, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %153

98:                                               ; preds = %87
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %100 = load i32, i32* @MDSCR_EL1, align 4
  %101 = call i64 @vcpu_read_sys_reg(%struct.kvm_vcpu* %99, i32 %100)
  store i64 %101, i64* %4, align 8
  %102 = load i64, i64* @DBG_MDSCR_MDE, align 8
  %103 = load i64, i64* %4, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %4, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i32, i32* @MDSCR_EL1, align 4
  %108 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %105, i64 %106, i32 %107)
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store %struct.TYPE_3__* %111, %struct.TYPE_3__** %114, align 8
  %115 = load i32, i32* @KVM_ARM64_DEBUG_DIRTY, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  store i32 1, i32* %3, align 4
  %121 = call i32 (...) @get_num_brps()
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = call i32 @trace_kvm_arm_set_regset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32* %128, i32* %135)
  %137 = call i32 (...) @get_num_wrps()
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %139 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = call i32 @trace_kvm_arm_set_regset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32* %144, i32* %151)
  br label %153

153:                                              ; preds = %98, %87
  br label %154

154:                                              ; preds = %153, %1
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %165 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = icmp ne %struct.TYPE_3__* %163, %166
  br label %168

168:                                              ; preds = %159, %154
  %169 = phi i1 [ false, %154 ], [ %167, %159 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @BUG_ON(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i32, i32* @MDCR_EL2_TDA, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %174, %168
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %183 = load i32, i32* @MDSCR_EL1, align 4
  %184 = call i64 @vcpu_read_sys_reg(%struct.kvm_vcpu* %182, i32 %183)
  %185 = load i64, i64* @DBG_MDSCR_KDE, align 8
  %186 = load i64, i64* @DBG_MDSCR_MDE, align 8
  %187 = or i64 %185, %186
  %188 = and i64 %184, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %181
  %191 = load i32, i32* @KVM_ARM64_DEBUG_DIRTY, align 4
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %191
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %190, %181
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %199 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 @trace_kvm_arm_set_dreg32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %202)
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %205 = load i32, i32* @MDSCR_EL1, align 4
  %206 = call i64 @vcpu_read_sys_reg(%struct.kvm_vcpu* %204, i32 %205)
  %207 = call i32 @trace_kvm_arm_set_dreg32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %206)
  ret void
}

declare dso_local i32 @trace_kvm_arm_setup_debug(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @save_guest_debug_regs(%struct.kvm_vcpu*) #1

declare dso_local i64* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i64 @vcpu_read_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_write_sys_reg(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @trace_kvm_arm_set_dreg32(i8*, i64) #1

declare dso_local i32 @trace_kvm_arm_set_regset(i8*, i32, i32*, i32*) #1

declare dso_local i32 @get_num_brps(...) #1

declare dso_local i32 @get_num_wrps(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
