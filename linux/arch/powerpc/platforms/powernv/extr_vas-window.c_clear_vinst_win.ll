; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_clear_vinst_win.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_clear_vinst_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i64, i32, i32, %struct.vas_instance* }
%struct.vas_instance = type { i32, %struct.vas_window**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_window*)* @clear_vinst_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_vinst_win(%struct.vas_window* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vas_instance*, align 8
  store %struct.vas_window* %0, %struct.vas_window** %2, align 8
  %5 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %6 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %9 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %8, i32 0, i32 4
  %10 = load %struct.vas_instance*, %struct.vas_instance** %9, align 8
  store %struct.vas_instance* %10, %struct.vas_instance** %4, align 8
  %11 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %12 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %15 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %1
  %19 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %20 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %25 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %28 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  %36 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %37 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %40 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %23, %18, %1
  %44 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %45 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %44, i32 0, i32 1
  %46 = load %struct.vas_window**, %struct.vas_window*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %46, i64 %48
  %50 = load %struct.vas_window*, %struct.vas_window** %49, align 8
  %51 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %52 = icmp ne %struct.vas_window* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON_ONCE(i32 %53)
  %55 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %56 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %55, i32 0, i32 1
  %57 = load %struct.vas_window**, %struct.vas_window*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %57, i64 %59
  store %struct.vas_window* null, %struct.vas_window** %60, align 8
  %61 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %62 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
