; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@htab_hash_mask = common dso_local global i32 0, align 4
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @native_hpte_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_hpte_clear() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hash_pte*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %10 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  store %struct.hash_pte* %10, %struct.hash_pte** %4, align 8
  %11 = load i32, i32* @htab_hash_mask, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @HPTES_PER_GROUP, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %3, align 8
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %42, %0
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %23 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @be64_to_cpu(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @HPTE_V_VALID, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @hpte_decode(%struct.hash_pte* %31, i64 %32, i32* %7, i32* %8, i32* %9, i64* %1)
  %34 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %35 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %1, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @___tlbie(i64 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %2, align 8
  %45 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %46 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %45, i32 1
  store %struct.hash_pte* %46, %struct.hash_pte** %4, align 8
  br label %17

47:                                               ; preds = %17
  call void asm sideeffect "eieio; tlbsync; ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @hpte_decode(%struct.hash_pte*, i64, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @___tlbie(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1031}
