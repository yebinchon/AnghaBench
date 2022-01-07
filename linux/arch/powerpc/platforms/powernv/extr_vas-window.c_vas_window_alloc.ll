; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_window_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_window_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, %struct.vas_instance* }
%struct.vas_instance = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vas_window* (%struct.vas_instance*)* @vas_window_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vas_window* @vas_window_alloc(%struct.vas_instance* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  %3 = alloca %struct.vas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vas_window*, align 8
  store %struct.vas_instance* %0, %struct.vas_instance** %3, align 8
  %6 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %7 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %6, i32 0, i32 0
  %8 = call i32 @vas_assign_window_id(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.vas_window* @ERR_PTR(i32 %12)
  store %struct.vas_window* %13, %struct.vas_window** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vas_window* @kzalloc(i32 16, i32 %15)
  store %struct.vas_window* %16, %struct.vas_window** %5, align 8
  %17 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %18 = icmp ne %struct.vas_window* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %35

20:                                               ; preds = %14
  %21 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %22 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %23 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %22, i32 0, i32 1
  store %struct.vas_instance* %21, %struct.vas_instance** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %26 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %28 = call i64 @map_winctx_mmio_bars(%struct.vas_window* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %33 = call i32 @vas_window_init_dbgdir(%struct.vas_window* %32)
  %34 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  store %struct.vas_window* %34, %struct.vas_window** %2, align 8
  br label %45

35:                                               ; preds = %30, %19
  %36 = load %struct.vas_window*, %struct.vas_window** %5, align 8
  %37 = call i32 @kfree(%struct.vas_window* %36)
  %38 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %39 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @vas_release_window_id(i32* %39, i32 %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.vas_window* @ERR_PTR(i32 %43)
  store %struct.vas_window* %44, %struct.vas_window** %2, align 8
  br label %45

45:                                               ; preds = %35, %31, %11
  %46 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  ret %struct.vas_window* %46
}

declare dso_local i32 @vas_assign_window_id(i32*) #1

declare dso_local %struct.vas_window* @ERR_PTR(i32) #1

declare dso_local %struct.vas_window* @kzalloc(i32, i32) #1

declare dso_local i64 @map_winctx_mmio_bars(%struct.vas_window*) #1

declare dso_local i32 @vas_window_init_dbgdir(%struct.vas_window*) #1

declare dso_local i32 @kfree(%struct.vas_window*) #1

declare dso_local i32 @vas_release_window_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
