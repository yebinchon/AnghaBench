; ModuleID = '/home/carl/AnghaBench/htop/extr_AffinityPanel.c_AffinityPanel_eventHandler.c'
source_filename = "/home/carl/AnghaBench/htop/extr_AffinityPanel.c_AffinityPanel_eventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HANDLED = common dso_local global i32 0, align 4
@BREAK_LOOP = common dso_local global i32 0, align 4
@IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @AffinityPanel_eventHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AffinityPanel_eventHandler(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @Panel_getSelected(i32* %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %22 [
    i32 129, label %11
    i32 128, label %11
    i32 32, label %11
    i32 10, label %20
    i32 13, label %20
    i32 130, label %20
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @CheckItem_get(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @CheckItem_set(i32* %12, i32 %17)
  %19 = load i32, i32* @HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2, %2, %2
  %21 = load i32, i32* @BREAK_LOOP, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IGNORED, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @Panel_getSelected(i32*) #1

declare dso_local i32 @CheckItem_set(i32*, i32) #1

declare dso_local i32 @CheckItem_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
