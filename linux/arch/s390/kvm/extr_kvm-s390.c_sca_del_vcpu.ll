; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_del_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_del_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.esca_block*, i64 }
%struct.esca_block = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bsca_block = type { %struct.TYPE_4__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @sca_del_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca_del_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.esca_block*, align 8
  %4 = alloca %struct.bsca_block*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = call i32 (...) @kvm_s390_use_sca_entries()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %74

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @read_lock(i32* %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.esca_block*, %struct.esca_block** %27, align 8
  store %struct.esca_block* %28, %struct.esca_block** %3, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.esca_block*, %struct.esca_block** %3, align 8
  %33 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i64*
  %36 = call i32 @clear_bit_inv(i64 %31, i64* %35)
  %37 = load %struct.esca_block*, %struct.esca_block** %3, align 8
  %38 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %67

45:                                               ; preds = %8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.esca_block*, %struct.esca_block** %50, align 8
  %52 = bitcast %struct.esca_block* %51 to %struct.bsca_block*
  store %struct.bsca_block* %52, %struct.bsca_block** %4, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bsca_block*, %struct.bsca_block** %4, align 8
  %57 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %56, i32 0, i32 1
  %58 = call i32 @clear_bit_inv(i64 %55, i64* %57)
  %59 = load %struct.bsca_block*, %struct.bsca_block** %4, align 8
  %60 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %45, %22
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @read_unlock(i32* %72)
  br label %74

74:                                               ; preds = %67, %7
  ret void
}

declare dso_local i32 @kvm_s390_use_sca_entries(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @clear_bit_inv(i64, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
