; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_free_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_free_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_hpt_info = type { i32, i64, i64, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_free_hpt(%struct.kvm_hpt_info* %0) #0 {
  %2 = alloca %struct.kvm_hpt_info*, align 8
  store %struct.kvm_hpt_info* %0, %struct.kvm_hpt_info** %2, align 8
  %3 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @vfree(i32* %5)
  %7 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %7, i32 0, i32 3
  store i32* null, i32** %8, align 8
  %9 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @virt_to_page(i64 %16)
  %18 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 1, %22
  %24 = call i32 @kvm_free_hpt_cma(i32 %17, i32 %23)
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %35 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @free_pages(i64 %33, i32 %38)
  br label %40

40:                                               ; preds = %30, %25
  br label %41

41:                                               ; preds = %40, %13
  %42 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %43 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %2, align 8
  %45 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  ret void
}

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kvm_free_hpt_cma(i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
