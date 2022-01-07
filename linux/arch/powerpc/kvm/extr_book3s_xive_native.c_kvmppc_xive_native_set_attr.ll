; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_set_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.kvm_device_attr = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*)* @kvmppc_xive_native_set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_set_attr(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca %struct.kvmppc_xive*, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %7 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %7, i32 0, i32 0
  %9 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  store %struct.kvmppc_xive* %9, %struct.kvmppc_xive** %6, align 8
  %10 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 133, label %13
    i32 131, label %24
    i32 130, label %33
    i32 132, label %42
    i32 129, label %51
  ]

13:                                               ; preds = %2
  %14 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %23 [
    i32 128, label %17
    i32 134, label %20
  ]

17:                                               ; preds = %13
  %18 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %19 = call i32 @kvmppc_xive_reset(%struct.kvmppc_xive* %18)
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %13
  %21 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %22 = call i32 @kvmppc_xive_native_eq_sync(%struct.kvmppc_xive* %21)
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %13
  br label %60

24:                                               ; preds = %2
  %25 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %26 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kvmppc_xive_native_set_source(%struct.kvmppc_xive* %25, i32 %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %2
  %34 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %35 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvmppc_xive_native_set_source_config(%struct.kvmppc_xive* %34, i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %44 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kvmppc_xive_native_set_queue_config(%struct.kvmppc_xive* %43, i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %2
  %52 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %53 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kvmppc_xive_native_sync_source(%struct.kvmppc_xive* %52, i32 %55, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %2, %23
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %51, %42, %33, %24, %20, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @kvmppc_xive_reset(%struct.kvmppc_xive*) #1

declare dso_local i32 @kvmppc_xive_native_eq_sync(%struct.kvmppc_xive*) #1

declare dso_local i32 @kvmppc_xive_native_set_source(%struct.kvmppc_xive*, i32, i32) #1

declare dso_local i32 @kvmppc_xive_native_set_source_config(%struct.kvmppc_xive*, i32, i32) #1

declare dso_local i32 @kvmppc_xive_native_set_queue_config(%struct.kvmppc_xive*, i32, i32) #1

declare dso_local i32 @kvmppc_xive_native_sync_source(%struct.kvmppc_xive*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
