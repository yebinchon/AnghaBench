; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_cppr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_cppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%union.kvmppc_icp_state = type { i64 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@XICS_IPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xics_rm_h_cppr(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.kvmppc_icp_state, align 8
  %7 = alloca %union.kvmppc_icp_state, align 8
  %8 = alloca %struct.kvmppc_xics*, align 8
  %9 = alloca %struct.kvmppc_icp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %16, align 8
  store %struct.kvmppc_xics* %17, %struct.kvmppc_xics** %8, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %20, align 8
  store %struct.kvmppc_icp* %21, %struct.kvmppc_icp** %9, align 8
  %22 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %8, align 8
  %23 = icmp ne %struct.kvmppc_xics* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %8, align 8
  %26 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %30, i32* %3, align 4
  br label %111

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %34 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %8, align 8
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @icp_rm_down_cppr(%struct.kvmppc_xics* %39, %struct.kvmppc_icp* %40, i64 %41)
  br label %107

43:                                               ; preds = %31
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %46 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @H_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %55 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @icp_rm_clr_vcpu_irq(i32 %56)
  br label %58

58:                                               ; preds = %81, %53
  %59 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %60 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @READ_ONCE(i64 %62)
  %64 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %11, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = bitcast %union.kvmppc_icp_state* %7 to i8*
  %66 = bitcast %union.kvmppc_icp_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = bitcast %union.kvmppc_icp_state* %6 to i8*
  %68 = bitcast %union.kvmppc_icp_state* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  store i64 0, i64* %10, align 8
  %69 = load i64, i64* %5, align 8
  %70 = bitcast %union.kvmppc_icp_state* %7 to i64*
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %5, align 8
  %72 = bitcast %union.kvmppc_icp_state* %7 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = icmp ule i64 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %58
  %76 = bitcast %union.kvmppc_icp_state* %7 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = bitcast %union.kvmppc_icp_state* %7 to i64*
  store i64 0, i64* %78, align 8
  %79 = bitcast %union.kvmppc_icp_state* %7 to i64*
  store i64 255, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %58
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %83 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @icp_rm_try_update(%struct.kvmppc_icp* %82, i64 %84, i64 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %58, label %90

90:                                               ; preds = %81
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @XICS_IPI, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %99 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %8, align 8
  %103 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @icp_rm_deliver_irq(%struct.kvmppc_xics* %102, %struct.kvmppc_icp* %103, i64 %104, i32 0)
  br label %106

106:                                              ; preds = %97, %93, %90
  br label %107

107:                                              ; preds = %106, %38
  %108 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %8, align 8
  %109 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %9, align 8
  %110 = call i32 @check_too_hard(%struct.kvmppc_xics* %108, %struct.kvmppc_icp* %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %50, %29
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @icp_rm_down_cppr(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64) #1

declare dso_local i32 @icp_rm_clr_vcpu_irq(i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_rm_try_update(%struct.kvmppc_icp*, i64, i64) #1

declare dso_local i32 @icp_rm_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64, i32) #1

declare dso_local i32 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
