; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_get_one_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_get_one_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%union.kvmppc_one_reg = type { i32 }

@KVMPPC_INST_SW_BREAKPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_get_one_reg(%struct.kvm_vcpu* %0, i32 %1, %union.kvmppc_one_reg* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.kvmppc_one_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.kvmppc_one_reg, align 4
  %9 = alloca %union.kvmppc_one_reg, align 4
  %10 = alloca %union.kvmppc_one_reg, align 4
  %11 = alloca %union.kvmppc_one_reg, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.kvmppc_one_reg, align 4
  %14 = alloca %union.kvmppc_one_reg, align 4
  %15 = alloca %union.kvmppc_one_reg, align 4
  %16 = alloca %union.kvmppc_one_reg, align 4
  %17 = alloca %union.kvmppc_one_reg, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.kvmppc_one_reg* %2, %union.kvmppc_one_reg** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %118 [
    i32 134, label %19
    i32 133, label %31
    i32 139, label %43
    i32 138, label %55
    i32 135, label %67
    i32 130, label %77
    i32 129, label %88
    i32 137, label %99
    i32 128, label %107
  ]

19:                                               ; preds = %3
  %20 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_reg_val(i32 %21, i32 %26)
  %28 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %union.kvmppc_one_reg* %20 to i8*
  %30 = bitcast %union.kvmppc_one_reg* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %132

31:                                               ; preds = %3
  %32 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_reg_val(i32 %33, i32 %38)
  %40 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %union.kvmppc_one_reg* %32 to i8*
  %42 = bitcast %union.kvmppc_one_reg* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %132

43:                                               ; preds = %3
  %44 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_reg_val(i32 %45, i32 %50)
  %52 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = bitcast %union.kvmppc_one_reg* %44 to i8*
  %54 = bitcast %union.kvmppc_one_reg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  br label %132

55:                                               ; preds = %3
  %56 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @get_reg_val(i32 %57, i32 %62)
  %64 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %11, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %union.kvmppc_one_reg* %56 to i8*
  %66 = bitcast %union.kvmppc_one_reg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %132

67:                                               ; preds = %3
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = call i32 @kvmppc_get_epr(%struct.kvm_vcpu* %68)
  store i32 %69, i32* %12, align 4
  %70 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @get_reg_val(i32 %71, i32 %72)
  %74 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %13, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = bitcast %union.kvmppc_one_reg* %70 to i8*
  %76 = bitcast %union.kvmppc_one_reg* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  br label %132

77:                                               ; preds = %3
  %78 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @get_reg_val(i32 %79, i32 %83)
  %85 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %14, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %union.kvmppc_one_reg* %78 to i8*
  %87 = bitcast %union.kvmppc_one_reg* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %132

88:                                               ; preds = %3
  %89 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @get_reg_val(i32 %90, i32 %94)
  %96 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %15, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = bitcast %union.kvmppc_one_reg* %89 to i8*
  %98 = bitcast %union.kvmppc_one_reg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 4, i1 false)
  br label %132

99:                                               ; preds = %3
  %100 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @KVMPPC_INST_SW_BREAKPOINT, align 4
  %103 = call i32 @get_reg_val(i32 %101, i32 %102)
  %104 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %16, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = bitcast %union.kvmppc_one_reg* %100 to i8*
  %106 = bitcast %union.kvmppc_one_reg* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  br label %132

107:                                              ; preds = %3
  %108 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @get_reg_val(i32 %109, i32 %113)
  %115 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %17, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = bitcast %union.kvmppc_one_reg* %108 to i8*
  %117 = bitcast %union.kvmppc_one_reg* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  br label %132

118:                                              ; preds = %3
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = bitcast {}** %125 to i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)**
  %127 = load i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)*, i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)** %126, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %131 = call i32 %127(%struct.kvm_vcpu* %128, i32 %129, %union.kvmppc_one_reg* %130)
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %118, %107, %99, %88, %77, %67, %55, %43, %31, %19
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @get_reg_val(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kvmppc_get_epr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
