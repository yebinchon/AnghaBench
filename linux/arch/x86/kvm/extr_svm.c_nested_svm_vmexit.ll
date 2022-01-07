; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmexit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_27__, %struct.vmcb*, %struct.TYPE_26__, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.vmcb = type { %struct.vmcb_control_area, %struct.TYPE_24__ }
%struct.vmcb_control_area = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, %struct.vmcb* }
%struct.kvm_host_map = type { %struct.vmcb* }

@KVM_ISA_SVM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SVM_EVTINJ_VALID = common dso_local global i32 0, align 4
@HF_VINTR_MASK = common dso_local global i32 0, align 4
@V_INTR_MASKING_MASK = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@npt_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_vmexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_vmexit(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb*, align 8
  %6 = alloca %struct.vmcb*, align 8
  %7 = alloca %struct.vmcb*, align 8
  %8 = alloca %struct.kvm_host_map, align 8
  %9 = alloca %struct.vmcb_control_area*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %13 = load %struct.vmcb*, %struct.vmcb** %12, align 8
  store %struct.vmcb* %13, %struct.vmcb** %6, align 8
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 1
  %16 = load %struct.vmcb*, %struct.vmcb** %15, align 8
  store %struct.vmcb* %16, %struct.vmcb** %7, align 8
  %17 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %18 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %22 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %26 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %30 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %34 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @KVM_ISA_SVM, align 4
  %38 = call i32 @trace_kvm_nested_vmexit_inject(i32 %20, i32 %24, i32 %28, i32 %32, i64 %36, i32 %37)
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 0
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpa_to_gfn(i32 %44)
  %46 = call i32 @kvm_vcpu_map(%struct.TYPE_27__* %40, i32 %45, %struct.kvm_host_map* %8)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 0
  %57 = call i32 @kvm_inject_gp(%struct.TYPE_27__* %56, i32 0)
  br label %58

58:                                               ; preds = %54, %49
  store i32 1, i32* %2, align 4
  br label %535

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %8, i32 0, i32 0
  %61 = load %struct.vmcb*, %struct.vmcb** %60, align 8
  store %struct.vmcb* %61, %struct.vmcb** %5, align 8
  %62 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %63 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %62, i32 0, i32 0
  %64 = call i32 @leave_guest_mode(%struct.TYPE_27__* %63)
  %65 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %66 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %69 = call i32 @disable_gif(%struct.vcpu_svm* %68)
  %70 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %71 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 15
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %75 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 15
  store i32 %73, i32* %76, align 8
  %77 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %78 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %82 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 14
  store i32 %80, i32* %83, align 4
  %84 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %85 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %89 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 13
  store i32 %87, i32* %90, align 8
  %91 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %92 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %96 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 12
  store i32 %94, i32* %97, align 4
  %98 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %99 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %103 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 11
  store i32 %101, i32* %104, align 8
  %105 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %106 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %110 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 10
  store i32 %108, i32* %111, align 4
  %112 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %113 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %118 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 8
  store i32 %116, i32* %119, align 4
  %120 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %121 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %120, i32 0, i32 0
  %122 = call i32 @kvm_read_cr0(%struct.TYPE_27__* %121)
  %123 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %124 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %127 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %126, i32 0, i32 0
  %128 = call i32 @kvm_read_cr3(%struct.TYPE_27__* %127)
  %129 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %130 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 6
  store i32 %128, i32* %131, align 4
  %132 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %133 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 17
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %137 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 17
  store i32 %135, i32* %138, align 8
  %139 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %140 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %145 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 7
  store i32 %143, i32* %146, align 8
  %147 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %148 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %147, i32 0, i32 0
  %149 = call i32 @kvm_get_rflags(%struct.TYPE_27__* %148)
  %150 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %151 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 9
  store i32 %149, i32* %152, align 8
  %153 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %154 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %158 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 8
  %160 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %161 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %165 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 4
  store i32 %163, i32* %166, align 4
  %167 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %168 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %172 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 5
  store i32 %170, i32* %173, align 8
  %174 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %175 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %179 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  store i64 %177, i64* %180, align 8
  %181 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %182 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 16
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %186 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 16
  store i32 %184, i32* %187, align 4
  %188 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %189 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %193 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  store i64 %191, i64* %194, align 8
  %195 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %196 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %200 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %200, i32 0, i32 3
  store i32 %198, i32* %201, align 4
  %202 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %203 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %203, i32 0, i32 15
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %207 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %207, i32 0, i32 15
  store i32 %205, i32* %208, align 8
  %209 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %210 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %214 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %214, i32 0, i32 14
  store i32 %212, i32* %215, align 4
  %216 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %217 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %217, i32 0, i32 13
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %221 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %221, i32 0, i32 13
  store i32 %219, i32* %222, align 8
  %223 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %224 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %228 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %228, i32 0, i32 12
  store i32 %226, i32* %229, align 4
  %230 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %231 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %235 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %235, i32 0, i32 11
  store i32 %233, i32* %236, align 8
  %237 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %238 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %242 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %242, i32 0, i32 10
  store i32 %240, i32* %243, align 4
  %244 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %245 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %249 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %252 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %256 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %256, i32 0, i32 8
  store i64 %254, i64* %257, align 8
  %258 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %259 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %59
  %263 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %264 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %268 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %268, i32 0, i32 9
  store i32 %266, i32* %269, align 8
  br label %270

270:                                              ; preds = %262, %59
  %271 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %272 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %270
  %279 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %280 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %279, i32 0, i32 0
  store %struct.vmcb_control_area* %280, %struct.vmcb_control_area** %9, align 8
  %281 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %282 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %9, align 8
  %286 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %288 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %9, align 8
  %292 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %291, i32 0, i32 8
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %278, %270
  %294 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %295 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %295, i32 0, i32 7
  store i64 0, i64* %296, align 8
  %297 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %298 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %298, i32 0, i32 1
  store i32 0, i32* %299, align 4
  %300 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %301 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %301, i32 0, i32 6
  store i64 0, i64* %302, align 8
  %303 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %304 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %303, i32 0, i32 1
  %305 = load %struct.vmcb*, %struct.vmcb** %304, align 8
  %306 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %310 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %310, i32 0, i32 5
  store i32 %308, i32* %311, align 4
  %312 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %313 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %312, i32 0, i32 1
  %314 = load %struct.vmcb*, %struct.vmcb** %313, align 8
  %315 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %319 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %319, i32 0, i32 4
  store i32 %317, i32* %320, align 8
  %321 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %322 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @HF_VINTR_MASK, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %337, label %329

329:                                              ; preds = %293
  %330 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %333 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %331
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %329, %293
  %338 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %339 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %340 = call i32 @copy_vmcb_control_area(%struct.vmcb* %338, %struct.vmcb* %339)
  %341 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %342 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %341, i32 0, i32 1
  %343 = load %struct.vmcb*, %struct.vmcb** %342, align 8
  %344 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %348 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 3
  store i32 %346, i32* %350, align 4
  %351 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %352 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %351, i32 0, i32 0
  %353 = call i32 @kvm_clear_exception_queue(%struct.TYPE_27__* %352)
  %354 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %355 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %354, i32 0, i32 0
  %356 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_27__* %355)
  %357 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %358 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 0
  store i64 0, i64* %359, align 8
  %360 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %361 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 15
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %365 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %364, i32 0, i32 1
  %366 = load %struct.vmcb*, %struct.vmcb** %365, align 8
  %367 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 15
  store i32 %363, i32* %368, align 8
  %369 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %370 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 14
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %374 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %373, i32 0, i32 1
  %375 = load %struct.vmcb*, %struct.vmcb** %374, align 8
  %376 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 14
  store i32 %372, i32* %377, align 4
  %378 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %379 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 13
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %383 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %382, i32 0, i32 1
  %384 = load %struct.vmcb*, %struct.vmcb** %383, align 8
  %385 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 13
  store i32 %381, i32* %386, align 8
  %387 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %388 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %388, i32 0, i32 12
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %392 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %391, i32 0, i32 1
  %393 = load %struct.vmcb*, %struct.vmcb** %392, align 8
  %394 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 12
  store i32 %390, i32* %395, align 4
  %396 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %397 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 11
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %401 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %400, i32 0, i32 1
  %402 = load %struct.vmcb*, %struct.vmcb** %401, align 8
  %403 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 11
  store i32 %399, i32* %404, align 8
  %405 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %406 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 10
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %410 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %409, i32 0, i32 1
  %411 = load %struct.vmcb*, %struct.vmcb** %410, align 8
  %412 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 10
  store i32 %408, i32* %413, align 4
  %414 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %415 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %414, i32 0, i32 0
  %416 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %417 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 9
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @kvm_set_rflags(%struct.TYPE_27__* %415, i32 %419)
  %421 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %422 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %421, i32 0, i32 0
  %423 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %424 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 8
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @svm_set_efer(%struct.TYPE_27__* %422, i32 %426)
  %428 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %429 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %428, i32 0, i32 0
  %430 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %431 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @X86_CR0_PE, align 4
  %435 = or i32 %433, %434
  %436 = call i32 @svm_set_cr0(%struct.TYPE_27__* %429, i32 %435)
  %437 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %438 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %437, i32 0, i32 0
  %439 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %440 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @svm_set_cr4(%struct.TYPE_27__* %438, i32 %442)
  %444 = load i64, i64* @npt_enabled, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %464

446:                                              ; preds = %337
  %447 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %448 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 6
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %452 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %451, i32 0, i32 1
  %453 = load %struct.vmcb*, %struct.vmcb** %452, align 8
  %454 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 6
  store i32 %450, i32* %455, align 4
  %456 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %457 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %461 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %462, i32 0, i32 2
  store i32 %459, i32* %463, align 8
  br label %472

464:                                              ; preds = %337
  %465 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %466 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %465, i32 0, i32 0
  %467 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %468 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 6
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @kvm_set_cr3(%struct.TYPE_27__* %466, i32 %470)
  br label %472

472:                                              ; preds = %464, %446
  %473 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %474 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %473, i32 0, i32 0
  %475 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %476 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @kvm_rax_write(%struct.TYPE_27__* %474, i32 %478)
  %480 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %481 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %480, i32 0, i32 0
  %482 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %483 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @kvm_rsp_write(%struct.TYPE_27__* %481, i32 %485)
  %487 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %488 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %487, i32 0, i32 0
  %489 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %490 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @kvm_rip_write(%struct.TYPE_27__* %488, i32 %492)
  %494 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %495 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %494, i32 0, i32 1
  %496 = load %struct.vmcb*, %struct.vmcb** %495, align 8
  %497 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %497, i32 0, i32 2
  store i64 0, i64* %498, align 8
  %499 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %500 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %499, i32 0, i32 1
  %501 = load %struct.vmcb*, %struct.vmcb** %500, align 8
  %502 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 1
  store i64 0, i64* %503, align 8
  %504 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %505 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %504, i32 0, i32 1
  %506 = load %struct.vmcb*, %struct.vmcb** %505, align 8
  %507 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %507, i32 0, i32 0
  store i32 0, i32* %508, align 8
  %509 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %510 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %509, i32 0, i32 1
  %511 = load %struct.vmcb*, %struct.vmcb** %510, align 8
  %512 = call i32 @mark_all_dirty(%struct.vmcb* %511)
  %513 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %514 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %513, i32 0, i32 0
  %515 = call i32 @kvm_vcpu_unmap(%struct.TYPE_27__* %514, %struct.kvm_host_map* %8, i32 1)
  %516 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %517 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %516, i32 0, i32 0
  %518 = call i32 @nested_svm_uninit_mmu_context(%struct.TYPE_27__* %517)
  %519 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %520 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %519, i32 0, i32 0
  %521 = call i32 @kvm_mmu_reset_context(%struct.TYPE_27__* %520)
  %522 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %523 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %522, i32 0, i32 0
  %524 = call i32 @kvm_mmu_load(%struct.TYPE_27__* %523)
  %525 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %526 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %527, i32 0, i32 1
  store i32 0, i32* %528, align 4
  %529 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %530 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %529, i32 0, i32 0
  %531 = call i32 @kvm_clear_exception_queue(%struct.TYPE_27__* %530)
  %532 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %533 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %532, i32 0, i32 0
  %534 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_27__* %533)
  store i32 0, i32* %2, align 4
  br label %535

535:                                              ; preds = %472, %58
  %536 = load i32, i32* %2, align 4
  ret i32 %536
}

declare dso_local i32 @trace_kvm_nested_vmexit_inject(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @kvm_vcpu_map(%struct.TYPE_27__*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @leave_guest_mode(%struct.TYPE_27__*) #1

declare dso_local i32 @disable_gif(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_read_cr0(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_read_cr3(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_get_rflags(%struct.TYPE_27__*) #1

declare dso_local i32 @copy_vmcb_control_area(%struct.vmcb*, %struct.vmcb*) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_set_rflags(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @svm_set_efer(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @svm_set_cr0(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @svm_set_cr4(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @kvm_rax_write(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @kvm_rsp_write(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @mark_all_dirty(%struct.vmcb*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.TYPE_27__*, %struct.kvm_host_map*, i32) #1

declare dso_local i32 @nested_svm_uninit_mmu_context(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.TYPE_27__*) #1

declare dso_local i32 @kvm_mmu_load(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
