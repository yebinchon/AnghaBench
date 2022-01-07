; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_find_sid_vsid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_find_sid_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_sid_map = type { i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.TYPE_2__ = type { %struct.kvmppc_sid_map* }

@MSR_PR = common dso_local global i32 0, align 4
@VSID_PR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SR: Searching 0x%llx -> 0x%llx\0A\00", align 1
@SID_MAP_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"SR: Searching 0x%llx -> not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_sid_map* (%struct.kvm_vcpu*, i32)* @find_sid_vsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_sid_map*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_sid_map*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %8)
  %10 = load i32, i32* @MSR_PR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @VSID_PR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @kvmppc_sid_hash(%struct.kvm_vcpu* %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = call %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %24, i64 %25
  store %struct.kvmppc_sid_map* %26, %struct.kvmppc_sid_map** %6, align 8
  %27 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %28 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %35 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @dprintk_sr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  store %struct.kvmppc_sid_map* %38, %struct.kvmppc_sid_map** %3, align 8
  br label %63

39:                                               ; preds = %17
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %42, align 8
  %44 = load i64, i64* @SID_MAP_MASK, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  %47 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %43, i64 %46
  store %struct.kvmppc_sid_map* %47, %struct.kvmppc_sid_map** %6, align 8
  %48 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %49 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %56 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @dprintk_sr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  store %struct.kvmppc_sid_map* %59, %struct.kvmppc_sid_map** %3, align 8
  br label %63

60:                                               ; preds = %39
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i8*, i32, ...) @dprintk_sr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store %struct.kvmppc_sid_map* null, %struct.kvmppc_sid_map** %3, align 8
  br label %63

63:                                               ; preds = %60, %53, %32
  %64 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %3, align 8
  ret %struct.kvmppc_sid_map* %64
}

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_sid_hash(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @dprintk_sr(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
