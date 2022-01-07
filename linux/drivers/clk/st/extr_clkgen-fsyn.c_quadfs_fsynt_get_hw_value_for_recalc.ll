; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_fsynt_get_hw_value_for_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_fsynt_get_hw_value_for_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_clk_quadfs_fsynth = type { i64, i32, i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.stm_fs = type { i32, i8*, i8*, i8* }

@mdiv = common dso_local global i32* null, align 8
@pe = common dso_local global i32* null, align 8
@sdiv = common dso_local global i32* null, align 8
@nsdiv = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_clk_quadfs_fsynth*, %struct.stm_fs*)* @quadfs_fsynt_get_hw_value_for_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quadfs_fsynt_get_hw_value_for_recalc(%struct.st_clk_quadfs_fsynth* %0, %struct.stm_fs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_clk_quadfs_fsynth*, align 8
  %5 = alloca %struct.stm_fs*, align 8
  store %struct.st_clk_quadfs_fsynth* %0, %struct.st_clk_quadfs_fsynth** %4, align 8
  store %struct.stm_fs* %1, %struct.stm_fs** %5, align 8
  %6 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %7 = load i32*, i32** @mdiv, align 8
  %8 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @CLKGEN_READ(%struct.st_clk_quadfs_fsynth* %6, i32 %12)
  %14 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %15 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %17 = load i32*, i32** @pe, align 8
  %18 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %19 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @CLKGEN_READ(%struct.st_clk_quadfs_fsynth* %16, i32 %22)
  %24 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %25 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %27 = load i32*, i32** @sdiv, align 8
  %28 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %29 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @CLKGEN_READ(%struct.st_clk_quadfs_fsynth* %26, i32 %32)
  %34 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %35 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %37 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %2
  %43 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %44 = load i32*, i32** @nsdiv, align 8
  %45 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %46 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @CLKGEN_READ(%struct.st_clk_quadfs_fsynth* %43, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %53 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %56 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %42
  %58 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %59 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %64 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %69 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %94

73:                                               ; preds = %67, %62, %57
  %74 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %75 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %78 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %80 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %83 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %85 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %88 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %90 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %4, align 8
  %93 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %73, %72
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @CLKGEN_READ(%struct.st_clk_quadfs_fsynth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
