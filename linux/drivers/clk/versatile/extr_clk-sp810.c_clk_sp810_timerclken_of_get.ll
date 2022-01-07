; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_of_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_of_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.clk_sp810 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.of_phandle_args*, i8*)* @clk_sp810_timerclken_of_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_sp810_timerclken_of_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk_sp810*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.clk_sp810*
  store %struct.clk_sp810* %8, %struct.clk_sp810** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.clk_sp810*, %struct.clk_sp810** %6, align 8
  %20 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %21)
  %23 = icmp uge i64 %18, %22
  br label %24

24:                                               ; preds = %13, %2
  %25 = phi i1 [ true, %2 ], [ %23, %13 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.clk* null, %struct.clk** %3, align 8
  br label %42

30:                                               ; preds = %24
  %31 = load %struct.clk_sp810*, %struct.clk_sp810** %6, align 8
  %32 = getelementptr inbounds %struct.clk_sp810, %struct.clk_sp810* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  store %struct.clk* %41, %struct.clk** %3, align 8
  br label %42

42:                                               ; preds = %30, %29
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %43
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
