; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_get_pe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_get_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_fs = type { i64, i64, i32, i32 }

@P20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64, i64, i32*, %struct.stm_fs*)* @clk_fs660c32_get_pe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fs660c32_get_pe(i32 %0, i32 %1, i64* %2, i64 %3, i64 %4, i32* %5, %struct.stm_fs* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.stm_fs*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.stm_fs, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.stm_fs* %6, %struct.stm_fs** %15, align 8
  %20 = load i64, i64* %13, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %19, align 4
  %24 = load i64, i64* %12, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @P20, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 32, %30
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %31, %33
  %35 = load i32, i32* @P20, align 4
  %36 = sext i32 %35 to i64
  %37 = sdiv i64 %36, 32
  %38 = mul nsw i64 %34, %37
  %39 = sub nsw i64 %28, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @div64_u64(i32 %43, i32 %44)
  %46 = load i32*, i32** %14, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %49, 32767
  br i1 %50, label %51, label %52

51:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %91

52:                                               ; preds = %7
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @clk_fs660c32_dig_get_rate(i64 %63, %struct.stm_fs* %18, i64* %16)
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %16, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 @abs(i64 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64*, i64** %11, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %52
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.stm_fs*, %struct.stm_fs** %15, align 8
  %77 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.stm_fs*, %struct.stm_fs** %15, align 8
  %82 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.stm_fs*, %struct.stm_fs** %15, align 8
  %85 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.stm_fs*, %struct.stm_fs** %15, align 8
  %87 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load i64, i64* %17, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %73, %52
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %51
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i32 @clk_fs660c32_dig_get_rate(i64, %struct.stm_fs*, i64*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
