; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmhv_get_rmmu_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmhv_get_rmmu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_ppc_rmmu_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@p9_supported_radix_bits = common dso_local global i8** null, align 8
@MMU_PAGE_4K = common dso_local global i32 0, align 4
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@MMU_PAGE_2M = common dso_local global i32 0, align 4
@MMU_PAGE_1G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmhv_get_rmmu_info(%struct.kvm* %0, %struct.kvm_ppc_rmmu_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ppc_rmmu_info*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ppc_rmmu_info* %1, %struct.kvm_ppc_rmmu_info** %5, align 8
  %7 = call i32 (...) @radix_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %14 = call i32 @memset(%struct.kvm_ppc_rmmu_info* %13, i32 0, i32 8)
  %15 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_ppc_rmmu_info, %struct.kvm_ppc_rmmu_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 12, i32* %19, align 8
  %20 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_ppc_rmmu_info, %struct.kvm_ppc_rmmu_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 9, i32* %26, align 4
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %46, %12
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i8**, i8*** @p9_supported_radix_bits, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_ppc_rmmu_info, %struct.kvm_ppc_rmmu_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %36, i32* %45, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_ppc_rmmu_info, %struct.kvm_ppc_rmmu_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 16, i32* %54, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %74, %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i8**, i8*** @p9_supported_radix_bits, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_ppc_rmmu_info, %struct.kvm_ppc_rmmu_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %64, i32* %73, align 4
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %55

77:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  %78 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %79 = load i32, i32* @MMU_PAGE_4K, align 4
  %80 = call i32 @add_rmmu_ap_encoding(%struct.kvm_ppc_rmmu_info* %78, i32 %79, i32* %6)
  %81 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %82 = load i32, i32* @MMU_PAGE_64K, align 4
  %83 = call i32 @add_rmmu_ap_encoding(%struct.kvm_ppc_rmmu_info* %81, i32 %82, i32* %6)
  %84 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %85 = load i32, i32* @MMU_PAGE_2M, align 4
  %86 = call i32 @add_rmmu_ap_encoding(%struct.kvm_ppc_rmmu_info* %84, i32 %85, i32* %6)
  %87 = load %struct.kvm_ppc_rmmu_info*, %struct.kvm_ppc_rmmu_info** %5, align 8
  %88 = load i32, i32* @MMU_PAGE_1G, align 4
  %89 = call i32 @add_rmmu_ap_encoding(%struct.kvm_ppc_rmmu_info* %87, i32 %88, i32* %6)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %77, %9
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @memset(%struct.kvm_ppc_rmmu_info*, i32, i32) #1

declare dso_local i32 @add_rmmu_ap_encoding(%struct.kvm_ppc_rmmu_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
