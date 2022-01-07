; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix = type { i32, %struct.mmp_clk_mix_clk_table* }
%struct.mmp_clk_mix_clk_table = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @mmp_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mmp_clk_mix*, align 8
  %7 = alloca %struct.mmp_clk_mix_clk_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %11)
  store %struct.mmp_clk_mix* %12, %struct.mmp_clk_mix** %6, align 8
  %13 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %14 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %13, i32 0, i32 1
  %15 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %14, align 8
  %16 = icmp ne %struct.mmp_clk_mix_clk_table* %15, null
  br i1 %16, label %17, label %68

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %21 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %26 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %25, i32 0, i32 1
  %27 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %27, i64 %29
  store %struct.mmp_clk_mix_clk_table* %30, %struct.mmp_clk_mix_clk_table** %7, align 8
  %31 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %38 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %18

47:                                               ; preds = %42, %18
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %50 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %55 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %56 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @_get_div_val(%struct.mmp_clk_mix* %54, i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %60 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %61 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @_get_mux_val(%struct.mmp_clk_mix* %59, i64 %62)
  store i64 %63, i64* %10, align 8
  br label %67

64:                                               ; preds = %47
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %53
  br label %72

68:                                               ; preds = %2
  %69 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @_get_mux_val(%struct.mmp_clk_mix* %69, i64 %70)
  store i64 %71, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = call i32 @_set_rate(%struct.mmp_clk_mix* %73, i64 %74, i64 %75, i32 1, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %64
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local i64 @_get_div_val(%struct.mmp_clk_mix*, i32) #1

declare dso_local i64 @_get_mux_val(%struct.mmp_clk_mix*, i64) #1

declare dso_local i32 @_set_rate(%struct.mmp_clk_mix*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
