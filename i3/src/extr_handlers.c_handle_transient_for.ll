; ModuleID = '/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_transient_for.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_handlers.c_handle_transient_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"No such window\0A\00", align 1
@XCB_ATOM_WM_TRANSIENT_FOR = common dso_local global i32 0, align 4
@XCB_ATOM_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32, i32, i32*)* @handle_transient_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_transient_for(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.TYPE_3__* @con_by_window_id(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %14, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %6
  %24 = call i32 @DLOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @XCB_ATOM_WM_TRANSIENT_FOR, align 4
  %33 = load i32, i32* @XCB_ATOM_WINDOW, align 4
  %34 = call i32 @xcb_get_property_unchecked(i32* %30, i32 0, i32 %31, i32 %32, i32 %33, i32 0, i32 32)
  %35 = call i32* @xcb_get_property_reply(i32* %29, i32 %34, i32* null)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %46

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @window_update_transient_for(i32* %43, i32* %44)
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %38, %23
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_3__* @con_by_window_id(i32) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property_unchecked(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @window_update_transient_for(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
