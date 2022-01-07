; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"    invalidate(vpn=%016lx, hash: %lx)\0A\00", align 1
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32, i32)* @native_hpte_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_hpte_invalidate(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hash_pte*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i64 %18
  store %struct.hash_pte* %19, %struct.hash_pte** %13, align 8
  %20 = load i64, i64* %16, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @DBG_LOW(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @hpte_encode_avpn(i64 %25, i32 %26, i32 %27)
  store i64 %28, i64* %15, align 8
  %29 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %30 = call i64 @hpte_get_old_v(%struct.hash_pte* %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i64 @HPTE_V_COMPARE(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %6
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* @HPTE_V_VALID, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %42 = call i32 @native_lock_hpte(%struct.hash_pte* %41)
  %43 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %44 = call i64 @hpte_get_old_v(%struct.hash_pte* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i64 @HPTE_V_COMPARE(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @HPTE_V_VALID, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %56 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %60

57:                                               ; preds = %49, %40
  %58 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %59 = call i32 @native_unlock_hpte(%struct.hash_pte* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %35, %6
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @tlbie(i64 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @DBG_LOW(i8*, i64, i64) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i64 @hpte_get_old_v(%struct.hash_pte*) #1

declare dso_local i64 @HPTE_V_COMPARE(i64, i64) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @tlbie(i64, i32, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
