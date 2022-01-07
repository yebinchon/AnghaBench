; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvmppc_mpic_connect_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_kvmppc_mpic_connect_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32*, %struct.openpic* }
%struct.openpic = type { i64, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, %struct.openpic* }

@kvm_mpic_ops = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAX_CPU = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KVMPPC_IRQ_MPIC = common dso_local global i64 0, align 8
@GCR_MODE_PROXY = common dso_local global i64 0, align 8
@KVMPPC_EPR_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mpic_connect_vcpu(%struct.kvm_device* %0, %struct.kvm_vcpu* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_device*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.openpic*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %10, i32 0, i32 1
  %12 = load %struct.openpic*, %struct.openpic** %11, align 8
  store %struct.openpic* %12, %struct.openpic** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @kvm_mpic_ops
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.openpic*, %struct.openpic** %8, align 8
  %22 = getelementptr inbounds %struct.openpic, %struct.openpic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %111

31:                                               ; preds = %20
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @MAX_CPU, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %111

41:                                               ; preds = %34
  %42 = load %struct.openpic*, %struct.openpic** %8, align 8
  %43 = getelementptr inbounds %struct.openpic, %struct.openpic* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.openpic*, %struct.openpic** %8, align 8
  %46 = getelementptr inbounds %struct.openpic, %struct.openpic* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %50, align 8
  %52 = icmp ne %struct.kvm_vcpu* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EEXIST, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %106

56:                                               ; preds = %41
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %106

65:                                               ; preds = %56
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %67 = load %struct.openpic*, %struct.openpic** %8, align 8
  %68 = getelementptr inbounds %struct.openpic, %struct.openpic* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.kvm_vcpu* %66, %struct.kvm_vcpu** %72, align 8
  %73 = load %struct.openpic*, %struct.openpic** %8, align 8
  %74 = getelementptr inbounds %struct.openpic, %struct.openpic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  %78 = call i32 @max(i32 %75, i64 %77)
  %79 = load %struct.openpic*, %struct.openpic** %8, align 8
  %80 = getelementptr inbounds %struct.openpic, %struct.openpic* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.openpic*, %struct.openpic** %8, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store %struct.openpic* %81, %struct.openpic** %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* @KVMPPC_IRQ_MPIC, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i64 %89, i64* %92, align 8
  %93 = load %struct.openpic*, %struct.openpic** %8, align 8
  %94 = getelementptr inbounds %struct.openpic, %struct.openpic* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @GCR_MODE_PROXY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %65
  %99 = load i32, i32* @KVMPPC_EPR_KERNEL, align 4
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %65
  br label %106

106:                                              ; preds = %105, %62, %53
  %107 = load %struct.openpic*, %struct.openpic** %8, align 8
  %108 = getelementptr inbounds %struct.openpic, %struct.openpic* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %106, %38, %28, %17
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
