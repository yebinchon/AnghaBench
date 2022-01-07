; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_clk.c_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_clk.c_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = call i32 @clk_good(%struct.clk* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load %struct.clk*, %struct.clk** %4, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %6, align 8
  br label %30

30:                                               ; preds = %41, %26
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i64*, i64** %6, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %6, align 8
  br label %30

44:                                               ; preds = %39
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %55

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %20, %15
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %48, %14
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
