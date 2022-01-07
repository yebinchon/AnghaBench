; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_slbmte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_slbmte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvmppc_slb* }
%struct.kvmppc_slb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [33 x i8] c"KVM MMU: slbmte(0x%llx, 0x%llx)\0A\00", align 1
@SLB_VSID_L = common dso_local global i32 0, align 4
@SLB_VSID_B_1T = common dso_local global i32 0, align 4
@SLB_VSID_B = common dso_local global i32 0, align 4
@SLB_ESID_V = common dso_local global i32 0, align 4
@SLB_VSID_KS = common dso_local global i32 0, align 4
@SLB_VSID_KP = common dso_local global i32 0, align 4
@SLB_VSID_N = common dso_local global i32 0, align 4
@SLB_VSID_C = common dso_local global i32 0, align 4
@MMU_PAGE_4K = common dso_local global i8* null, align 8
@BOOK3S_HFLAG_MULTI_PGSIZE = common dso_local global i32 0, align 4
@SLB_VSID_LP = common dso_local global i32 0, align 4
@MMU_PAGE_16M = common dso_local global i8* null, align 8
@MMU_PAGE_64K = common dso_local global i8* null, align 8
@ESID_MASK = common dso_local global i32 0, align 4
@SID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32)* @kvmppc_mmu_book3s_64_slbmte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_mmu_book3s_64_slbmte(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_slb*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @GET_ESID(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GET_ESID_1T(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 4095
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %162

27:                                               ; preds = %3
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %31, i64 %33
  store %struct.kvmppc_slb* %34, %struct.kvmppc_slb** %10, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SLB_VSID_L, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %42 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SLB_VSID_B_1T, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %50 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %52 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %27
  %56 = load i32, i32* %8, align 4
  br label %59

57:                                               ; preds = %27
  %58 = load i32, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %62 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SLB_VSID_B, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %68 = call i32 @kvmppc_slb_sid_shift(%struct.kvmppc_slb* %67)
  %69 = sub nsw i32 %68, 16
  %70 = ashr i32 %66, %69
  %71 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %72 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SLB_ESID_V, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %80 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SLB_VSID_KS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %88 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SLB_VSID_KP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %96 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SLB_VSID_N, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %104 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SLB_VSID_C, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %112 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load i8*, i8** @MMU_PAGE_4K, align 8
  %114 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %115 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  %116 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %117 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %59
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BOOK3S_HFLAG_MULTI_PGSIZE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @SLB_VSID_LP, align 4
  %131 = and i32 %129, %130
  switch i32 %131, label %140 [
    i32 129, label %132
    i32 128, label %136
  ]

132:                                              ; preds = %128
  %133 = load i8*, i8** @MMU_PAGE_16M, align 8
  %134 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %135 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %134, i32 0, i32 11
  store i8* %133, i8** %135, align 8
  br label %140

136:                                              ; preds = %128
  %137 = load i8*, i8** @MMU_PAGE_64K, align 8
  %138 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %139 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %128, %136, %132
  br label %145

141:                                              ; preds = %120
  %142 = load i8*, i8** @MMU_PAGE_16M, align 8
  %143 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %144 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %143, i32 0, i32 11
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %140
  br label %146

146:                                              ; preds = %145, %59
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @ESID_MASK, align 4
  %149 = load i32, i32* @SLB_ESID_V, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %153 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %152, i32 0, i32 9
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %10, align 8
  %156 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 8
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SID_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = call i32 @kvmppc_mmu_map_segment(%struct.kvm_vcpu* %157, i32 %160)
  br label %162

162:                                              ; preds = %146, %26
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @GET_ESID(i32) #1

declare dso_local i32 @GET_ESID_1T(i32) #1

declare dso_local i32 @kvmppc_slb_sid_shift(%struct.kvmppc_slb*) #1

declare dso_local i32 @kvmppc_mmu_map_segment(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
