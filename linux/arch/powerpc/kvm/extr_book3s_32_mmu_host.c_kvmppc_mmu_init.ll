; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i32*, i64, i32* }

@SID_CONTEXTS = common dso_local global i32 0, align 4
@htabmask = common dso_local global i32 0, align 4
@htab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %9)
  store %struct.kvmppc_vcpu_book3s* %10, %struct.kvmppc_vcpu_book3s** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SID_CONTEXTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = call i32 (...) @__init_new_context()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %65

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %44, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @CTX_TO_VSID(i32 %32, i32 %33)
  %35 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %36 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 16
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %11
  %52 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %53 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = call i32 asm "mfsdr1 $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 511
  %57 = shl i32 %56, 16
  %58 = or i32 %57, 65472
  store i32 %58, i32* @htabmask, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, -65536
  %61 = call i64 @__va(i32 %60)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @htab, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 @kvmppc_mmu_hpte_init(%struct.kvm_vcpu* %63)
  store i32 0, i32* %2, align 4
  br label %94

65:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %4, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %90

80:                                               ; preds = %70
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %81)
  %83 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__destroy_context(i32 %88)
  br label %90

90:                                               ; preds = %80, %79
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %66

93:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %51
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @__init_new_context(...) #1

declare dso_local i32 @CTX_TO_VSID(i32, i32) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @kvmppc_mmu_hpte_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @__destroy_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 945}
