; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_window_free_dbgdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_window_free_dbgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vas_window_free_dbgdir(%struct.vas_window* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  store %struct.vas_window* %0, %struct.vas_window** %2, align 8
  %3 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %4 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %9 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @debugfs_remove_recursive(i32* %10)
  %12 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %13 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %17 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %19 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
