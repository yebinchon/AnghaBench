; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cmpxchg.c___xchg_small.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cmpxchg.c___xchg_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__xchg_small(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i32, i32* %6, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = and i64 %14, %17
  %19 = call i32 @WARN_ON(i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BITS_PER_BYTE, align 4
  %22 = mul i32 %20, %21
  %23 = sub i32 %22, 1
  %24 = call i64 @GENMASK(i32 %23, i32 0)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 3
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 8, %37
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = xor i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %35, %3
  %44 = load i32, i32* @BITS_PER_BYTE, align 4
  %45 = load i32, i32* %12, align 4
  %46 = mul i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i64, i64* %10, align 8
  %49 = zext i32 %47 to i64
  %50 = shl i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, -4
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %11, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load volatile i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %72, %43
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = xor i64 %60, -1
  %62 = and i64 %59, %61
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  %67 = or i64 %62, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @cmpxchg(i64* %68, i64 %69, i64 %70)
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %57, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = and i64 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = lshr i64 %79, %81
  ret i64 %82
}

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
