; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_audio_calc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_audio_calc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_zx_audio_divider = type { i32 }
%struct.zx_clk_audio_div_table = type { i64, i32, i32 }

@CLK_AUDIO_DIV_INT_FRAC_MAX = common dso_local global i32 0, align 4
@CLK_AUDIO_DIV_INT_FRAC_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_zx_audio_divider*, %struct.zx_clk_audio_div_table*, i64, i64)* @audio_calc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_calc_reg(%struct.clk_zx_audio_divider* %0, %struct.zx_clk_audio_div_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.clk_zx_audio_divider*, align 8
  %6 = alloca %struct.zx_clk_audio_div_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_zx_audio_divider* %0, %struct.clk_zx_audio_divider** %5, align 8
  store %struct.zx_clk_audio_div_table* %1, %struct.zx_clk_audio_div_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CLK_AUDIO_DIV_INT_FRAC_MAX, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @CLK_AUDIO_DIV_INT_FRAC_MAX, align 4
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CLK_AUDIO_DIV_INT_FRAC_MIN, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = sub i64 %30, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @gcd(i64 %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = udiv i64 %43, %44
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = lshr i64 %46, 16
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %29
  %50 = load i64, i64* %12, align 8
  %51 = lshr i64 %50, 16
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49, %29
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64, i64* %12, align 8
  %59 = mul i64 %58, 65535
  %60 = load i64, i64* %11, align 8
  %61 = udiv i64 %59, %60
  store i64 %61, i64* %12, align 8
  store i64 65535, i64* %11, align 8
  br label %67

62:                                               ; preds = %53
  %63 = load i64, i64* %11, align 8
  %64 = mul i64 %63, 65535
  %65 = load i64, i64* %12, align 8
  %66 = udiv i64 %64, %65
  store i64 %66, i64* %11, align 8
  store i64 65535, i64* %12, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = shl i64 %70, 16
  %72 = or i64 %69, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = mul i64 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %12, align 8
  %80 = mul i64 %78, %79
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %80, %81
  %83 = udiv i64 %76, %82
  %84 = load %struct.zx_clk_audio_div_table*, %struct.zx_clk_audio_div_table** %6, align 8
  %85 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.zx_clk_audio_div_table*, %struct.zx_clk_audio_div_table** %6, align 8
  %88 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.zx_clk_audio_div_table*, %struct.zx_clk_audio_div_table** %6, align 8
  %91 = getelementptr inbounds %struct.zx_clk_audio_div_table, %struct.zx_clk_audio_div_table* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  ret void
}

declare dso_local i64 @gcd(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
