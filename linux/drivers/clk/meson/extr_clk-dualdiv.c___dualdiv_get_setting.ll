; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c___dualdiv_get_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c___dualdiv_get_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_clk_dualdiv_param = type { i64 }
%struct.meson_clk_dualdiv_data = type { %struct.meson_clk_dualdiv_param* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.meson_clk_dualdiv_param* (i64, i64, %struct.meson_clk_dualdiv_data*)* @__dualdiv_get_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.meson_clk_dualdiv_param* @__dualdiv_get_setting(i64 %0, i64 %1, %struct.meson_clk_dualdiv_data* %2) #0 {
  %4 = alloca %struct.meson_clk_dualdiv_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.meson_clk_dualdiv_data*, align 8
  %8 = alloca %struct.meson_clk_dualdiv_param*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.meson_clk_dualdiv_data* %2, %struct.meson_clk_dualdiv_data** %7, align 8
  %13 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %7, align 8
  %14 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %13, i32 0, i32 0
  %15 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %14, align 8
  store %struct.meson_clk_dualdiv_param* %15, %struct.meson_clk_dualdiv_param** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %8, align 8
  %17 = icmp ne %struct.meson_clk_dualdiv_param* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.meson_clk_dualdiv_param* null, %struct.meson_clk_dualdiv_param** %4, align 8
  br label %66

19:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %21, i64 %23
  %25 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %30, i64 %32
  %34 = call i64 @__dualdiv_param_to_rate(i64 %29, %struct.meson_clk_dualdiv_param* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %39, i64 %41
  store %struct.meson_clk_dualdiv_param* %42, %struct.meson_clk_dualdiv_param** %4, align 8
  br label %66

43:                                               ; preds = %28
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %44, %45
  %47 = call i64 @abs(i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub i64 %48, %49
  %51 = call i64 @abs(i64 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %20

61:                                               ; preds = %20
  %62 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %62, i64 %64
  store %struct.meson_clk_dualdiv_param* %65, %struct.meson_clk_dualdiv_param** %4, align 8
  br label %66

66:                                               ; preds = %61, %38, %18
  %67 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %4, align 8
  ret %struct.meson_clk_dualdiv_param* %67
}

declare dso_local i64 @__dualdiv_param_to_rate(i64, %struct.meson_clk_dualdiv_param*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
