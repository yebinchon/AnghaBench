; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_dig_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_dig_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_fs = type { i32, i32, i32, i32 }

@P20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.stm_fs*, i64*)* @clk_fs660c32_dig_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fs660c32_dig_get_rate(i64 %0, %struct.stm_fs* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm_fs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.stm_fs* %1, %struct.stm_fs** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %11 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %16 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 3
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @P20, align 4
  %23 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %24 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 32, %25
  %27 = mul nsw i32 %22, %26
  %28 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %29 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 32, %30
  %32 = add nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @P20, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %39, %41
  %43 = mul i64 %42, 32
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @div64_u64(i64 %43, i32 %44)
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  ret i32 0
}

declare dso_local i64 @div64_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
