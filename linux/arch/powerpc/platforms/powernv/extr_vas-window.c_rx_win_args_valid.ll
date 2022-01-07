; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_rx_win_args_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_rx_win_args_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_rx_win_attr = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"Rxattr: fault %d, notify %d, intr %d, early %d, fifo %d\0A\00", align 1
@VAS_COP_TYPE_MAX = common dso_local global i32 0, align 4
@VAS_COP_TYPE_FTW = common dso_local global i32 0, align 4
@VAS_RX_FIFO_SIZE_MIN = common dso_local global i64 0, align 8
@VAS_RX_FIFO_SIZE_MAX = common dso_local global i64 0, align 8
@VAS_RX_WCREDS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vas_rx_win_attr*)* @rx_win_args_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_win_args_valid(i32 %0, %struct.vas_rx_win_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vas_rx_win_attr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vas_rx_win_attr* %1, %struct.vas_rx_win_attr** %5, align 8
  %6 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %7 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %10 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %13 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %16 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %19 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %11, i64 %14, i64 %17, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VAS_COP_TYPE_MAX, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VAS_COP_TYPE_FTW, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %32 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VAS_RX_FIFO_SIZE_MIN, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %133

37:                                               ; preds = %30, %26
  %38 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %39 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VAS_RX_FIFO_SIZE_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %133

44:                                               ; preds = %37
  %45 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %46 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VAS_RX_WCREDS_MAX, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %133

51:                                               ; preds = %44
  %52 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %53 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %58 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %63 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %133

67:                                               ; preds = %61
  %68 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %69 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %74 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %79 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72, %67
  store i32 0, i32* %3, align 4
  br label %133

83:                                               ; preds = %77
  br label %132

84:                                               ; preds = %51
  %85 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %86 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %91 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %133

95:                                               ; preds = %89
  %96 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %97 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %102 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %95
  store i32 0, i32* %3, align 4
  br label %133

106:                                              ; preds = %100
  br label %131

107:                                              ; preds = %84
  %108 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %109 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %114 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %119 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %124 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122, %117, %112
  store i32 0, i32* %3, align 4
  br label %133

128:                                              ; preds = %122
  br label %130

129:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %133

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %106
  br label %132

132:                                              ; preds = %131, %83
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %129, %127, %105, %94, %82, %66, %50, %43, %36, %25
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
