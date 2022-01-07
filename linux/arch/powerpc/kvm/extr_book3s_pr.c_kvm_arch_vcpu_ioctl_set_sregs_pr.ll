; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvm_arch_vcpu_ioctl_set_sregs_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvm_arch_vcpu_ioctl_set_sregs_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.kvm_vcpu.0*, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32)*, i32 (%struct.kvm_vcpu.2*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type opaque
%struct.kvm_vcpu.2 = type opaque
%struct.kvm_sregs = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.kvmppc_vcpu_book3s = type { i32*, i32*, i32 }

@BOOK3S_HFLAG_SLB = common dso_local global i32 0, align 4
@SLB_ESID_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @kvm_arch_vcpu_ioctl_set_sregs_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_arch_vcpu_ioctl_set_sregs_pr(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %7)
  store %struct.kvmppc_vcpu_book3s* %8, %struct.kvmppc_vcpu_book3s** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kvmppc_set_pvr_pr(%struct.kvm_vcpu* %9, i32 %12)
  %14 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32 (%struct.kvm_vcpu.0*, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, i32)** %28, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = bitcast %struct.kvm_vcpu* %30 to %struct.kvm_vcpu.0*
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %29(%struct.kvm_vcpu.0* %31, i32 %32, i32 %42)
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %21

47:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %126, %47
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %129

51:                                               ; preds = %48
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kvmppc_set_bat(%struct.kvm_vcpu* %52, i32* %58, i32 0, i32 %68)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 32
  %88 = call i32 @kvmppc_set_bat(%struct.kvm_vcpu* %70, i32* %76, i32 1, i32 %87)
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %91 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @kvmppc_set_bat(%struct.kvm_vcpu* %89, i32* %95, i32 0, i32 %105)
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %5, align 8
  %109 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %115 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 32
  %125 = call i32 @kvmppc_set_bat(%struct.kvm_vcpu* %107, i32* %113, i32 1, i32 %124)
  br label %126

126:                                              ; preds = %51
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %48

129:                                              ; preds = %48
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = call i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu* %130, i32 0, i32 0)
  ret i32 0
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_pvr_pr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_bat(%struct.kvm_vcpu*, i32*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
