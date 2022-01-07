; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_insert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i8*, i8* }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"    insert(group=%lx, vpn=%016lx, pa=%016lx, rflags=%lx, vflags=%lx, psize=%d)\0A\00", align 1
@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@HPTE_V_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c" i=%x hpte_v=%016lx, hpte_r=%016lx\0A\00", align 1
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i32, i32, i32)* @native_hpte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_insert(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hash_pte*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %22, i64 %23
  store %struct.hash_pte* %24, %struct.hash_pte** %18, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @HPTE_V_BOLTED, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 (i8*, i32, i64, i64, ...) @DBG_LOW(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %33, i64 %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %8
  store i32 0, i32* %21, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* @HPTES_PER_GROUP, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %45 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @be64_to_cpu(i8* %46)
  %48 = load i64, i64* @HPTE_V_VALID, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %43
  %52 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %53 = call i32 @native_lock_hpte(%struct.hash_pte* %52)
  %54 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %55 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @be64_to_cpu(i8* %56)
  %58 = load i64, i64* @HPTE_V_VALID, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %71

62:                                               ; preds = %51
  %63 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %64 = call i32 @native_unlock_hpte(%struct.hash_pte* %63)
  br label %65

65:                                               ; preds = %62, %43
  %66 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %67 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %66, i32 1
  store %struct.hash_pte* %67, %struct.hash_pte** %18, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %39

71:                                               ; preds = %61, %39
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* @HPTES_PER_GROUP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 -1, i64* %9, align 8
  br label %132

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i64 @hpte_encode_v(i64 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i64, i64* %14, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @HPTE_V_VALID, align 8
  %85 = or i64 %83, %84
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i64 @hpte_encode_r(i64 %86, i32 %87, i32 %88)
  %90 = load i64, i64* %13, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @HPTE_V_BOLTED, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %76
  %97 = load i32, i32* %21, align 4
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %20, align 8
  %100 = call i32 (i8*, i32, i64, i64, ...) @DBG_LOW(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %76
  %102 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %103 = call i64 @cpu_has_feature(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %20, align 8
  %108 = call i64 @hpte_old_to_new_r(i64 %106, i64 %107)
  store i64 %108, i64* %20, align 8
  %109 = load i64, i64* %19, align 8
  %110 = call i64 @hpte_old_to_new_v(i64 %109)
  store i64 %110, i64* %19, align 8
  br label %111

111:                                              ; preds = %105, %101
  %112 = load i64, i64* %20, align 8
  %113 = call i8* @cpu_to_be64(i64 %112)
  %114 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %115 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = call i32 (...) @eieio()
  %117 = load i64, i64* %19, align 8
  %118 = call i8* @cpu_to_be64(i64 %117)
  %119 = load %struct.hash_pte*, %struct.hash_pte** %18, align 8
  %120 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %121 = load i32, i32* %21, align 4
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %124 = and i64 %122, %123
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = shl i32 %128, 3
  %130 = or i32 %121, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %111, %75
  %133 = load i64, i64* %9, align 8
  ret i64 %133
}

declare dso_local i32 @DBG_LOW(i8*, i32, i64, i64, ...) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32, i32) #1

declare dso_local i64 @hpte_encode_r(i64, i32, i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_old_to_new_r(i64, i64) #1

declare dso_local i64 @hpte_old_to_new_v(i64) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2088}
