; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_New.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Menus = common dso_local global i32* null, align 8
@menuCount = common dso_local global i64 0, align 8
@MAX_MENUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Menu_New(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @Menus, align 8
  %5 = load i64, i64* @menuCount, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32* %6, i32** %3, align 8
  %7 = load i64, i64* @menuCount, align 8
  %8 = load i64, i64* @MAX_MENUS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @Menu_Init(i32* %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @Menu_Parse(i32 %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @Menu_PostParse(i32* %18)
  %20 = load i64, i64* @menuCount, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @menuCount, align 8
  br label %22

22:                                               ; preds = %17, %10
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @Menu_Init(i32*) #1

declare dso_local i64 @Menu_Parse(i32, i32*) #1

declare dso_local i32 @Menu_PostParse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
