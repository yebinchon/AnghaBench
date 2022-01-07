; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.kvmppc_xics*, %struct.kvm* }
%struct.kvmppc_xics = type { i32, i32, %struct.kvm*, %struct.kvm_device* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xics* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_206 = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@DEBUG_REALMODE = common dso_local global i32 0, align 4
@ENABLE_REALMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, i32)* @kvmppc_xics_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xics_create(%struct.kvm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %9, i32 0, i32 1
  %11 = load %struct.kvm*, %struct.kvm** %10, align 8
  store %struct.kvm* %11, %struct.kvm** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kvmppc_xics* @kzalloc(i32 24, i32 %12)
  store %struct.kvmppc_xics* %13, %struct.kvmppc_xics** %6, align 8
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %15 = icmp ne %struct.kvmppc_xics* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %21 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %21, i32 0, i32 0
  store %struct.kvmppc_xics* %20, %struct.kvmppc_xics** %22, align 8
  %23 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %24 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %25 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %24, i32 0, i32 3
  store %struct.kvm_device* %23, %struct.kvm_device** %25, align 8
  %26 = load %struct.kvm*, %struct.kvm** %7, align 8
  %27 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %28 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %27, i32 0, i32 2
  store %struct.kvm* %26, %struct.kvm** %28, align 8
  %29 = load %struct.kvm*, %struct.kvm** %7, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %31, align 8
  %33 = icmp ne %struct.kvmppc_xics* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %19
  %38 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %39 = load %struct.kvm*, %struct.kvm** %7, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.kvmppc_xics* %38, %struct.kvmppc_xics** %41, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %47 = call i32 @kfree(%struct.kvmppc_xics* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.kvmppc_xics* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.kvmppc_xics*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
