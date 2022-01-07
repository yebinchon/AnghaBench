; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_tx49_blast_icache32_page_indexed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_tx49_blast_icache32_page_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INDEX_BASE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@CACHE32_UNROLL32_ALIGN2 = common dso_local global i32 0, align 4
@Index_Invalidate_I = common dso_local global i32 0, align 4
@CACHE32_UNROLL32_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tx49_blast_icache32_page_indexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx49_blast_icache32_page_indexed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @INDEX_BASE, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %14, %15
  %17 = add i64 %13, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  %22 = shl i64 1, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 2), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  %25 = shl i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* @CACHE32_UNROLL32_ALIGN2, align 4
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %48, %1
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1024
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %44, %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %39, %40
  %42 = load i32, i32* @Index_Invalidate_I, align 4
  %43 = call i32 @cache32_unroll32(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 2048
  store i64 %46, i64* %9, align 8
  br label %34

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %27

52:                                               ; preds = %27
  %53 = load i32, i32* @CACHE32_UNROLL32_ALIGN, align 4
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %74, %52
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %70, %58
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = or i64 %65, %66
  %68 = load i32, i32* @Index_Invalidate_I, align 4
  %69 = call i32 @cache32_unroll32(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 2048
  store i64 %72, i64* %9, align 8
  br label %60

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %8, align 8
  br label %54

78:                                               ; preds = %54
  ret void
}

declare dso_local i32 @cache32_unroll32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
