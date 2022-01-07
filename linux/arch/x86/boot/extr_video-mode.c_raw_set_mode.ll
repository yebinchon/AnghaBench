; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_raw_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video-mode.c_raw_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_info = type { i32, i32 (%struct.mode_info*)*, i32, i32, %struct.mode_info* }
%struct.mode_info = type { i32, i32, i32 }

@VIDEO_RECALC = common dso_local global i32 0, align 4
@video_cards = common dso_local global %struct.card_info* null, align 8
@video_cards_end = common dso_local global %struct.card_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @raw_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_set_mode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.card_info*, align 8
  %9 = alloca %struct.mode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mode_info, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @VIDEO_RECALC, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %16, %struct.card_info** %8, align 8
  br label %17

17:                                               ; preds = %90, %2
  %18 = load %struct.card_info*, %struct.card_info** %8, align 8
  %19 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %20 = icmp ult %struct.card_info* %18, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = load %struct.card_info*, %struct.card_info** %8, align 8
  %23 = getelementptr inbounds %struct.card_info, %struct.card_info* %22, i32 0, i32 4
  %24 = load %struct.mode_info*, %struct.mode_info** %23, align 8
  store %struct.mode_info* %24, %struct.mode_info** %9, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %84, %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.card_info*, %struct.card_info** %8, align 8
  %28 = getelementptr inbounds %struct.card_info, %struct.card_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %25
  %32 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %33 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %38 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %53 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %59 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %63 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = icmp eq i32 %57, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %56, %50, %47
  %68 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %69 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.card_info*, %struct.card_info** %8, align 8
  %73 = getelementptr inbounds %struct.card_info, %struct.card_info* %72, i32 0, i32 1
  %74 = load i32 (%struct.mode_info*)*, i32 (%struct.mode_info*)** %73, align 8
  %75 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %76 = call i32 %74(%struct.mode_info* %75)
  store i32 %76, i32* %3, align 4
  br label %130

77:                                               ; preds = %56
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load %struct.mode_info*, %struct.mode_info** %9, align 8
  %88 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %87, i32 1
  store %struct.mode_info* %88, %struct.mode_info** %9, align 8
  br label %25

89:                                               ; preds = %25
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.card_info*, %struct.card_info** %8, align 8
  %92 = getelementptr inbounds %struct.card_info, %struct.card_info* %91, i32 1
  store %struct.card_info* %92, %struct.card_info** %8, align 8
  br label %17

93:                                               ; preds = %17
  %94 = load %struct.card_info*, %struct.card_info** @video_cards, align 8
  store %struct.card_info* %94, %struct.card_info** %8, align 8
  br label %95

95:                                               ; preds = %126, %93
  %96 = load %struct.card_info*, %struct.card_info** %8, align 8
  %97 = load %struct.card_info*, %struct.card_info** @video_cards_end, align 8
  %98 = icmp ult %struct.card_info* %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.card_info*, %struct.card_info** %8, align 8
  %102 = getelementptr inbounds %struct.card_info, %struct.card_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.card_info*, %struct.card_info** %8, align 8
  %108 = getelementptr inbounds %struct.card_info, %struct.card_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.card_info*, %struct.card_info** %8, align 8
  %111 = getelementptr inbounds %struct.card_info, %struct.card_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = icmp slt i32 %106, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %105
  %116 = load i32, i32* %4, align 4
  %117 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %11, i32 0, i32 2
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %5, align 8
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %11, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %11, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.card_info*, %struct.card_info** %8, align 8
  %122 = getelementptr inbounds %struct.card_info, %struct.card_info* %121, i32 0, i32 1
  %123 = load i32 (%struct.mode_info*)*, i32 (%struct.mode_info*)** %122, align 8
  %124 = call i32 %123(%struct.mode_info* %11)
  store i32 %124, i32* %3, align 4
  br label %130

125:                                              ; preds = %105, %99
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.card_info*, %struct.card_info** %8, align 8
  %128 = getelementptr inbounds %struct.card_info, %struct.card_info* %127, i32 1
  store %struct.card_info* %128, %struct.card_info** %8, align 8
  br label %95

129:                                              ; preds = %95
  store i32 -1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %115, %67
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
