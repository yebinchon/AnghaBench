; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___set_sregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___set_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)* }
%struct.kvm_vcpu = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.desc_ptr = type { i32, i32 }
%struct.kvm_sregs = type { i64, i64, i64, i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.msr_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_11__* null, align 8
@VCPU_EXREG_CR3 = common dso_local global i32 0, align 4
@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@X86_CR4_PKE = common dso_local global i32 0, align 4
@KVM_NR_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Set back pending irq %d\0A\00", align 1
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @__set_sregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.msr_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.desc_ptr, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %17 = call i64 @kvm_valid_sregs(%struct.kvm_vcpu* %15, %struct.kvm_sregs* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %290

20:                                               ; preds = %2
  %21 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %5, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i64 @kvm_set_apic_base(%struct.kvm_vcpu* %26, %struct.msr_data* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %290

30:                                               ; preds = %20
  %31 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %31, i32 0, i32 16
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %36, i32 0, i32 16
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)** %42, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 %43(%struct.kvm_vcpu* %44, %struct.desc_ptr* %11)
  %46 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)*, i32 (%struct.kvm_vcpu*, %struct.desc_ptr*)** %57, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = call i32 %58(%struct.kvm_vcpu* %59, %struct.desc_ptr* %11)
  %61 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %67)
  %69 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %77 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i32, i32* @VCPU_EXREG_CR3, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = call i32 @__set_bit(i32 %82, i32* %85)
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %87, i32 %90)
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %104, align 8
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %108 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 %105(%struct.kvm_vcpu* %106, i64 %109)
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = call i64 @kvm_read_cr0(%struct.kvm_vcpu* %111)
  %113 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %114 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %121, align 8
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %124 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %125 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 %122(%struct.kvm_vcpu* %123, i64 %126)
  %128 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %129 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  store i64 %130, i64* %133, align 8
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %135 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %134)
  %136 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %137 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %143)
  %145 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %146 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = xor i32 %144, %147
  %149 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %150 = load i32, i32* @X86_CR4_PKE, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %156, align 8
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %159 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %157(%struct.kvm_vcpu* %158, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %30
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %167 = call i32 @kvm_update_cpuid(%struct.kvm_vcpu* %166)
  br label %168

168:                                              ; preds = %165, %30
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = call i32 @srcu_read_lock(i32* %172)
  store i32 %173, i32* %10, align 4
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %175 = call i64 @is_pae_paging(%struct.kvm_vcpu* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %168
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %180 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %184 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %183)
  %185 = call i32 @load_pdptrs(%struct.kvm_vcpu* %178, i32 %182, i64 %184)
  store i32 1, i32* %6, align 4
  br label %186

186:                                              ; preds = %177, %168
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %188 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @srcu_read_unlock(i32* %190, i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %197 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %196)
  br label %198

198:                                              ; preds = %195, %186
  %199 = load i32, i32* @KVM_NR_INTERRUPTS, align 4
  store i32 %199, i32* %9, align 4
  %200 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %201 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %200, i32 0, i32 12
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to i64*
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @find_first_bit(i64* %203, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %198
  %210 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @kvm_queue_interrupt(%struct.kvm_vcpu* %210, i32 %211, i32 0)
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %198
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %217 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %218 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %217, i32 0, i32 4
  %219 = load i32, i32* @VCPU_SREG_CS, align 4
  %220 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %216, %struct.TYPE_12__* %218, i32 %219)
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %222 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %223 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %222, i32 0, i32 11
  %224 = load i32, i32* @VCPU_SREG_DS, align 4
  %225 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %221, %struct.TYPE_12__* %223, i32 %224)
  %226 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %227 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %228 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %227, i32 0, i32 10
  %229 = load i32, i32* @VCPU_SREG_ES, align 4
  %230 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %226, %struct.TYPE_12__* %228, i32 %229)
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %233 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %232, i32 0, i32 9
  %234 = load i32, i32* @VCPU_SREG_FS, align 4
  %235 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %231, %struct.TYPE_12__* %233, i32 %234)
  %236 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %237 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %238 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %237, i32 0, i32 8
  %239 = load i32, i32* @VCPU_SREG_GS, align 4
  %240 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %236, %struct.TYPE_12__* %238, i32 %239)
  %241 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %242 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %243 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %242, i32 0, i32 7
  %244 = load i32, i32* @VCPU_SREG_SS, align 4
  %245 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %241, %struct.TYPE_12__* %243, i32 %244)
  %246 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %247 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %248 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %247, i32 0, i32 6
  %249 = load i32, i32* @VCPU_SREG_TR, align 4
  %250 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %246, %struct.TYPE_12__* %248, i32 %249)
  %251 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %252 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %253 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %252, i32 0, i32 5
  %254 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %255 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %251, %struct.TYPE_12__* %253, i32 %254)
  %256 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %257 = call i32 @update_cr8_intercept(%struct.kvm_vcpu* %256)
  %258 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %259 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %286

261:                                              ; preds = %215
  %262 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %263 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %262)
  %264 = icmp eq i32 %263, 65520
  br i1 %264, label %265, label %286

265:                                              ; preds = %261
  %266 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %267 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 61440
  br i1 %270, label %271, label %286

271:                                              ; preds = %265
  %272 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %273 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, -65536
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %279 = call i32 @is_protmode(%struct.kvm_vcpu* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %284 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  store i32 %282, i32* %285, align 8
  br label %286

286:                                              ; preds = %281, %277, %271, %265, %261, %215
  %287 = load i32, i32* @KVM_REQ_EVENT, align 4
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %289 = call i32 @kvm_make_request(i32 %287, %struct.kvm_vcpu* %288)
  store i32 0, i32* %12, align 4
  br label %290

290:                                              ; preds = %286, %29, %19
  %291 = load i32, i32* %12, align 4
  ret i32 %291
}

declare dso_local i64 @kvm_valid_sregs(%struct.kvm_vcpu*, %struct.kvm_sregs*) #1

declare dso_local i64 @kvm_set_apic_base(%struct.kvm_vcpu*, %struct.msr_data*) #1

declare dso_local i64 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_cpuid(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @update_cr8_intercept(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_protmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
