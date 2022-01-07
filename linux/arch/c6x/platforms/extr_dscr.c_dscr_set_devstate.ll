; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_dscr_set_devstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_dscr_set_devstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, %struct.devstate_info* }
%struct.devstate_info = type { %struct.devstate_stat_reg*, %struct.devstate_ctl_reg* }
%struct.devstate_stat_reg = type { i32, i32, i32, i32, i32, i64 }
%struct.devstate_ctl_reg = type { i32, i32, i32, i32, i32, i64, i32 }

@dscr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_DEVSTATE_IDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dscr_set_devstate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.devstate_ctl_reg*, align 8
  %6 = alloca %struct.devstate_stat_reg*, align 8
  %7 = alloca %struct.devstate_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %151

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MAX_DEVSTATE_IDS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  br label %151

24:                                               ; preds = %19
  %25 = load %struct.devstate_info*, %struct.devstate_info** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 2), align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.devstate_info, %struct.devstate_info* %25, i64 %27
  store %struct.devstate_info* %28, %struct.devstate_info** %7, align 8
  %29 = load %struct.devstate_info*, %struct.devstate_info** %7, align 8
  %30 = getelementptr inbounds %struct.devstate_info, %struct.devstate_info* %29, i32 0, i32 1
  %31 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %30, align 8
  store %struct.devstate_ctl_reg* %31, %struct.devstate_ctl_reg** %5, align 8
  %32 = load %struct.devstate_info*, %struct.devstate_info** %7, align 8
  %33 = getelementptr inbounds %struct.devstate_info, %struct.devstate_info* %32, i32 0, i32 0
  %34 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %33, align 8
  store %struct.devstate_stat_reg* %34, %struct.devstate_stat_reg** %6, align 8
  %35 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %36 = icmp eq %struct.devstate_ctl_reg* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %151

38:                                               ; preds = %24
  %39 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %40 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %43 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %47 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = mul nsw i32 %44, %49
  %51 = add nsw i32 %41, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %53 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %4, align 4
  switch i32 %59, label %78 [
    i32 128, label %60
    i32 129, label %66
  ]

60:                                               ; preds = %38
  %61 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %62 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %8, align 4
  br label %79

66:                                               ; preds = %38
  %67 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %68 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %151

72:                                               ; preds = %66
  %73 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %74 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %79

78:                                               ; preds = %38
  br label %151

79:                                               ; preds = %72, %60
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 1), i64 %80)
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %83 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %84 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 @soc_readl(i64 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.devstate_ctl_reg*, %struct.devstate_ctl_reg** %5, align 8
  %96 = getelementptr inbounds %struct.devstate_ctl_reg, %struct.devstate_ctl_reg* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @dscr_write(i64 %97, i32 %98)
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 1), i64 %100)
  %102 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %103 = icmp ne %struct.devstate_stat_reg* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %79
  br label %151

105:                                              ; preds = %79
  %106 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %107 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %110 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %114 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = mul nsw i32 %111, %116
  %118 = add nsw i32 %108, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %123 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %8, align 4
  br label %129

125:                                              ; preds = %105
  %126 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %127 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %130

130:                                              ; preds = %147, %129
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %132 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %133 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = call i32 @soc_readl(i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = ashr i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.devstate_stat_reg*, %struct.devstate_stat_reg** %6, align 8
  %141 = getelementptr inbounds %struct.devstate_stat_reg, %struct.devstate_stat_reg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 1, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %130
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %130, label %151

151:                                              ; preds = %15, %23, %37, %71, %78, %104, %147
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @soc_readl(i64) #1

declare dso_local i32 @dscr_write(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
