; ModuleID = '/home/carl/AnghaBench/htop/extr_Action.c_actionStrace.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Action.c_actionStrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HTOP_OK = common dso_local global i32 0, align 4
@HTOP_REFRESH = common dso_local global i32 0, align 4
@HTOP_REDRAW_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @actionStrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actionStrace(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @Panel_getSelected(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @HTOP_OK, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @TraceScreen_new(i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @TraceScreen_forkTracer(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @InfoScreen_run(i32* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @TraceScreen_delete(i32* %27)
  %29 = call i32 (...) @clear()
  %30 = call i32 (...) @CRT_enableDelay()
  %31 = load i32, i32* @HTOP_REFRESH, align 4
  %32 = load i32, i32* @HTOP_REDRAW_BAR, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @Panel_getSelected(i32) #1

declare dso_local i32* @TraceScreen_new(i32*) #1

declare dso_local i32 @TraceScreen_forkTracer(i32*) #1

declare dso_local i32 @InfoScreen_run(i32*) #1

declare dso_local i32 @TraceScreen_delete(i32*) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @CRT_enableDelay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
