; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_native_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_native_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hash_pte = type { i32, i32 }

@mmu_kernel_ssize = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i8**, i8**)* @native_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_find(i64 %0, i32 %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.hash_pte*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %22 = load i32, i32* @mmu_kernel_ssize, align 4
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %21, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %20, align 4
  %31 = call i64 @get_kernel_vsid(i64 %29, i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %20, align 4
  %35 = call i64 @hpt_vpn(i64 %32, i64 %33, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %21, align 8
  %38 = load i32, i32* %20, align 4
  %39 = call i64 @hpt_hash(i64 %36, i64 %37, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %20, align 4
  %43 = call i64 @hpte_encode_avpn(i64 %40, i32 %41, i32 %42)
  store i64 %43, i64* %17, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %5
  %47 = load i64, i64* %13, align 8
  %48 = xor i64 %47, -1
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %46, %5
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @htab_hash_mask, align 8
  %52 = and i64 %50, %51
  %53 = load i64, i64* @HPTES_PER_GROUP, align 8
  %54 = mul i64 %52, %53
  store i64 %54, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %92, %49
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @HPTES_PER_GROUP, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %61, i64 %62
  store %struct.hash_pte* %63, %struct.hash_pte** %12, align 8
  %64 = load %struct.hash_pte*, %struct.hash_pte** %12, align 8
  %65 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be64_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i64
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @HPTE_V_COMPARE(i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %60
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* @HPTE_V_VALID, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.hash_pte*, %struct.hash_pte** %12, align 8
  %80 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @be64_to_cpu(i32 %81)
  %83 = load i8**, i8*** %10, align 8
  store i8* %82, i8** %83, align 8
  %84 = load %struct.hash_pte*, %struct.hash_pte** %12, align 8
  %85 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @be64_to_cpu(i32 %86)
  %88 = load i8**, i8*** %11, align 8
  store i8* %87, i8** %88, align 8
  store i32 0, i32* %6, align 4
  br label %96

89:                                               ; preds = %73, %60
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  br label %55

95:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %78
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i64 @HPTE_V_COMPARE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
