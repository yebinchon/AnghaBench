; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_tegra_cvb_add_opp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_tegra_cvb_add_opp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cvb_table = type { i32, i32 }
%struct.rail_alignment = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cvb_table* @tegra_cvb_add_opp_table(%struct.device* %0, %struct.cvb_table* %1, i64 %2, %struct.rail_alignment* %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.cvb_table*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.cvb_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rail_alignment*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.cvb_table*, align 8
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.cvb_table* %1, %struct.cvb_table** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.rail_alignment* %3, %struct.rail_alignment** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %21

21:                                               ; preds = %68, %8
  %22 = load i64, i64* %18, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = load %struct.cvb_table*, %struct.cvb_table** %11, align 8
  %27 = load i64, i64* %18, align 8
  %28 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %26, i64 %27
  store %struct.cvb_table* %28, %struct.cvb_table** %20, align 8
  %29 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  %30 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  %35 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %68

40:                                               ; preds = %33, %25
  %41 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  %42 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  %47 = getelementptr inbounds %struct.cvb_table, %struct.cvb_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %68

52:                                               ; preds = %45, %40
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  %55 = load %struct.rail_alignment*, %struct.rail_alignment** %13, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i64, i64* %17, align 8
  %58 = call i32 @build_opp_table(%struct.device* %53, %struct.cvb_table* %54, %struct.rail_alignment* %55, i32 %56, i64 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.cvb_table* @ERR_PTR(i32 %62)
  br label %66

64:                                               ; preds = %52
  %65 = load %struct.cvb_table*, %struct.cvb_table** %20, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi %struct.cvb_table* [ %63, %61 ], [ %65, %64 ]
  store %struct.cvb_table* %67, %struct.cvb_table** %9, align 8
  br label %75

68:                                               ; preds = %51, %39
  %69 = load i64, i64* %18, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %18, align 8
  br label %21

71:                                               ; preds = %21
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.cvb_table* @ERR_PTR(i32 %73)
  store %struct.cvb_table* %74, %struct.cvb_table** %9, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.cvb_table*, %struct.cvb_table** %9, align 8
  ret %struct.cvb_table* %76
}

declare dso_local i32 @build_opp_table(%struct.device*, %struct.cvb_table*, %struct.rail_alignment*, i32, i64) #1

declare dso_local %struct.cvb_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
