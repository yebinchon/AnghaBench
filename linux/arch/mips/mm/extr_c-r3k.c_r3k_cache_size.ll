; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSEG0 = common dso_local global i64 0, align 8
@ST0_IEC = common dso_local global i64 0, align 8
@ST0_CM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r3k_cache_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @KSEG0, align 8
  %9 = inttoptr i64 %8 to i64*
  store i64* %9, i64** %7, align 8
  %10 = call i64 (...) @read_c0_status()
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @ST0_IEC, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = call i32 @write_c0_status(i64 %16)
  %18 = load i64*, i64** %7, align 8
  store volatile i64 2779077210, i64* %18, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load volatile i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = call i64 (...) @read_c0_status()
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 2779077210
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @ST0_CM, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %1
  store i64 0, i64* %6, align 8
  br label %63

30:                                               ; preds = %24
  store i64 128, i64* %6, align 8
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ule i64 %32, 262144
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store volatile i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = shl i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i64*, i64** %7, align 8
  store volatile i64 -1, i64* %42, align 8
  store i64 128, i64* %6, align 8
  br label %43

43:                                               ; preds = %55, %41
  %44 = load i64, i64* %6, align 8
  %45 = icmp ule i64 %44, 262144
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load volatile i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = shl i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %43

58:                                               ; preds = %52
  %59 = load i64, i64* %6, align 8
  %60 = icmp ugt i64 %59, 262144
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 0, i64* %6, align 8
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @write_c0_status(i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = mul i64 %66, 8
  ret i64 %67
}

declare dso_local i64 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
