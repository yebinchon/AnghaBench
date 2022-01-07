; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_kona_peri_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_kona_peri_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.kona_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @kona_peri_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_peri_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.kona_clk*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk_hw*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.kona_clk* @to_kona_clk(%struct.clk_hw* %17)
  store %struct.kona_clk* %18, %struct.kona_clk** %6, align 8
  %19 = load %struct.kona_clk*, %struct.kona_clk** %6, align 8
  %20 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @WARN_ON_ONCE(i32 %24)
  %26 = load %struct.kona_clk*, %struct.kona_clk** %6, align 8
  %27 = getelementptr inbounds %struct.kona_clk, %struct.kona_clk* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %39 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %38, i32 0, i32 1
  %40 = call i8* @kona_peri_clk_round_rate(%struct.clk_hw* %34, i64 %37, i64* %39)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %120

47:                                               ; preds = %33
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %50 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %120

51:                                               ; preds = %2
  %52 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %53 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %52)
  store %struct.clk_hw* %53, %struct.clk_hw** %7, align 8
  %54 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %55 = call i64 @clk_hw_get_rate(%struct.clk_hw* %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %57 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %58 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @kona_peri_clk_round_rate(%struct.clk_hw* %56, i64 %59, i64* %8)
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %64 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = call i64 @abs(i64 %66)
  store i64 %67, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %113, %51
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %68
  %73 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %73, i32 %74)
  store %struct.clk_hw* %75, %struct.clk_hw** %14, align 8
  %76 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %77 = icmp ne %struct.clk_hw* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %82 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %83 = icmp eq %struct.clk_hw* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %113

85:                                               ; preds = %72
  %86 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %87 = call i64 @clk_hw_get_rate(%struct.clk_hw* %86)
  store i64 %87, i64* %8, align 8
  %88 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %89 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %90 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @kona_peri_clk_round_rate(%struct.clk_hw* %88, i64 %91, i64* %8)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %96 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = call i64 @abs(i64 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %85
  %104 = load i64, i64* %15, align 8
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %16, align 8
  store i64 %105, i64* %10, align 8
  %106 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %107 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %108 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %107, i32 0, i32 2
  store %struct.clk_hw* %106, %struct.clk_hw** %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %111 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %103, %85
  br label %113

113:                                              ; preds = %112, %84
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %68

116:                                              ; preds = %68
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %119 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %47, %44
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.kona_clk* @to_kona_clk(%struct.clk_hw*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @kona_peri_clk_round_rate(%struct.clk_hw*, i64, i64*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
