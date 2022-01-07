; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_mmu_topup_memory_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_mmu_topup_memory_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_memory_cache = type { i32, i8** }

@KVM_NR_MEM_OBJS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_memory_cache*, i32, i32)* @mmu_topup_memory_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_topup_memory_cache(%struct.kvm_mmu_memory_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.kvm_mmu_memory_cache* %0, %struct.kvm_mmu_memory_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @KVM_NR_MEM_OBJS, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %36, %20
  %22 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @__get_free_page(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %40, i64 %45
  store i8* %37, i8** %46, align 8
  br label %21

47:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %33, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @__get_free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
