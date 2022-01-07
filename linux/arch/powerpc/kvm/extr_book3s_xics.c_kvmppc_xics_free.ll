; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32, %struct.kvm_device**, i32, %struct.kvm*, %struct.kvm_device* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.kvmppc_xics = type { i32, %struct.kvmppc_xics**, i32, %struct.kvm*, %struct.kvmppc_xics* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_device*)* @kvmppc_xics_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_xics_free(%struct.kvm_device* %0) #0 {
  %2 = alloca %struct.kvm_device*, align 8
  %3 = alloca %struct.kvmppc_xics*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %2, align 8
  %6 = load %struct.kvm_device*, %struct.kvm_device** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %6, i32 0, i32 4
  %8 = load %struct.kvm_device*, %struct.kvm_device** %7, align 8
  %9 = bitcast %struct.kvm_device* %8 to %struct.kvmppc_xics*
  store %struct.kvmppc_xics* %9, %struct.kvmppc_xics** %3, align 8
  %10 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %11 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %10, i32 0, i32 3
  %12 = load %struct.kvm*, %struct.kvm** %11, align 8
  store %struct.kvm* %12, %struct.kvm** %5, align 8
  %13 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %14 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @debugfs_remove(i32 %15)
  %17 = load %struct.kvm*, %struct.kvm** %5, align 8
  %18 = icmp ne %struct.kvm* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.kvm*, %struct.kvm** %5, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %19, %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %27 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %32 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %31, i32 0, i32 1
  %33 = load %struct.kvmppc_xics**, %struct.kvmppc_xics*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kvmppc_xics*, %struct.kvmppc_xics** %33, i64 %35
  %37 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %36, align 8
  %38 = call i32 @kfree(%struct.kvmppc_xics* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %44 = call i32 @kfree(%struct.kvmppc_xics* %43)
  %45 = load %struct.kvm_device*, %struct.kvm_device** %2, align 8
  %46 = bitcast %struct.kvm_device* %45 to %struct.kvmppc_xics*
  %47 = call i32 @kfree(%struct.kvmppc_xics* %46)
  ret void
}

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(%struct.kvmppc_xics*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
