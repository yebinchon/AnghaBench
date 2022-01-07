; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_pseries_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_pseries_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hash_pte = type { i32, i32 }

@mmu_kernel_ssize = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32*, i32*)* @pseries_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_find(i64 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x %struct.hash_pte], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32, i32* @mmu_kernel_ssize, align 4
  store i32 %23, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %20, align 4
  %32 = call i64 @get_kernel_vsid(i64 %30, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* %20, align 4
  %36 = call i64 @hpt_vpn(i64 %33, i64 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %22, align 8
  %39 = load i32, i32* %20, align 4
  %40 = call i64 @hpt_hash(i64 %37, i64 %38, i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %20, align 4
  %44 = call i64 @hpte_encode_avpn(i64 %41, i32 %42, i32 %43)
  store i64 %44, i64* %17, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %5
  %48 = load i64, i64* %15, align 8
  %49 = xor i64 %48, -1
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %47, %5
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @htab_hash_mask, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @HPTES_PER_GROUP, align 8
  %55 = mul i64 %53, %54
  store i64 %55, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %110, %50
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @HPTES_PER_GROUP, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %56
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds [4 x %struct.hash_pte], [4 x %struct.hash_pte]* %12, i64 0, i64 0
  %64 = bitcast %struct.hash_pte* %63 to i8*
  %65 = call i64 @plpar_pte_read_4(i32 0, i64 %62, i8* %64)
  store i64 %65, i64* %21, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* @H_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %110

70:                                               ; preds = %61
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %106, %70
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.hash_pte], [4 x %struct.hash_pte]* %12, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i64 @HPTE_V_COMPARE(i32 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %74
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x %struct.hash_pte], [4 x %struct.hash_pte]* %12, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HPTE_V_VALID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x %struct.hash_pte], [4 x %struct.hash_pte]* %12, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x %struct.hash_pte], [4 x %struct.hash_pte]* %12, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %6, align 4
  br label %116

105:                                              ; preds = %83, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %71

109:                                              ; preds = %71
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %18, align 4
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %16, align 8
  br label %56

115:                                              ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %92
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i64 @plpar_pte_read_4(i32, i64, i8*) #1

declare dso_local i64 @HPTE_V_COMPARE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
