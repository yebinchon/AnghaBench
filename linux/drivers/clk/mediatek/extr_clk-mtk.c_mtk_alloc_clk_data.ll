; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_alloc_clk_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_alloc_clk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_onecell_data = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_onecell_data* @mtk_alloc_clk_data(i32 %0) #0 {
  %2 = alloca %struct.clk_onecell_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_onecell_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.clk_onecell_data* @kzalloc(i32 16, i32 %6)
  store %struct.clk_onecell_data* %7, %struct.clk_onecell_data** %5, align 8
  %8 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %9 = icmp ne %struct.clk_onecell_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.clk_onecell_data* null, %struct.clk_onecell_data** %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %16 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %18 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %45

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %25 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @ERR_PTR(i32 %32)
  %34 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %35 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  store %struct.clk_onecell_data* %44, %struct.clk_onecell_data** %2, align 8
  br label %48

45:                                               ; preds = %21
  %46 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %5, align 8
  %47 = call i32 @kfree(%struct.clk_onecell_data* %46)
  store %struct.clk_onecell_data* null, %struct.clk_onecell_data** %2, align 8
  br label %48

48:                                               ; preds = %45, %43, %10
  %49 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %2, align 8
  ret %struct.clk_onecell_data* %49
}

declare dso_local %struct.clk_onecell_data* @kzalloc(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.clk_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
