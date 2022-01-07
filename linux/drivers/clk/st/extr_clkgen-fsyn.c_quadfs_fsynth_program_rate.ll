; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_fsynth_program_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_fsynth_program_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_clk_quadfs_fsynth = type { i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@en = common dso_local global i32* null, align 8
@mdiv = common dso_local global i32* null, align 8
@pe = common dso_local global i32* null, align 8
@sdiv = common dso_local global i32* null, align 8
@nsdiv = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_clk_quadfs_fsynth*)* @quadfs_fsynth_program_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quadfs_fsynth_program_rate(%struct.st_clk_quadfs_fsynth* %0) #0 {
  %2 = alloca %struct.st_clk_quadfs_fsynth*, align 8
  %3 = alloca i64, align 8
  store %struct.st_clk_quadfs_fsynth* %0, %struct.st_clk_quadfs_fsynth** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %5 = load i32*, i32** @en, align 8
  %6 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %7 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth* %4, i32 %10, i32 0)
  %12 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %13 = load i32*, i32** @mdiv, align 8
  %14 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %15 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %20 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth* %12, i32 %18, i32 %21)
  %23 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %24 = load i32*, i32** @pe, align 8
  %25 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %26 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %31 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth* %23, i32 %29, i32 %32)
  %34 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %35 = load i32*, i32** @sdiv, align 8
  %36 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %37 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %42 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth* %34, i32 %40, i32 %43)
  %45 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %46 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %1
  %50 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %51 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_lock_irqsave(i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %1
  %56 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %57 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %64 = load i32*, i32** @nsdiv, align 8
  %65 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %66 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %71 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth* %63, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %62, %55
  %75 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %76 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.st_clk_quadfs_fsynth*, %struct.st_clk_quadfs_fsynth** %2, align 8
  %81 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, %struct.st_clk_quadfs_fsynth* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @spin_unlock_irqrestore(i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_fsynth*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
