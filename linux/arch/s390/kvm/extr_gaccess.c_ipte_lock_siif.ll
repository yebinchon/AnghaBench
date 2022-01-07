; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_ipte_lock_siif.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_ipte_lock_siif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.ipte_control = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @ipte_lock_siif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipte_lock_siif(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %union.ipte_control, align 8
  %4 = alloca %union.ipte_control, align 8
  %5 = alloca %union.ipte_control*, align 8
  %6 = alloca %union.ipte_control, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %union.ipte_control* @kvm_s390_get_ipte_control(%struct.TYPE_4__* %16)
  store %union.ipte_control* %17, %union.ipte_control** %5, align 8
  br label %18

18:                                               ; preds = %44, %7
  %19 = load %union.ipte_control*, %union.ipte_control** %5, align 8
  %20 = getelementptr inbounds %union.ipte_control, %union.ipte_control* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @READ_ONCE(i64 %21)
  %23 = getelementptr inbounds %union.ipte_control, %union.ipte_control* %6, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = bitcast %union.ipte_control* %3 to i8*
  %25 = bitcast %union.ipte_control* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = bitcast %union.ipte_control* %3 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @read_unlock(i32* %34)
  %36 = call i32 (...) @cond_resched()
  br label %7

37:                                               ; preds = %18
  %38 = bitcast %union.ipte_control* %4 to i8*
  %39 = bitcast %union.ipte_control* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = bitcast %union.ipte_control* %4 to i32*
  store i32 1, i32* %40, align 8
  %41 = bitcast %union.ipte_control* %4 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load %union.ipte_control*, %union.ipte_control** %5, align 8
  %46 = bitcast %union.ipte_control* %45 to i64*
  %47 = bitcast %union.ipte_control* %3 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %union.ipte_control* %4 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @cmpxchg(i64* %46, i64 %48, i64 %50)
  %52 = bitcast %union.ipte_control* %3 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %18, label %55

55:                                               ; preds = %44
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @read_unlock(i32* %60)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %union.ipte_control* @kvm_s390_get_ipte_control(%struct.TYPE_4__*) #1

declare dso_local i64 @READ_ONCE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
