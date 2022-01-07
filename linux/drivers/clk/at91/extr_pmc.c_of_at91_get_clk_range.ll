; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_pmc.c_of_at91_get_clk_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_pmc.c_of_at91_get_clk_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.clk_range = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_at91_get_clk_range(%struct.device_node* %0, i8* %1, %struct.clk_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk_range*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.clk_range* %2, %struct.clk_range** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @of_property_read_u32_index(%struct.device_node* %11, i8* %12, i32 0, i8** %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @of_property_read_u32_index(%struct.device_node* %19, i8* %20, i32 1, i8** %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.clk_range*, %struct.clk_range** %7, align 8
  %28 = icmp ne %struct.clk_range* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.clk_range*, %struct.clk_range** %7, align 8
  %32 = getelementptr inbounds %struct.clk_range, %struct.clk_range* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.clk_range*, %struct.clk_range** %7, align 8
  %35 = getelementptr inbounds %struct.clk_range, %struct.clk_range* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %24, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
