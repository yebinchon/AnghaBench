; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_scroll_to_last_line.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_scroll_to_last_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }

@gscroll = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@dash = common dso_local global %struct.TYPE_8__* null, align 8
@main_win_height = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scroll_to_last_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scroll_to_last_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @get_num_expanded_data_rows()
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 3), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dash, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @main_win_height, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 2), align 8
  br label %55

13:                                               ; preds = %0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dash, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %1, align 4
  %40 = sub nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi i32 [ 0, %36 ], [ %41, %37 ]
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %25, %13
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 1), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 1), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gscroll, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %7
  ret void
}

declare dso_local i32 @get_num_expanded_data_rows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
