; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_motif_hints_change.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_motif_hints_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }

@A__MOTIF_WM_HINTS = common dso_local global i32 0, align 4
@XCB_GET_PROPERTY_TYPE_ANY = common dso_local global i32 0, align 4
@BS_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Update border style of con %p to %d\0A\00", align 1
@croot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32*)* @handle_motif_hints_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_motif_hints_change(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.TYPE_5__* @con_by_window_id(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %14, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %6
  store i32 0, i32* %7, align 4
  br label %68

25:                                               ; preds = %19
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @A__MOTIF_WM_HINTS, align 4
  %33 = load i32, i32* @XCB_GET_PROPERTY_TYPE_ANY, align 4
  %34 = call i32 @xcb_get_property_unchecked(i32* %30, i32 0, i32 %31, i32 %32, i32 %33, i32 0, i32 20)
  %35 = call i32* @xcb_get_property_reply(i32* %29, i32 %34, i32* null)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %68

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @window_update_motif_hints(i32* %43, i32* %44, i64* %15)
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @BS_NORMAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %56, i64 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @con_set_border_style(%struct.TYPE_5__* %59, i64 %60, i32 %63)
  %65 = load i32, i32* @croot, align 4
  %66 = call i32 @x_push_changes(i32 %65)
  br label %67

67:                                               ; preds = %55, %51, %40
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %38, %24
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @con_by_window_id(i32) #1

declare dso_local i32* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property_unchecked(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @window_update_motif_hints(i32*, i32*, i64*) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @con_set_border_style(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @x_push_changes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
