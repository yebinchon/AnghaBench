; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmrun.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.vmcb*, %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.vmcb = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.vmcb* }
%struct.kvm_host_map = type { %struct.vmcb* }

@EINVAL = common dso_local global i32 0, align 4
@SVM_EXIT_ERR = common dso_local global i8* null, align 8
@npt_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_vmrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_vmrun(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb*, align 8
  %6 = alloca %struct.vmcb*, align 8
  %7 = alloca %struct.vmcb*, align 8
  %8 = alloca %struct.kvm_host_map, align 8
  %9 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.vmcb*, %struct.vmcb** %12, align 8
  store %struct.vmcb* %13, %struct.vmcb** %6, align 8
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 0
  %16 = load %struct.vmcb*, %struct.vmcb** %15, align 8
  store %struct.vmcb* %16, %struct.vmcb** %7, align 8
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %17, i32 0, i32 0
  %19 = load %struct.vmcb*, %struct.vmcb** %18, align 8
  %20 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 1
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @gpa_to_gfn(i32 %25)
  %27 = call i32 @kvm_vcpu_map(%struct.TYPE_19__* %24, i32 %26, %struct.kvm_host_map* %8)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %34 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %33, i32 0, i32 1
  %35 = call i32 @kvm_inject_gp(%struct.TYPE_19__* %34, i32 0)
  store i32 1, i32* %2, align 4
  br label %265

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 1
  %42 = call i32 @kvm_skip_emulated_instruction(%struct.TYPE_19__* %41)
  store i32 %42, i32* %2, align 4
  br label %265

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %46 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %45, i32 0, i32 1
  %47 = call i32 @kvm_skip_emulated_instruction(%struct.TYPE_19__* %46)
  store i32 %47, i32* %4, align 4
  %48 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %8, i32 0, i32 0
  %49 = load %struct.vmcb*, %struct.vmcb** %48, align 8
  store %struct.vmcb* %49, %struct.vmcb** %5, align 8
  %50 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %51 = call i32 @nested_vmcb_checks(%struct.vmcb* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** @SVM_EXIT_ERR, align 8
  %55 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %56 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  store i8* %54, i8** %57, align 8
  %58 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %59 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %62 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %65 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %68 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %67, i32 0, i32 1
  %69 = call i32 @kvm_vcpu_unmap(%struct.TYPE_19__* %68, %struct.kvm_host_map* %8, i32 1)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %265

71:                                               ; preds = %44
  %72 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %73 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %72, i32 0, i32 0
  %74 = load %struct.vmcb*, %struct.vmcb** %73, align 8
  %75 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %80 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %84 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %88 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %92 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @trace_kvm_nested_vmrun(i32 %77, i32 %78, i32 %82, i32 %86, i32 %90, i32 %94)
  %96 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %97 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 65535
  %101 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %102 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 16
  %106 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %107 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %111 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @trace_kvm_nested_intercepts(i32 %100, i32 %105, i32 %109, i32 %113)
  %115 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %116 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %115, i32 0, i32 1
  %117 = call i32 @kvm_clear_exception_queue(%struct.TYPE_19__* %116)
  %118 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %119 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %118, i32 0, i32 1
  %120 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_19__* %119)
  %121 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %122 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %126 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 13
  store i32 %124, i32* %127, align 4
  %128 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %129 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %133 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 12
  store i32 %131, i32* %134, align 8
  %135 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %136 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %140 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 11
  store i32 %138, i32* %141, align 4
  %142 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %143 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %147 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 10
  store i32 %145, i32* %148, align 8
  %149 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %150 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %154 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 9
  store i32 %152, i32* %155, align 4
  %156 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %157 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %161 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 8
  store i32 %159, i32* %162, align 8
  %163 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %164 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %169 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 7
  store i32 %167, i32* %170, align 4
  %171 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %172 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %171, i32 0, i32 1
  %173 = call i32 @kvm_read_cr0(%struct.TYPE_19__* %172)
  %174 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %175 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 6
  store i32 %173, i32* %176, align 8
  %177 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %178 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %183 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  store i32 %181, i32* %184, align 4
  %185 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %186 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %185, i32 0, i32 1
  %187 = call i32 @kvm_get_rflags(%struct.TYPE_19__* %186)
  %188 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %189 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 4
  store i32 %187, i32* %190, align 8
  %191 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %192 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %191, i32 0, i32 1
  %193 = call i32 @kvm_rip_read(%struct.TYPE_19__* %192)
  %194 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %195 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 4
  %197 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %198 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %202 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 8
  %204 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %205 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %209 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 4
  %211 = load i64, i64* @npt_enabled, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %71
  %214 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %215 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %219 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 8
  br label %228

221:                                              ; preds = %71
  %222 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %223 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %222, i32 0, i32 1
  %224 = call i32 @kvm_read_cr3(%struct.TYPE_19__* %223)
  %225 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %226 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  br label %228

228:                                              ; preds = %221, %213
  %229 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %230 = load %struct.vmcb*, %struct.vmcb** %7, align 8
  %231 = call i32 @copy_vmcb_control_area(%struct.vmcb* %229, %struct.vmcb* %230)
  %232 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %233 = load i32, i32* %9, align 4
  %234 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %235 = call i32 @enter_svm_guest_mode(%struct.vcpu_svm* %232, i32 %233, %struct.vmcb* %234, %struct.kvm_host_map* %8)
  %236 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %237 = call i32 @nested_svm_vmrun_msrpm(%struct.vcpu_svm* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %263, label %239

239:                                              ; preds = %228
  %240 = load i8*, i8** @SVM_EXIT_ERR, align 8
  %241 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %242 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %241, i32 0, i32 0
  %243 = load %struct.vmcb*, %struct.vmcb** %242, align 8
  %244 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 4
  store i8* %240, i8** %245, align 8
  %246 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %247 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %246, i32 0, i32 0
  %248 = load %struct.vmcb*, %struct.vmcb** %247, align 8
  %249 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 3
  store i64 0, i64* %250, align 8
  %251 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %252 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %251, i32 0, i32 0
  %253 = load %struct.vmcb*, %struct.vmcb** %252, align 8
  %254 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 2
  store i64 0, i64* %255, align 8
  %256 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %257 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %256, i32 0, i32 0
  %258 = load %struct.vmcb*, %struct.vmcb** %257, align 8
  %259 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 1
  store i64 0, i64* %260, align 8
  %261 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %262 = call i32 @nested_svm_vmexit(%struct.vcpu_svm* %261)
  br label %263

263:                                              ; preds = %239, %228
  %264 = load i32, i32* %4, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %263, %53, %39, %32
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @kvm_vcpu_map(%struct.TYPE_19__*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.TYPE_19__*) #1

declare dso_local i32 @nested_vmcb_checks(%struct.vmcb*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.TYPE_19__*, %struct.kvm_host_map*, i32) #1

declare dso_local i32 @trace_kvm_nested_vmrun(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_kvm_nested_intercepts(i32, i32, i32, i32) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_read_cr0(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_get_rflags(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_rip_read(%struct.TYPE_19__*) #1

declare dso_local i32 @kvm_read_cr3(%struct.TYPE_19__*) #1

declare dso_local i32 @copy_vmcb_control_area(%struct.vmcb*, %struct.vmcb*) #1

declare dso_local i32 @enter_svm_guest_mode(%struct.vcpu_svm*, i32, %struct.vmcb*, %struct.kvm_host_map*) #1

declare dso_local i32 @nested_svm_vmrun_msrpm(%struct.vcpu_svm*) #1

declare dso_local i32 @nested_svm_vmexit(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
