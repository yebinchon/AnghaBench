; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_ipte_unlock_siif.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_ipte_unlock_siif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%union.ipte_control = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @ipte_unlock_siif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipte_unlock_siif(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %union.ipte_control, align 8
  %4 = alloca %union.ipte_control, align 8
  %5 = alloca %union.ipte_control*, align 8
  %6 = alloca %union.ipte_control, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %union.ipte_control* @kvm_s390_get_ipte_control(%struct.TYPE_4__* %15)
  store %union.ipte_control* %16, %union.ipte_control** %5, align 8
  br label %17

17:                                               ; preds = %36, %1
  %18 = load %union.ipte_control*, %union.ipte_control** %5, align 8
  %19 = getelementptr inbounds %union.ipte_control, %union.ipte_control* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @READ_ONCE(i64 %20)
  %22 = getelementptr inbounds %union.ipte_control, %union.ipte_control* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = bitcast %union.ipte_control* %3 to i8*
  %24 = bitcast %union.ipte_control* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = bitcast %union.ipte_control* %4 to i8*
  %26 = bitcast %union.ipte_control* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = bitcast %union.ipte_control* %4 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = bitcast %union.ipte_control* %4 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = bitcast %union.ipte_control* %4 to i64*
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %17
  br label %36

36:                                               ; preds = %35
  %37 = load %union.ipte_control*, %union.ipte_control** %5, align 8
  %38 = bitcast %union.ipte_control* %37 to i64*
  %39 = bitcast %union.ipte_control* %3 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = bitcast %union.ipte_control* %4 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @cmpxchg(i64* %38, i64 %40, i64 %42)
  %44 = bitcast %union.ipte_control* %3 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %17, label %47

47:                                               ; preds = %36
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = call i32 @read_unlock(i32* %52)
  %54 = bitcast %union.ipte_control* %4 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %47
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @wake_up(i32* %62)
  br label %64

64:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %union.ipte_control* @kvm_s390_get_ipte_control(%struct.TYPE_4__*) #1

declare dso_local i64 @READ_ONCE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
