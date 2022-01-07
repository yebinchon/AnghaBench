; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_dyntrans.c_kvm_mips_trans_cache_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_dyntrans.c_kvm_mips_trans_cache_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.mips_instruction = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_trans_cache_index(i32 %0, i32* %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca %union.mips_instruction, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %union.mips_instruction, align 4
  %8 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %5, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %6, align 8
  %9 = bitcast %union.mips_instruction* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kvm_mips_trans_replace(%struct.kvm_vcpu* %10, i32* %11, i32 %13)
  ret i32 %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kvm_mips_trans_replace(%struct.kvm_vcpu*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
