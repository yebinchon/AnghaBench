; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i32 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvmppc_xive*, %struct.kvmppc_xive* }

@KVM_DEV_TYPE_XIVE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvmppc_xive* @kvmppc_xive_get_device(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvmppc_xive**, align 8
  %6 = alloca %struct.kvmppc_xive*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @KVM_DEV_TYPE_XIVE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi %struct.kvmppc_xive** [ %14, %10 ], [ %19, %15 ]
  store %struct.kvmppc_xive** %21, %struct.kvmppc_xive*** %5, align 8
  %22 = load %struct.kvmppc_xive**, %struct.kvmppc_xive*** %5, align 8
  %23 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %22, align 8
  store %struct.kvmppc_xive* %23, %struct.kvmppc_xive** %6, align 8
  %24 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %25 = icmp ne %struct.kvmppc_xive* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.kvmppc_xive* @kzalloc(i32 4, i32 %27)
  store %struct.kvmppc_xive* %28, %struct.kvmppc_xive** %6, align 8
  %29 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %30 = load %struct.kvmppc_xive**, %struct.kvmppc_xive*** %5, align 8
  store %struct.kvmppc_xive* %29, %struct.kvmppc_xive** %30, align 8
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %33 = call i32 @memset(%struct.kvmppc_xive* %32, i32 0, i32 4)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  ret %struct.kvmppc_xive* %35
}

declare dso_local %struct.kvmppc_xive* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.kvmppc_xive*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
