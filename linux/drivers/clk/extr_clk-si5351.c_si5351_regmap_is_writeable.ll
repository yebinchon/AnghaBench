; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_regmap_is_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_regmap_is_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@SI5351_DEVICE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @si5351_regmap_is_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5351_regmap_is_writeable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp uge i32 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ule i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %39

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp uge i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ule i32 %16, 14
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %39

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %20, 173
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp ule i32 %23, 176
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp uge i32 %27, 178
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp ule i32 %30, 182
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SI5351_DEVICE_STATUS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

38:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %25, %18, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
