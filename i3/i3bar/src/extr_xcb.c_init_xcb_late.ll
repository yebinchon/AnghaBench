; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_xcb_late.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_xcb_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"-misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1\00", align 1
@font = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Calculated font-height: %d\0A\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ws_voff_px = common dso_local global i32 0, align 4
@bar_height = common dso_local global i64 0, align 8
@icon_size = common dso_local global i64 0, align 8
@separator_symbol_width = common dso_local global i32 0, align 4
@xcb_connection = common dso_local global i32 0, align 4
@M_HIDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_xcb_late(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @load_font(i8* %8, i32 1)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @font to i8*), i8* align 8 %11, i64 8, i1 false)
  %12 = call i32 @set_font(%struct.TYPE_5__* @font)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @font, i32 0, i32 0), align 8
  %14 = call i32 @DLOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %7
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @font, i32 0, i32 0), align 8
  %19 = load i32, i32* @ws_voff_px, align 4
  %20 = call i32 @logical_px(i32 %19)
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  store i64 %23, i64* @bar_height, align 8
  br label %26

24:                                               ; preds = %7
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  store i64 %25, i64* @bar_height, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i64, i64* @bar_height, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 3), align 8
  %29 = call i32 @logical_px(i32 %28)
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %27, %31
  store i64 %32, i64* @icon_size, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 2), align 8
  %37 = call i32 @predict_text_width(i64 %36)
  store i32 %37, i32* @separator_symbol_width, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* @xcb_connection, align 4
  %40 = call i32 @xcb_flush(i32 %39)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %42 = load i64, i64* @M_HIDE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @register_xkb_keyevents()
  br label %46

46:                                               ; preds = %44, %38
  ret void
}

declare dso_local i64 @load_font(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_font(%struct.TYPE_5__*) #1

declare dso_local i32 @DLOG(i8*, i64) #1

declare dso_local i32 @logical_px(i32) #1

declare dso_local i32 @predict_text_width(i64) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @register_xkb_keyevents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
