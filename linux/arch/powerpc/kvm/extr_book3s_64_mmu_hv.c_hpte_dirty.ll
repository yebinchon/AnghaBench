; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_hpte_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_hpte_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmap_entry = type { i32 }

@HPTE_GR_MODIFIED = common dso_local global i32 0, align 4
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.revmap_entry*, i32*)* @hpte_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpte_dirty(%struct.revmap_entry* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.revmap_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.revmap_entry* %0, %struct.revmap_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.revmap_entry*, %struct.revmap_entry** %4, align 8
  %8 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HPTE_GR_MODIFIED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.revmap_entry*, %struct.revmap_entry** %4, align 8
  %16 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @HPTE_R_R, align 8
  %21 = load i64, i64* @HPTE_R_C, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %19, %22
  store i64 %23, i64* %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be64_to_cpu(i32 %26)
  %28 = load i64, i64* @HPTE_V_VALID, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %14
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be64_to_cpu(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %31, %14
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
