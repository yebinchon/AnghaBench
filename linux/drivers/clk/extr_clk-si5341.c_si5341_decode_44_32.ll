; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_decode_44_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_decode_44_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32*, i32*)* @si5341_decode_44_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_decode_44_32(%struct.regmap* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i32], align 16
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %15 = call i32 @regmap_bulk_read(%struct.regmap* %12, i32 %13, i32* %14, i32 10)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %4
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  %24 = shl i32 %23, 8
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 4
  %26 = load i32, i32* %25, align 16
  %27 = or i32 %24, %26
  %28 = shl i32 %27, 32
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %30 = call i32 @get_unaligned_le32(i32* %29)
  %31 = or i32 %28, %30
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 6
  %34 = call i32 @get_unaligned_le32(i32* %33)
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
