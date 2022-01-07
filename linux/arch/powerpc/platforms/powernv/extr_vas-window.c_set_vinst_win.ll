; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_set_vinst_win.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_set_vinst_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_instance = type { i32, %struct.vas_window**, %struct.vas_window** }
%struct.vas_window = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_instance*, %struct.vas_window*)* @set_vinst_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vinst_win(%struct.vas_instance* %0, %struct.vas_window* %1) #0 {
  %3 = alloca %struct.vas_instance*, align 8
  %4 = alloca %struct.vas_window*, align 8
  %5 = alloca i32, align 4
  store %struct.vas_instance* %0, %struct.vas_instance** %3, align 8
  store %struct.vas_window* %1, %struct.vas_window** %4, align 8
  %6 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %7 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %10 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %13 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %2
  %17 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %18 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %23 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %22, i32 0, i32 2
  %24 = load %struct.vas_window**, %struct.vas_window*** %23, align 8
  %25 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %26 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %24, i64 %27
  %29 = load %struct.vas_window*, %struct.vas_window** %28, align 8
  %30 = call i32 @WARN_ON_ONCE(%struct.vas_window* %29)
  %31 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %32 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %33 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %32, i32 0, i32 2
  %34 = load %struct.vas_window**, %struct.vas_window*** %33, align 8
  %35 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %36 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %34, i64 %37
  store %struct.vas_window* %31, %struct.vas_window** %38, align 8
  br label %39

39:                                               ; preds = %21, %16, %2
  %40 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %41 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %40, i32 0, i32 1
  %42 = load %struct.vas_window**, %struct.vas_window*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %42, i64 %44
  %46 = load %struct.vas_window*, %struct.vas_window** %45, align 8
  %47 = icmp ne %struct.vas_window* %46, null
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.vas_window*
  %51 = call i32 @WARN_ON_ONCE(%struct.vas_window* %50)
  %52 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %53 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %54 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %53, i32 0, i32 1
  %55 = load %struct.vas_window**, %struct.vas_window*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %55, i64 %57
  store %struct.vas_window* %52, %struct.vas_window** %58, align 8
  %59 = load %struct.vas_instance*, %struct.vas_instance** %3, align 8
  %60 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.vas_window*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
