; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_topup_memory_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_memory_cache = type { i32, i8** }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_mmu_memory_cache*, i32)* @mmu_topup_memory_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_topup_memory_cache_page(%struct.kvm_mmu_memory_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_memory_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.kvm_mmu_memory_cache* %0, %struct.kvm_mmu_memory_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %41, %13
  %15 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i8** %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %14
  %24 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %25 = call i64 @__get_free_page(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %23
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.kvm_mmu_memory_cache*, %struct.kvm_mmu_memory_cache** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu_memory_cache, %struct.kvm_mmu_memory_cache* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8*, i8** %45, i64 %50
  store i8* %42, i8** %51, align 8
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %39, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @__get_free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
