; ModuleID = '/home/carl/AnghaBench/i3/src/extr_window.c_window_update_hints.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_window.c_window_update_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"WM_HINTS not set.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not get WM_HINTS\0A\00", align 1
@XCB_ICCCM_WM_HINT_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"WM_HINTS.input changed to \22%d\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_update_hints(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @xcb_get_property_value_length(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %12
  %20 = call i32 @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @FREE(i32* %21)
  br label %59

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @xcb_icccm_get_wm_hints_from_reply(%struct.TYPE_6__* %7, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 @DLOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @free(i32* %29)
  br label %59

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XCB_ICCCM_WM_HINT_INPUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %37, %31
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call i64 @xcb_icccm_wm_hints_get_urgency(%struct.TYPE_6__* %7)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @free(i32* %57)
  br label %59

59:                                               ; preds = %56, %27, %19
  ret void
}

declare dso_local i64 @xcb_get_property_value_length(i32*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @FREE(i32*) #1

declare dso_local i32 @xcb_icccm_get_wm_hints_from_reply(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i64 @xcb_icccm_wm_hints_get_urgency(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
