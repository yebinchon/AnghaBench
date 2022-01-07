; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_lsize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_cache_lsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSEG0 = common dso_local global i64 0, align 8
@ST0_IEC = common dso_local global i64 0, align 8
@ST0_CM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r3k_cache_lsize(i64 %0) #0 {
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
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %25, %1
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %19, 128
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store volatile i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %18

28:                                               ; preds = %18
  %29 = load i64*, i64** %7, align 8
  %30 = bitcast i64* %29 to i8*
  store volatile i8 0, i8* %30, align 1
  store i64 1, i64* %5, align 8
  br label %31

31:                                               ; preds = %46, %28
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %32, 128
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load volatile i64, i64* %37, align 8
  %39 = call i64 (...) @read_c0_status()
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @ST0_CM, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = shl i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %31

49:                                               ; preds = %44, %31
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %51, 128
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = bitcast i64* %56 to i8*
  store volatile i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %50

62:                                               ; preds = %50
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @write_c0_status(i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = mul i64 %65, 8
  ret i64 %66
}

declare dso_local i64 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
