; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_updatepp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_updatepp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i32 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"    update(vpn=%016lx, avpnv=%016lx, group=%lx, newpp=%lx)\00", align 1
@HPTE_V_AVPN = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" -> miss\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" -> hit\0A\00", align 1
@HPTE_R_PPP = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_LOCAL_UPDATE = common dso_local global i64 0, align 8
@HPTE_NOHPTE_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32, i32, i64)* @native_hpte_updatepp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_updatepp(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hash_pte*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %20 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %20, i64 %21
  store %struct.hash_pte* %22, %struct.hash_pte** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @hpte_encode_avpn(i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %17, align 8
  %29 = load i64, i64* @HPTE_V_AVPN, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30, i64 %31, i64 %32)
  %34 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %35 = call i64 @hpte_get_old_v(%struct.hash_pte* %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call i32 @HPTE_V_COMPARE(i64 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %7
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @HPTE_V_VALID, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %7
  %46 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %18, align 4
  br label %93

47:                                               ; preds = %40
  %48 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %49 = call i32 @native_lock_hpte(%struct.hash_pte* %48)
  %50 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %51 = call i64 @hpte_get_old_v(%struct.hash_pte* %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @HPTE_V_COMPARE(i64 %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @HPTE_V_VALID, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %47
  %63 = phi i1 [ true, %47 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %18, align 4
  br label %90

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %71 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @be64_to_cpu(i32 %72)
  %74 = load i64, i64* @HPTE_R_PPP, align 8
  %75 = load i64, i64* @HPTE_R_N, align 8
  %76 = or i64 %74, %75
  %77 = xor i64 %76, -1
  %78 = and i64 %73, %77
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @HPTE_R_PPP, align 8
  %81 = load i64, i64* @HPTE_R_N, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* @HPTE_R_C, align 8
  %84 = or i64 %82, %83
  %85 = and i64 %79, %84
  %86 = or i64 %78, %85
  %87 = call i32 @cpu_to_be64(i64 %86)
  %88 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %89 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %68, %67
  %91 = load %struct.hash_pte*, %struct.hash_pte** %15, align 8
  %92 = call i32 @native_unlock_hpte(%struct.hash_pte* %91)
  br label %93

93:                                               ; preds = %90, %45
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @HPTE_LOCAL_UPDATE, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %19, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @HPTE_NOHPTE_UPDATE, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @tlbie(i64 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  ret i64 %113
}

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i32 @DBG_LOW(i8*, ...) #1

declare dso_local i64 @hpte_get_old_v(%struct.hash_pte*) #1

declare dso_local i32 @HPTE_V_COMPARE(i64, i64) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @tlbie(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
