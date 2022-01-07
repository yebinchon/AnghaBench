; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_pgt_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pageattr.c_pgt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MACHINE_HAS_EDAT2 = common dso_local global i64 0, align 8
@PTRS_PER_PUD = common dso_local global i32 0, align 4
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MACHINE_HAS_IDTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, i64)* @pgt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgt_set(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* @MACHINE_HAS_EDAT2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  switch i64 %14, label %33 [
    i64 129, label %15
    i64 128, label %21
    i64 130, label %27
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @PTRS_PER_PUD, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = sub i64 %18, 1
  %20 = xor i64 %19, -1
  store i64 %20, i64* %10, align 8
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* @PTRS_PER_PMD, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = sub i64 %24, 1
  %26 = xor i64 %25, -1
  store i64 %26, i64* %10, align 8
  br label %33

27:                                               ; preds = %13
  %28 = load i32, i32* @PTRS_PER_PTE, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = sub i64 %30, 1
  %32 = xor i64 %31, -1
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %13, %27, %21, %15
  %34 = load i64*, i64** %5, align 8
  %35 = ptrtoint i64* %34 to i64
  %36 = load i64, i64* %10, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 4
  %45 = call i32 @crdte(i64 %39, i64 %40, i64 %41, i64 %42, i64 %43, i32 %44)
  br label %64

46:                                               ; preds = %4
  %47 = load i64, i64* @MACHINE_HAS_IDTE, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64*, i64** %5, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @cspg(i64* %50, i64 %52, i64 %53)
  br label %63

55:                                               ; preds = %46
  %56 = load i64*, i64** %5, align 8
  %57 = bitcast i64* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @csp(i32* %58, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %55, %49
  br label %64

64:                                               ; preds = %63, %33
  ret void
}

declare dso_local i32 @crdte(i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @cspg(i64*, i64, i64) #1

declare dso_local i32 @csp(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
