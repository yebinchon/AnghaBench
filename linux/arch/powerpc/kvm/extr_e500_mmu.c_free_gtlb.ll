; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_free_gtlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_free_gtlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32, i32*, i32*, i32**, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*)* @free_gtlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_gtlb(%struct.kvmppc_vcpu_e500* %0) #0 {
  %2 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %3 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %2, align 8
  %4 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %5 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %4, i32 0, i32 5
  %6 = call i32 @kvmppc_core_flush_tlb(i32* %5)
  %7 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %8 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree(i32* %9)
  %11 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %11, i32 0, i32 3
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %24 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %1
  %28 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %29 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i64 @round_down(i64 %31, i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @vfree(i8* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %59, %27
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %39 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %44 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_page_dirty_lock(i32 %49)
  %51 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %52 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @put_page(i32 %57)
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %64 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %66 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %70 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %76

71:                                               ; preds = %1
  %72 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %73 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %2, align 8
  %78 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  ret void
}

declare dso_local i32 @kvmppc_core_flush_tlb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @set_page_dirty_lock(i32) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
