; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_register_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_register_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdce706_dev_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cdce706_hw_data = type { i32, %struct.TYPE_4__, %struct.cdce706_dev_data* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"Failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdce706_dev_data*, %struct.cdce706_hw_data*, i32, i8**, %struct.clk_init_data*)* @cdce706_register_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce706_register_hw(%struct.cdce706_dev_data* %0, %struct.cdce706_hw_data* %1, i32 %2, i8** %3, %struct.clk_init_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdce706_dev_data*, align 8
  %8 = alloca %struct.cdce706_hw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.clk_init_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdce706_dev_data* %0, %struct.cdce706_dev_data** %7, align 8
  store %struct.cdce706_hw_data* %1, %struct.cdce706_hw_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.clk_init_data* %4, %struct.clk_init_data** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load i8**, i8*** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.clk_init_data*, %struct.clk_init_data** %11, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %27 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %8, align 8
  %28 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %27, i32 0, i32 2
  store %struct.cdce706_dev_data* %26, %struct.cdce706_dev_data** %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %8, align 8
  %31 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clk_init_data*, %struct.clk_init_data** %11, align 8
  %33 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %8, align 8
  %34 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.clk_init_data* %32, %struct.clk_init_data** %35, align 8
  %36 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %37 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %8, align 8
  %41 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %40, i32 0, i32 1
  %42 = call i32 @devm_clk_hw_register(i32* %39, %struct.TYPE_4__* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %18
  %46 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %47 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %64

57:                                               ; preds = %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load %struct.cdce706_hw_data*, %struct.cdce706_hw_data** %8, align 8
  %62 = getelementptr inbounds %struct.cdce706_hw_data, %struct.cdce706_hw_data* %61, i32 1
  store %struct.cdce706_hw_data* %62, %struct.cdce706_hw_data** %8, align 8
  br label %14

63:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @devm_clk_hw_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
