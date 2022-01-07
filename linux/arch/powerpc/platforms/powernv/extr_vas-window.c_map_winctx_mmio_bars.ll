; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_map_winctx_mmio_bars.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_map_winctx_mmio_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"HVWCM_Window\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"UWCM_Window\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_winctx_mmio_bars(%struct.vas_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vas_window*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %3, align 8
  %6 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %7 = call i32 @get_hvwc_mmio_bar(%struct.vas_window* %6, i32* %5, i32* %4)
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @map_mmio_region(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %12 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %14 = call i32 @get_uwc_mmio_bar(%struct.vas_window* %13, i32* %5, i32* %4)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @map_mmio_region(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %19 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %21 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %26 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %31 = call i32 @unmap_winctx_mmio_bars(%struct.vas_window* %30)
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @get_hvwc_mmio_bar(%struct.vas_window*, i32*, i32*) #1

declare dso_local i8* @map_mmio_region(i8*, i32, i32) #1

declare dso_local i32 @get_uwc_mmio_bar(%struct.vas_window*, i32*, i32*) #1

declare dso_local i32 @unmap_winctx_mmio_bars(%struct.vas_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
