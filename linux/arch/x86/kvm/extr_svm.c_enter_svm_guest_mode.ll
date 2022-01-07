; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_enter_svm_guest_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_enter_svm_guest_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_22__*, %struct.TYPE_24__, %struct.TYPE_29__ }
%struct.TYPE_22__ = type { %struct.TYPE_23__, %struct.TYPE_26__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.vmcb = type { %struct.TYPE_25__, %struct.TYPE_28__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kvm_host_map = type { i32 }

@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@HF_HIF_MASK = common dso_local global i32 0, align 4
@SVM_NESTED_CTL_NP_ENABLE = common dso_local global i32 0, align 4
@npt_enabled = common dso_local global i64 0, align 8
@V_INTR_MASKING_MASK = common dso_local global i32 0, align 4
@HF_VINTR_MASK = common dso_local global i32 0, align 4
@INTERCEPT_CR8_READ = common dso_local global i32 0, align 4
@INTERCEPT_CR8_WRITE = common dso_local global i32 0, align 4
@INTERCEPT_VMMCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*, i32, %struct.vmcb*, %struct.kvm_host_map*)* @enter_svm_guest_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_svm_guest_mode(%struct.vcpu_svm* %0, i32 %1, %struct.vmcb* %2, %struct.kvm_host_map* %3) #0 {
  %5 = alloca %struct.vcpu_svm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmcb*, align 8
  %8 = alloca %struct.kvm_host_map*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vmcb* %2, %struct.vmcb** %7, align 8
  store %struct.kvm_host_map* %3, %struct.kvm_host_map** %8, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 2
  %11 = call i32 @kvm_get_rflags(%struct.TYPE_29__* %10)
  %12 = load i32, i32* @X86_EFLAGS_IF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* @HF_HIF_MASK, align 4
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %18 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 8
  br label %32

23:                                               ; preds = %4
  %24 = load i32, i32* @HF_HIF_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %27 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %25
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %23, %15
  %33 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %34 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SVM_NESTED_CTL_NP_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %42 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %46 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 2
  %50 = call i32 @nested_svm_init_mmu_context(%struct.TYPE_29__* %49)
  br label %51

51:                                               ; preds = %40, %32
  %52 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %53 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 13
  store i32 %55, i32* %60, align 4
  %61 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %62 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %66 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 12
  store i32 %64, i32* %69, align 4
  %70 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %71 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 15
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %75 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 11
  store i32 %73, i32* %78, align 4
  %79 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %80 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %84 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 10
  store i32 %82, i32* %87, align 4
  %88 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %89 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %93 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %92, i32 0, i32 0
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 9
  store i32 %91, i32* %96, align 4
  %97 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %98 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %102 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 8
  store i32 %100, i32* %105, align 4
  %106 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %107 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %106, i32 0, i32 2
  %108 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %109 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @kvm_set_rflags(%struct.TYPE_29__* %107, i32 %111)
  %113 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %114 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %113, i32 0, i32 2
  %115 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %116 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @svm_set_efer(%struct.TYPE_29__* %114, i32 %118)
  %120 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %121 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %120, i32 0, i32 2
  %122 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %123 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @svm_set_cr0(%struct.TYPE_29__* %121, i32 %125)
  %127 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %128 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %127, i32 0, i32 2
  %129 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %130 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @svm_set_cr4(%struct.TYPE_29__* %128, i32 %132)
  %134 = load i64, i64* @npt_enabled, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %51
  %137 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %138 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %142 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %141, i32 0, i32 0
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 7
  store i32 %140, i32* %145, align 4
  %146 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %147 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %151 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  br label %162

154:                                              ; preds = %51
  %155 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %156 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %155, i32 0, i32 2
  %157 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %158 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @kvm_set_cr3(%struct.TYPE_29__* %156, i32 %160)
  br label %162

162:                                              ; preds = %154, %136
  %163 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %164 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %163, i32 0, i32 2
  %165 = call i32 @kvm_mmu_reset_context(%struct.TYPE_29__* %164)
  %166 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %167 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %171 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 2
  store i32 %169, i32* %173, align 8
  %174 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %175 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %174, i32 0, i32 0
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 6
  store i32 %169, i32* %178, align 4
  %179 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %180 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %179, i32 0, i32 2
  %181 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %182 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @kvm_rax_write(%struct.TYPE_29__* %180, i32 %184)
  %186 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %187 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %186, i32 0, i32 2
  %188 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %189 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @kvm_rsp_write(%struct.TYPE_29__* %187, i32 %191)
  %193 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %194 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %193, i32 0, i32 2
  %195 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %196 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @kvm_rip_write(%struct.TYPE_29__* %194, i32 %198)
  %200 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %201 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %205 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %204, i32 0, i32 0
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 5
  store i32 %203, i32* %208, align 4
  %209 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %210 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %214 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %213, i32 0, i32 0
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 4
  store i32 %212, i32* %217, align 4
  %218 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %219 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %223 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %222, i32 0, i32 0
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 3
  store i32 %221, i32* %226, align 4
  %227 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %228 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %232 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %231, i32 0, i32 0
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 2
  store i32 %230, i32* %235, align 4
  %236 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %237 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %241 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %240, i32 0, i32 0
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  store i32 %239, i32* %244, align 4
  %245 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %246 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %250 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %249, i32 0, i32 0
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 0
  store i32 %248, i32* %253, align 4
  %254 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %255 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = and i64 %258, -4096
  %260 = trunc i64 %259 to i32
  %261 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %262 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 8
  %264 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %265 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = and i64 %268, -4096
  %270 = trunc i64 %269 to i32
  %271 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %272 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 1
  store i32 %270, i32* %273, align 4
  %274 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %275 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 15
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %279 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 6
  store i32 %277, i32* %280, align 8
  %281 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %282 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 14
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %286 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 5
  store i32 %284, i32* %287, align 4
  %288 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %289 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 13
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %293 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 4
  store i32 %291, i32* %294, align 8
  %295 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %296 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 12
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %300 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 3
  store i32 %298, i32* %301, align 4
  %302 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %303 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %302, i32 0, i32 2
  %304 = call i32 @svm_flush_tlb(%struct.TYPE_29__* %303, i32 1)
  %305 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %306 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %312 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %311, i32 0, i32 0
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  store i32 %310, i32* %315, align 4
  %316 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %317 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %162
  %324 = load i32, i32* @HF_VINTR_MASK, align 4
  %325 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %326 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %324
  store i32 %330, i32* %328, align 8
  br label %340

331:                                              ; preds = %162
  %332 = load i32, i32* @HF_VINTR_MASK, align 4
  %333 = xor i32 %332, -1
  %334 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %335 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, %333
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %331, %323
  %341 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %342 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @HF_VINTR_MASK, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %340
  %350 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %351 = load i32, i32* @INTERCEPT_CR8_READ, align 4
  %352 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %350, i32 %351)
  %353 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %354 = load i32, i32* @INTERCEPT_CR8_WRITE, align 4
  %355 = call i32 @clr_cr_intercept(%struct.vcpu_svm* %353, i32 %354)
  br label %356

356:                                              ; preds = %349, %340
  %357 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %358 = load i32, i32* @INTERCEPT_VMMCALL, align 4
  %359 = call i32 @clr_intercept(%struct.vcpu_svm* %357, i32 %358)
  %360 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %361 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 11
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %365 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %363
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %367, align 4
  %372 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %373 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %378 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %377, i32 0, i32 0
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 8
  store i32 %376, i32* %381, align 4
  %382 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %383 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 10
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %387 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %386, i32 0, i32 0
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 7
  store i32 %385, i32* %390, align 4
  %391 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %392 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 9
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %396 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %395, i32 0, i32 0
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 6
  store i32 %394, i32* %399, align 4
  %400 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %401 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 8
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %405 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %404, i32 0, i32 0
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 5
  store i32 %403, i32* %408, align 4
  %409 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %410 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %414 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %413, i32 0, i32 0
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 4
  store i32 %412, i32* %417, align 4
  %418 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %419 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %423 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %422, i32 0, i32 0
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %425, i32 0, i32 3
  store i32 %421, i32* %426, align 4
  %427 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %428 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %432 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %431, i32 0, i32 0
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 2
  store i32 %430, i32* %435, align 4
  %436 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %437 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %441 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %440, i32 0, i32 0
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %443, i32 0, i32 1
  store i32 %439, i32* %444, align 4
  %445 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %446 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %445, i32 0, i32 2
  %447 = load %struct.kvm_host_map*, %struct.kvm_host_map** %8, align 8
  %448 = call i32 @kvm_vcpu_unmap(%struct.TYPE_29__* %446, %struct.kvm_host_map* %447, i32 1)
  %449 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %450 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %449, i32 0, i32 2
  %451 = call i32 @enter_guest_mode(%struct.TYPE_29__* %450)
  %452 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %453 = call i32 @recalc_intercepts(%struct.vcpu_svm* %452)
  %454 = load i32, i32* %6, align 4
  %455 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %456 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 2
  store i32 %454, i32* %457, align 8
  %458 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %459 = call i32 @enable_gif(%struct.vcpu_svm* %458)
  %460 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %461 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %460, i32 0, i32 0
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %461, align 8
  %463 = call i32 @mark_all_dirty(%struct.TYPE_22__* %462)
  ret void
}

declare dso_local i32 @kvm_get_rflags(%struct.TYPE_29__*) #1

declare dso_local i32 @nested_svm_init_mmu_context(%struct.TYPE_29__*) #1

declare dso_local i32 @kvm_set_rflags(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @svm_set_efer(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @svm_set_cr0(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @svm_set_cr4(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.TYPE_29__*) #1

declare dso_local i32 @kvm_rax_write(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @kvm_rsp_write(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @svm_flush_tlb(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @clr_cr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @clr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.TYPE_29__*, %struct.kvm_host_map*, i32) #1

declare dso_local i32 @enter_guest_mode(%struct.TYPE_29__*) #1

declare dso_local i32 @recalc_intercepts(%struct.vcpu_svm*) #1

declare dso_local i32 @enable_gif(%struct.vcpu_svm*) #1

declare dso_local i32 @mark_all_dirty(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
