; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_page_set_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_page_set_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"gfn mismatch under direct page %llx (expected %llx, got %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_mmu_page*, i32, i64)* @kvm_mmu_page_set_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_page_set_gfn(%struct.kvm_mmu_page* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %13, i64* %19, align 8
  br label %38

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page* %22, i32 %23)
  %25 = icmp ne i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page* %33, i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %12, %29, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page*, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
