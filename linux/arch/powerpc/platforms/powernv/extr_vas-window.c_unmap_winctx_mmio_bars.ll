; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_unmap_winctx_mmio_bars.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_unmap_winctx_mmio_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32*, i32* }

@vas_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_window*)* @unmap_winctx_mmio_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_winctx_mmio_bars(%struct.vas_window* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %2, align 8
  %7 = call i32 @mutex_lock(i32* @vas_mutex)
  %8 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %9 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %13 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %15 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %19 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = call i32 @mutex_unlock(i32* @vas_mutex)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %25 = call i32 @get_hvwc_mmio_bar(%struct.vas_window* %24, i32* %6, i32* %3)
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @unmap_region(i8* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %35 = call i32 @get_uwc_mmio_bar(%struct.vas_window* %34, i32* %6, i32* %3)
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @unmap_region(i8* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_hvwc_mmio_bar(%struct.vas_window*, i32*, i32*) #1

declare dso_local i32 @unmap_region(i8*, i32, i32) #1

declare dso_local i32 @get_uwc_mmio_bar(%struct.vas_window*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
