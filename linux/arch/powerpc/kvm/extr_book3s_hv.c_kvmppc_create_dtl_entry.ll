; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_create_dtl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_create_dtl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i64, %struct.dtl_entry*, %struct.TYPE_6__, i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.dtl_entry*, %struct.dtl_entry* }
%struct.dtl_entry = type { i32, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.lppaca* }
%struct.lppaca = type { i8* }
%struct.kvmppc_vcore = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvmppc_vcore*)* @kvmppc_create_dtl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_create_dtl_entry(%struct.kvm_vcpu* %0, %struct.kvmppc_vcore* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vcore*, align 8
  %5 = alloca %struct.dtl_entry*, align 8
  %6 = alloca %struct.lppaca*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvmppc_vcore* %1, %struct.kvmppc_vcore** %4, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load %struct.dtl_entry*, %struct.dtl_entry** %13, align 8
  store %struct.dtl_entry* %14, %struct.dtl_entry** %5, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.lppaca*, %struct.lppaca** %18, align 8
  store %struct.lppaca* %19, %struct.lppaca** %6, align 8
  %20 = call i64 (...) @mftb()
  store i64 %20, i64* %9, align 8
  %21 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @vcore_stolen_time(%struct.kvmppc_vcore* %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %24, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %54 = icmp ne %struct.dtl_entry* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load %struct.lppaca*, %struct.lppaca** %6, align 8
  %57 = icmp ne %struct.lppaca* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %2
  br label %133

59:                                               ; preds = %55
  %60 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %61 = call i32 @memset(%struct.dtl_entry* %60, i32 0, i32 48)
  %62 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %63 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %62, i32 0, i32 0
  store i32 7, i32* %63, align 8
  %64 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %65 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @cpu_to_be16(i64 %71)
  %73 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %74 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %77 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = call i8* @cpu_to_be64(i64 %79)
  %81 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %82 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @cpu_to_be32(i64 %83)
  %85 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %86 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = call i64 @kvmppc_get_pc(%struct.kvm_vcpu* %87)
  %89 = call i8* @cpu_to_be64(i64 %88)
  %90 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %91 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @cpu_to_be64(i64 %96)
  %98 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %99 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %101 = getelementptr inbounds %struct.dtl_entry, %struct.dtl_entry* %100, i32 1
  store %struct.dtl_entry* %101, %struct.dtl_entry** %5, align 8
  %102 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.dtl_entry*, %struct.dtl_entry** %106, align 8
  %108 = icmp eq %struct.dtl_entry* %102, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %59
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.dtl_entry*, %struct.dtl_entry** %113, align 8
  store %struct.dtl_entry* %114, %struct.dtl_entry** %5, align 8
  br label %115

115:                                              ; preds = %109, %59
  %116 = load %struct.dtl_entry*, %struct.dtl_entry** %5, align 8
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store %struct.dtl_entry* %116, %struct.dtl_entry** %119, align 8
  %120 = call i32 (...) @smp_wmb()
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = call i8* @cpu_to_be64(i64 %125)
  %127 = load %struct.lppaca*, %struct.lppaca** %6, align 8
  %128 = getelementptr inbounds %struct.lppaca, %struct.lppaca* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %115, %58
  ret void
}

declare dso_local i64 @mftb(...) #1

declare dso_local i64 @vcore_stolen_time(%struct.kvmppc_vcore*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.dtl_entry*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
