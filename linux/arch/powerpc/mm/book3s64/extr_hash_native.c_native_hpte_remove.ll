; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"    remove(group=%lx)\0A\00", align 1
@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @native_hpte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hash_pte*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @DBG_LOW(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = call i32 (...) @mftb()
  %11 = and i32 %10, 7
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %61, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HPTES_PER_GROUP, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %19, i64 %21
  store %struct.hash_pte* %22, %struct.hash_pte** %4, align 8
  %23 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %24 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @be64_to_cpu(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HPTE_V_VALID, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %16
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @HPTE_V_BOLTED, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %38 = call i32 @native_lock_hpte(%struct.hash_pte* %37)
  %39 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %40 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @be64_to_cpu(i64 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @HPTE_V_VALID, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @HPTE_V_BOLTED, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %64

53:                                               ; preds = %47, %36
  %54 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %55 = call i32 @native_unlock_hpte(%struct.hash_pte* %54)
  br label %56

56:                                               ; preds = %53, %31, %16
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 7
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %12

64:                                               ; preds = %52, %12
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @HPTES_PER_GROUP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i64 -1, i64* %2, align 8
  br label %74

69:                                               ; preds = %64
  %70 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %71 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i32 @DBG_LOW(i8*, i64) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
