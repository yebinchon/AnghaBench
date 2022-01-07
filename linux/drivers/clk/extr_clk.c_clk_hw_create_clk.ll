; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_create_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_create_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.device* }
%struct.device = type { i32 }
%struct.clk_hw = type { %struct.clk_core* }
%struct.clk_core = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_hw_create_clk(%struct.device* %0, %struct.clk_hw* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.clk_core*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %13 = call i64 @IS_ERR_OR_NULL(%struct.clk_hw* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %17 = call %struct.clk* @ERR_CAST(%struct.clk_hw* %16)
  store %struct.clk* %17, %struct.clk** %5, align 8
  br label %54

18:                                               ; preds = %4
  %19 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %20 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %19, i32 0, i32 0
  %21 = load %struct.clk_core*, %struct.clk_core** %20, align 8
  store %struct.clk_core* %21, %struct.clk_core** %11, align 8
  %22 = load %struct.clk_core*, %struct.clk_core** %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.clk* @alloc_clk(%struct.clk_core* %22, i8* %23, i8* %24)
  store %struct.clk* %25, %struct.clk** %10, align 8
  %26 = load %struct.clk*, %struct.clk** %10, align 8
  %27 = call i64 @IS_ERR(%struct.clk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load %struct.clk*, %struct.clk** %10, align 8
  store %struct.clk* %30, %struct.clk** %5, align 8
  br label %54

31:                                               ; preds = %18
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.clk*, %struct.clk** %10, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 0
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.clk_core*, %struct.clk_core** %11, align 8
  %36 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @try_module_get(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load %struct.clk*, %struct.clk** %10, align 8
  %42 = call i32 @free_clk(%struct.clk* %41)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.clk* @ERR_PTR(i32 %44)
  store %struct.clk* %45, %struct.clk** %5, align 8
  br label %54

46:                                               ; preds = %31
  %47 = load %struct.clk_core*, %struct.clk_core** %11, align 8
  %48 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %47, i32 0, i32 0
  %49 = call i32 @kref_get(i32* %48)
  %50 = load %struct.clk_core*, %struct.clk_core** %11, align 8
  %51 = load %struct.clk*, %struct.clk** %10, align 8
  %52 = call i32 @clk_core_link_consumer(%struct.clk_core* %50, %struct.clk* %51)
  %53 = load %struct.clk*, %struct.clk** %10, align 8
  store %struct.clk* %53, %struct.clk** %5, align 8
  br label %54

54:                                               ; preds = %46, %40, %29, %15
  %55 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %55
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk_hw*) #1

declare dso_local %struct.clk* @ERR_CAST(%struct.clk_hw*) #1

declare dso_local %struct.clk* @alloc_clk(%struct.clk_core*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @free_clk(%struct.clk*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @clk_core_link_consumer(%struct.clk_core*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
