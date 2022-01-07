; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.kvmppc_xive*, %struct.kvm* }
%struct.kvmppc_xive = type { i64, i32*, i32, i32, i32, %struct.kvm*, %struct.kvm_device* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }

@.str = private unnamed_addr constant [29 x i8] c"Creating xive native device\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"VP_Base=%x\0A\00", align 1
@XIVE_INVALID_VP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@kvmppc_xive_native_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, i32)* @kvmppc_xive_native_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_create(%struct.kvm_device* %0, i32 %1) #0 {
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
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %15, align 8
  %17 = icmp ne %struct.kvmppc_xive* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.kvm*, %struct.kvm** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.kvmppc_xive* @kvmppc_xive_get_device(%struct.kvm* %22, i32 %23)
  store %struct.kvmppc_xive* %24, %struct.kvmppc_xive** %6, align 8
  %25 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %26 = icmp ne %struct.kvmppc_xive* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %21
  %31 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %32 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %32, i32 0, i32 0
  store %struct.kvmppc_xive* %31, %struct.kvmppc_xive** %33, align 8
  %34 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %35 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %36 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %35, i32 0, i32 6
  store %struct.kvm_device* %34, %struct.kvm_device** %36, align 8
  %37 = load %struct.kvm*, %struct.kvm** %7, align 8
  %38 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %39 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %38, i32 0, i32 5
  store %struct.kvm* %37, %struct.kvm** %39, align 8
  %40 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %41 = load %struct.kvm*, %struct.kvm** %7, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.kvmppc_xive* %40, %struct.kvmppc_xive** %43, align 8
  %44 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %45 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %44, i32 0, i32 4
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %48 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %47, i32 0, i32 3
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* @KVM_MAX_VCPUS, align 4
  %51 = call i64 @xive_native_alloc_vp_block(i32 %50)
  %52 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %53 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %55 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %59 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XIVE_INVALID_VP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %30
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %30
  %67 = call i32 (...) @xive_native_has_single_escalation()
  %68 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %69 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %71 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %70, i32 0, i32 1
  store i32* @kvmppc_xive_native_ops, i32** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %74, %27, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local %struct.kvmppc_xive* @kvmppc_xive_get_device(%struct.kvm*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @xive_native_alloc_vp_block(i32) #1

declare dso_local i32 @xive_native_has_single_escalation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
