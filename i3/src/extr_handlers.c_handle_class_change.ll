; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_class_change.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_class_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@XCB_ATOM_WM_CLASS = common dso_local global i32 0, align 4
@XCB_ATOM_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32*)* @handle_class_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_class_change(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.TYPE_5__* @con_by_window_id(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %14, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %6
  store i32 0, i32* %7, align 4
  br label %47

24:                                               ; preds = %18
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @XCB_ATOM_WM_CLASS, align 4
  %32 = load i32, i32* @XCB_ATOM_STRING, align 4
  %33 = call i32 @xcb_get_property_unchecked(i32* %29, i32 0, i32 %30, i32 %31, i32 %32, i32 0, i32 32)
  %34 = call i32* @xcb_get_property_reply(i32* %28, i32 %33, i32* null)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %47

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @window_update_class(i32* %42, i32* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = call %struct.TYPE_5__* @remanage_window(%struct.TYPE_5__* %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %14, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %39, %37, %23
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_5__* @con_by_window_id(i32) #1

declare dso_local i32* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property_unchecked(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @window_update_class(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @remanage_window(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
