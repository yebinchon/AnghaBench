; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_get_one_reg_e500_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_get_one_reg_e500_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%union.kvmppc_one_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_get_one_reg_e500_tlb(%struct.kvm_vcpu* %0, i32 %1, %union.kvmppc_one_reg* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.kvmppc_one_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %union.kvmppc_one_reg, align 4
  %10 = alloca %union.kvmppc_one_reg, align 4
  %11 = alloca %union.kvmppc_one_reg, align 4
  %12 = alloca %union.kvmppc_one_reg, align 4
  %13 = alloca %union.kvmppc_one_reg, align 4
  %14 = alloca %union.kvmppc_one_reg, align 4
  %15 = alloca %union.kvmppc_one_reg, align 4
  %16 = alloca %union.kvmppc_one_reg, align 4
  %17 = alloca %union.kvmppc_one_reg, align 4
  %18 = alloca %union.kvmppc_one_reg, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.kvmppc_one_reg* %2, %union.kvmppc_one_reg** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %154 [
    i32 142, label %20
    i32 141, label %33
    i32 140, label %46
    i32 137, label %59
    i32 139, label %72
    i32 138, label %85
    i32 136, label %98
    i32 143, label %109
    i32 135, label %120
    i32 133, label %120
    i32 131, label %120
    i32 129, label %120
    i32 134, label %137
    i32 132, label %137
    i32 130, label %137
    i32 128, label %137
  ]

20:                                               ; preds = %3
  %21 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_reg_val(i32 %22, i32 %28)
  %30 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %union.kvmppc_one_reg* %21 to i8*
  %32 = bitcast %union.kvmppc_one_reg* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  br label %157

33:                                               ; preds = %3
  %34 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @get_reg_val(i32 %35, i32 %41)
  %43 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %union.kvmppc_one_reg* %34 to i8*
  %45 = bitcast %union.kvmppc_one_reg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %157

46:                                               ; preds = %3
  %47 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_reg_val(i32 %48, i32 %54)
  %56 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %union.kvmppc_one_reg* %47 to i8*
  %58 = bitcast %union.kvmppc_one_reg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  br label %157

59:                                               ; preds = %3
  %60 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_reg_val(i32 %61, i32 %67)
  %69 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = bitcast %union.kvmppc_one_reg* %60 to i8*
  %71 = bitcast %union.kvmppc_one_reg* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %157

72:                                               ; preds = %3
  %73 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @get_reg_val(i32 %74, i32 %80)
  %82 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %13, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = bitcast %union.kvmppc_one_reg* %73 to i8*
  %84 = bitcast %union.kvmppc_one_reg* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  br label %157

85:                                               ; preds = %3
  %86 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @get_reg_val(i32 %87, i32 %93)
  %95 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %14, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = bitcast %union.kvmppc_one_reg* %86 to i8*
  %97 = bitcast %union.kvmppc_one_reg* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  br label %157

98:                                               ; preds = %3
  %99 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @get_reg_val(i32 %100, i32 %104)
  %106 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %15, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = bitcast %union.kvmppc_one_reg* %99 to i8*
  %108 = bitcast %union.kvmppc_one_reg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 4, i1 false)
  br label %157

109:                                              ; preds = %3
  %110 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @get_reg_val(i32 %111, i32 %115)
  %117 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %16, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = bitcast %union.kvmppc_one_reg* %110 to i8*
  %119 = bitcast %union.kvmppc_one_reg* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  br label %157

120:                                              ; preds = %3, %3, %3, %3
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 135
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %8, align 8
  %124 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @get_reg_val(i32 %125, i32 %132)
  %134 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %17, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = bitcast %union.kvmppc_one_reg* %124 to i8*
  %136 = bitcast %union.kvmppc_one_reg* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 4, i1 false)
  br label %157

137:                                              ; preds = %3, %3, %3, %3
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, 134
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %8, align 8
  %141 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @get_reg_val(i32 %142, i32 %149)
  %151 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %18, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = bitcast %union.kvmppc_one_reg* %141 to i8*
  %153 = bitcast %union.kvmppc_one_reg* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 4, i1 false)
  br label %157

154:                                              ; preds = %3
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %154, %137, %120, %109, %98, %85, %72, %59, %46, %33, %20
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @get_reg_val(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
