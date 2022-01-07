; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.kvmppc_xive*, %struct.kvm* }
%struct.kvmppc_xive = type { i64, i64, i32, i64, i32, %struct.kvm*, %struct.kvm_device* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }

@.str = private unnamed_addr constant [29 x i8] c"Creating xive for partition\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"VP_Base=%x\0A\00", align 1
@XIVE_INVALID_VP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, i32)* @kvmppc_xive_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_create(%struct.kvm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xive*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %9, i32 0, i32 1
  %11 = load %struct.kvm*, %struct.kvm** %10, align 8
  store %struct.kvm* %11, %struct.kvm** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.kvm*, %struct.kvm** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.kvmppc_xive* @kvmppc_xive_get_device(%struct.kvm* %13, i32 %14)
  store %struct.kvmppc_xive* %15, %struct.kvmppc_xive** %6, align 8
  %16 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %17 = icmp ne %struct.kvmppc_xive* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %23 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %23, i32 0, i32 0
  store %struct.kvmppc_xive* %22, %struct.kvmppc_xive** %24, align 8
  %25 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %26 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %27 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %26, i32 0, i32 6
  store %struct.kvm_device* %25, %struct.kvm_device** %27, align 8
  %28 = load %struct.kvm*, %struct.kvm** %7, align 8
  %29 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %30 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %29, i32 0, i32 5
  store %struct.kvm* %28, %struct.kvm** %30, align 8
  %31 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.kvm*, %struct.kvm** %7, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %36, align 8
  %38 = icmp ne %struct.kvmppc_xive* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %21
  %43 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %44 = load %struct.kvm*, %struct.kvm** %7, align 8
  %45 = getelementptr inbounds %struct.kvm, %struct.kvm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.kvmppc_xive* %43, %struct.kvmppc_xive** %46, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = call i64 (...) @xive_native_default_eq_shift()
  %49 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %52 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %58 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  br label %67

59:                                               ; preds = %47
  %60 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %61 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PAGE_SHIFT, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %66 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i32, i32* @KVM_MAX_VCPUS, align 4
  %69 = call i64 @xive_native_alloc_vp_block(i32 %68)
  %70 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %71 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %73 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %77 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XIVE_INVALID_VP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %67
  %85 = call i32 (...) @xive_native_has_single_escalation()
  %86 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %87 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %90, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local %struct.kvmppc_xive* @kvmppc_xive_get_device(%struct.kvm*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @xive_native_default_eq_shift(...) #1

declare dso_local i64 @xive_native_alloc_vp_block(i32) #1

declare dso_local i32 @xive_native_has_single_escalation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
