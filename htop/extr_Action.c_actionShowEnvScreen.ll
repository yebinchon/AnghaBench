; ModuleID = '/home/carl/AnghaBench/htop/extr_Action.c_actionShowEnvScreen.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Action.c_actionShowEnvScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@HTOP_OK = common dso_local global i32 0, align 4
@HTOP_REFRESH = common dso_local global i32 0, align 4
@HTOP_REDRAW_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @actionShowEnvScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actionShowEnvScreen(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @Panel_getSelected(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @HTOP_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @EnvScreen_new(i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @InfoScreen_run(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @EnvScreen_delete(i32* %20)
  %22 = call i32 (...) @clear()
  %23 = call i32 (...) @CRT_enableDelay()
  %24 = load i32, i32* @HTOP_REFRESH, align 4
  %25 = load i32, i32* @HTOP_REDRAW_BAR, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @Panel_getSelected(i32) #1

declare dso_local i32* @EnvScreen_new(i32*) #1

declare dso_local i32 @InfoScreen_run(i32*) #1

declare dso_local i32 @EnvScreen_delete(i32*) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @CRT_enableDelay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
