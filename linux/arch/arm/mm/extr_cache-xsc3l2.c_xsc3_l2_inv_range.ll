; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_inv_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_inv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @xsc3_l2_inv_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsc3_l2_inv_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @xsc3_l2_inv_all()
  br label %75

13:                                               ; preds = %8, %2
  store i64 -1, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = xor i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = and i64 %21, %25
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @l2_map_va(i64 %26, i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @xsc3_l2_clean_mva(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @xsc3_l2_inv_mva(i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = or i64 %33, %36
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %20, %13
  br label %40

40:                                               ; preds = %49, %39
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = xor i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = and i64 %42, %46
  %48 = icmp ult i64 %41, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @l2_map_va(i64 %50, i64 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @xsc3_l2_inv_mva(i64 %53)
  %55 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %3, align 8
  br label %40

59:                                               ; preds = %40
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @l2_map_va(i64 %64, i64 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @xsc3_l2_clean_mva(i64 %67)
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @xsc3_l2_inv_mva(i64 %69)
  br label %71

71:                                               ; preds = %63, %59
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @l2_unmap_va(i64 %72)
  %74 = call i32 (...) @dsb()
  br label %75

75:                                               ; preds = %71, %11
  ret void
}

declare dso_local i32 @xsc3_l2_inv_all(...) #1

declare dso_local i64 @l2_map_va(i64, i64) #1

declare dso_local i32 @xsc3_l2_clean_mva(i64) #1

declare dso_local i32 @xsc3_l2_inv_mva(i64) #1

declare dso_local i32 @l2_unmap_va(i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
