; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_dig_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_dig_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_fs = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.stm_fs*)* @clk_fs660c32_dig_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fs660c32_dig_get_params(i64 %0, i64 %1, %struct.stm_fs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stm_fs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.stm_fs, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.stm_fs* %2, %struct.stm_fs** %7, align 8
  store i64 -1, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %68, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %71

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %32 = call i32 @clk_fs660c32_get_pe(i32 0, i32 %28, i64* %12, i64 %29, i64 %30, i64* %14, %struct.stm_fs* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %37 = call i32 @clk_fs660c32_get_pe(i32 31, i32 %33, i64* %12, i64 %34, i64 %35, i64* %15, %struct.stm_fs* %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %68

48:                                               ; preds = %43, %40, %27
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 31
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %63 = call i32 @clk_fs660c32_get_pe(i32 %58, i32 %59, i64* %12, i64 %60, i64 %61, i64* %13, %struct.stm_fs* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %49

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %19

71:                                               ; preds = %25
  %72 = load i64, i64* %12, align 8
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %141

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %140

78:                                               ; preds = %75
  %79 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %80 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %84 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %88 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %92 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %78
  %96 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %97 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %15, align 8
  br label %102

101:                                              ; preds = %78
  store i64 0, i64* %15, align 8
  br label %102

102:                                              ; preds = %101, %95
  br label %103

103:                                              ; preds = %136, %102
  %104 = load i64, i64* %15, align 8
  %105 = icmp slt i64 %104, 32768
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %109 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = icmp sle i64 %107, %112
  br label %114

114:                                              ; preds = %106, %103
  %115 = phi i1 [ false, %103 ], [ %113, %106 ]
  br i1 %115, label %116, label %139

116:                                              ; preds = %114
  %117 = load i64, i64* %15, align 8
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %18, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @clk_fs660c32_dig_get_rate(i64 %120, %struct.stm_fs* %18, i64* %10)
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %10, align 8
  %124 = sub i64 %122, %123
  %125 = call i64 @abs(i64 %124)
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load i64, i64* %15, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.stm_fs*, %struct.stm_fs** %7, align 8
  %133 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %129, %116
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %15, align 8
  br label %103

139:                                              ; preds = %114
  br label %140

140:                                              ; preds = %139, %75
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %74
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @clk_fs660c32_get_pe(i32, i32, i64*, i64, i64, i64*, %struct.stm_fs*) #1

declare dso_local i32 @clk_fs660c32_dig_get_rate(i64, %struct.stm_fs*, i64*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
