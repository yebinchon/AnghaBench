; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_local_clk_enable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_local_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.clk*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @local_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 1
  %7 = load %struct.clk*, %struct.clk** %6, align 8
  %8 = icmp ne %struct.clk* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 1
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  %13 = call i32 @local_clk_enable(%struct.clk* %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %14
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.clk*, %struct.clk** %3, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.clk*, i32)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.clk*, %struct.clk** %3, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %35, align 8
  %37 = load %struct.clk*, %struct.clk** %3, align 8
  %38 = call i32 %36(%struct.clk* %37, i32 1)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %24, %19
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %67

47:                                               ; preds = %39
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 1
  %50 = load %struct.clk*, %struct.clk** %49, align 8
  %51 = icmp ne %struct.clk* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.clk*, %struct.clk** %3, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 1
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.clk*, i32)*, i32 (%struct.clk*, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.clk*, i32)* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.clk*, %struct.clk** %3, align 8
  %63 = getelementptr inbounds %struct.clk, %struct.clk* %62, i32 0, i32 1
  %64 = load %struct.clk*, %struct.clk** %63, align 8
  %65 = call i32 @local_clk_disable(%struct.clk* %64)
  br label %66

66:                                               ; preds = %61, %52, %47
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @local_clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
