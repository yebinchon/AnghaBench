; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_start_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_start_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_gemini = type { %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gemini_sata_start_bridge(%struct.sata_gemini* %0, i32 %1) #0 {
  %3 = alloca %struct.sata_gemini*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.sata_gemini* %0, %struct.sata_gemini** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %11 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %10, i32 0, i32 1
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  store %struct.clk* %12, %struct.clk** %5, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %15 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %14, i32 0, i32 0
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  store %struct.clk* %16, %struct.clk** %5, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.clk*, %struct.clk** %5, align 8
  %19 = call i32 @clk_enable(%struct.clk* %18)
  %20 = call i32 @msleep(i32 10)
  %21 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @gemini_sata_setup_bridge(%struct.sata_gemini* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.clk*, %struct.clk** %5, align 8
  %28 = call i32 @clk_disable(%struct.clk* %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gemini_sata_setup_bridge(%struct.sata_gemini*, i32) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
