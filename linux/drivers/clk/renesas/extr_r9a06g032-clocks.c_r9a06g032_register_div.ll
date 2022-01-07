; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_register_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.r9a06g032_priv = type { i32 }
%struct.r9a06g032_clkdesc = type { i64*, i32, i32, i32, i32, i32 }
%struct.r9a06g032_clk_div = type { %struct.TYPE_2__, i32, i64*, i32, i32, i32, i32, %struct.r9a06g032_priv* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@r9a06g032_clk_div_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.r9a06g032_priv*, i8*, %struct.r9a06g032_clkdesc*)* @r9a06g032_register_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @r9a06g032_register_div(%struct.r9a06g032_priv* %0, i8* %1, %struct.r9a06g032_clkdesc* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.r9a06g032_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.r9a06g032_clkdesc*, align 8
  %8 = alloca %struct.r9a06g032_clk_div*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca i32, align 4
  store %struct.r9a06g032_priv* %0, %struct.r9a06g032_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.r9a06g032_clkdesc* %2, %struct.r9a06g032_clkdesc** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.r9a06g032_clk_div* @kzalloc(i32 48, i32 %12)
  store %struct.r9a06g032_clk_div* %13, %struct.r9a06g032_clk_div** %8, align 8
  %14 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %15 = icmp ne %struct.r9a06g032_clk_div* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %120

17:                                               ; preds = %3
  %18 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %19 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i32* @r9a06g032_clk_div_ops, i32** %22, align 8
  %23 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i8** [ %6, %27 ], [ null, %28 ]
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8** %30, i8*** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %5, align 8
  %38 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %39 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %38, i32 0, i32 7
  store %struct.r9a06g032_priv* %37, %struct.r9a06g032_priv** %39, align 8
  %40 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %41 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %44 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %46 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %49 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %51 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %52, align 8
  %53 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %54 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %57 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %59 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %62 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %105, %29
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %66 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = call i32 @ARRAY_SIZE(i64* %67)
  %69 = icmp ult i32 %64, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %73 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @ARRAY_SIZE(i64* %74)
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %79 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %77, %70, %63
  %87 = phi i1 [ false, %70 ], [ false, %63 ], [ %85, %77 ]
  br i1 %87, label %88, label %108

88:                                               ; preds = %86
  %89 = load %struct.r9a06g032_clkdesc*, %struct.r9a06g032_clkdesc** %7, align 8
  %90 = getelementptr inbounds %struct.r9a06g032_clkdesc, %struct.r9a06g032_clkdesc* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %97 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %100 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %98, i64 %103
  store i64 %95, i64* %104, align 8
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %63

108:                                              ; preds = %86
  %109 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %110 = getelementptr inbounds %struct.r9a06g032_clk_div, %struct.r9a06g032_clk_div* %109, i32 0, i32 0
  %111 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_2__* %110)
  store %struct.clk* %111, %struct.clk** %9, align 8
  %112 = load %struct.clk*, %struct.clk** %9, align 8
  %113 = call i64 @IS_ERR(%struct.clk* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.r9a06g032_clk_div*, %struct.r9a06g032_clk_div** %8, align 8
  %117 = call i32 @kfree(%struct.r9a06g032_clk_div* %116)
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %120

118:                                              ; preds = %108
  %119 = load %struct.clk*, %struct.clk** %9, align 8
  store %struct.clk* %119, %struct.clk** %4, align 8
  br label %120

120:                                              ; preds = %118, %115, %16
  %121 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %121
}

declare dso_local %struct.r9a06g032_clk_div* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.r9a06g032_clk_div*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
