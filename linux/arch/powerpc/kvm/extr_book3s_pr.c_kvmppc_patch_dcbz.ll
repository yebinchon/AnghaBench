; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_patch_dcbz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_patch_dcbz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_pte = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@HW_PAGE_SIZE = common dso_local global i32 0, align 4
@INS_DCBZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvmppc_pte*)* @kvmppc_patch_dcbz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_patch_dcbz(%struct.kvm_vcpu* %0, %struct.kvmppc_pte* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_pte*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvmppc_pte* %1, %struct.kvmppc_pte** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %4, align 8
  %13 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = call %struct.page* @gfn_to_page(i32 %11, i32 %16)
  store %struct.page* %17, %struct.page** %5, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i64 @is_error_page(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %4, align 8
  %24 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, -4096
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @get_page(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32* @kmap_atomic(%struct.page* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %66, %22
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HW_PAGE_SIZE, align 4
  %44 = sdiv i32 %43, 4
  %45 = add nsw i32 %42, %44
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = and i32 %53, -16775169
  %55 = load i32, i32* @INS_DCBZ, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = call i32 @cpu_to_be32(i32 -9)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %40

69:                                               ; preds = %40
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @kunmap_atomic(i32* %70)
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @put_page(%struct.page* %72)
  br label %74

74:                                               ; preds = %69, %21
  ret void
}

declare dso_local %struct.page* @gfn_to_page(i32, i32) #1

declare dso_local i64 @is_error_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
