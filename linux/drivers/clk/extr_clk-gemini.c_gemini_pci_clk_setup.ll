; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gemini.c_gemini_pci_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gemini.c_gemini_pci_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.regmap = type { i32 }
%struct.clk_gemini_pci = type { %struct.clk_hw, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gemini_pci_clk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (i8*, i8*, %struct.regmap*)* @gemini_pci_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @gemini_pci_clk_setup(i8* %0, i8* %1, %struct.regmap* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.clk_gemini_pci*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.clk_gemini_pci* @kzalloc(i32 16, i32 %11)
  store %struct.clk_gemini_pci* %12, %struct.clk_gemini_pci** %8, align 8
  %13 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %14 = icmp ne %struct.clk_gemini_pci* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.clk_hw* @ERR_PTR(i32 %17)
  store %struct.clk_hw* %18, %struct.clk_hw** %4, align 8
  br label %45

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @gemini_pci_clk_ops, i32** %22, align 8
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i8** %6, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %28 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %27, i32 0, i32 1
  store %struct.regmap* %26, %struct.regmap** %28, align 8
  %29 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %30 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %30, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %31, align 8
  %32 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %33 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %32, i32 0, i32 0
  %34 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %39 = call i32 @kfree(%struct.clk_gemini_pci* %38)
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.clk_hw* @ERR_PTR(i32 %40)
  store %struct.clk_hw* %41, %struct.clk_hw** %4, align 8
  br label %45

42:                                               ; preds = %19
  %43 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %44 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %43, i32 0, i32 0
  store %struct.clk_hw* %44, %struct.clk_hw** %4, align 8
  br label %45

45:                                               ; preds = %42, %37, %15
  %46 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  ret %struct.clk_hw* %46
}

declare dso_local %struct.clk_gemini_pci* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.clk_gemini_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
