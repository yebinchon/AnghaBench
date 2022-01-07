; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_draw_separator.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_draw_separator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.status_block = type { i64 }

@colors = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@blocks = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sep_voff_px = common dso_local global i32 0, align 4
@bar_height = common dso_local global i32 0, align 4
@separator_symbol_width = common dso_local global i32 0, align 4
@font = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, %struct.status_block*, i32)* @draw_separator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_separator(%struct.TYPE_6__* %0, i64 %1, %struct.status_block* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.status_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.status_block* %2, %struct.status_block** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @colors, i32 0, i32 3), align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @colors, i32 0, i32 2), align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @colors, i32 0, i32 1), align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @colors, i32 0, i32 0), align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  %30 = load %struct.status_block*, %struct.status_block** %7, align 8
  %31 = call i64 @get_sep_offset(%struct.status_block* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.status_block*, %struct.status_block** %7, align 8
  %33 = load i32, i32* @blocks, align 4
  %34 = call i32* @TAILQ_NEXT(%struct.status_block* %32, i32 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %28
  br label %87

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %12, align 8
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @sep_voff_px, align 4
  %52 = call i32 @logical_px(i32 %51)
  %53 = call i32 @logical_px(i32 1)
  %54 = load i32, i32* @bar_height, align 4
  %55 = load i32, i32* @sep_voff_px, align 4
  %56 = call i32 @logical_px(i32 %55)
  %57 = mul nsw i32 2, %56
  %58 = sub nsw i32 %54, %57
  %59 = call i32 @draw_util_rectangle(i32* %48, i32 %49, i64 %50, i32 %52, i32 %53, i32 %58)
  br label %87

60:                                               ; preds = %40
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.status_block*, %struct.status_block** %7, align 8
  %63 = getelementptr inbounds %struct.status_block, %struct.status_block* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* @separator_symbol_width, align 4
  %68 = sdiv i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %66, %69
  %71 = call i64 @MAX(i64 %65, i64 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %13, align 8
  %78 = load i32, i32* @bar_height, align 4
  %79 = sdiv i32 %78, 2
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @font, i32 0, i32 0), align 4
  %81 = sdiv i32 %80, 2
  %82 = sub nsw i32 %79, %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @draw_util_text(i32* %72, i32* %74, i32 %75, i32 %76, i64 %77, i32 %82, i64 %85)
  br label %87

87:                                               ; preds = %39, %60, %46
  ret void
}

declare dso_local i64 @get_sep_offset(%struct.status_block*) #1

declare dso_local i32* @TAILQ_NEXT(%struct.status_block*, i32) #1

declare dso_local i32 @draw_util_rectangle(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @logical_px(i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @draw_util_text(i32*, i32*, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
