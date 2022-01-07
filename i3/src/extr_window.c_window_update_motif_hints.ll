; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_motif_hints.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_motif_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BS_NORMAL = common dso_local global i32 0, align 4
@BS_PIXEL = common dso_local global i32 0, align 4
@BS_NONE = common dso_local global i32 0, align 4
@MWM_DECOR_ALL = common dso_local global i32 0, align 4
@MWM_DECOR_BORDER = common dso_local global i32 0, align 4
@MWM_DECOR_TITLE = common dso_local global i32 0, align 4
@MWM_HINTS_DECORATIONS = common dso_local global i32 0, align 4
@MWM_HINTS_DECORATIONS_FIELD = common dso_local global i64 0, align 8
@MWM_HINTS_FLAGS_FIELD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_update_motif_hints(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @BS_NORMAL, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @xcb_get_property_value_length(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %13
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @FREE(i32* %21)
  br label %67

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @xcb_get_property_value(i32* %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @BS_NORMAL, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %63

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @BS_PIXEL, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @BS_NONE, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %29, %23
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @FREE(i32* %65)
  br label %67

67:                                               ; preds = %64, %20
  ret void
}

declare dso_local i64 @xcb_get_property_value_length(i32*) #1

declare dso_local i32 @FREE(i32*) #1

declare dso_local i64 @xcb_get_property_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
