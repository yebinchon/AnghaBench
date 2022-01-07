; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_mode.c_mode_end_map_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_mode.c_mode_end_map_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_json_params = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Got mode change: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mode_end_map_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_end_map_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mode_json_params*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mode_json_params*
  store %struct.mode_json_params* %5, %struct.mode_json_params** %3, align 8
  %6 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %7 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @i3string_from_utf8(i32 %8)
  %10 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %11 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %15 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %20 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @i3string_set_markup(i32 %18, i32 %21)
  %23 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %24 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @predict_text_width(i32 %27)
  %29 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %30 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %34 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i3string_as_utf8(i32 %37)
  %39 = call i32 @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.mode_json_params*, %struct.mode_json_params** %3, align 8
  %41 = getelementptr inbounds %struct.mode_json_params, %struct.mode_json_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @FREE(i32 %42)
  ret i32 1
}

declare dso_local i32 @i3string_from_utf8(i32) #1

declare dso_local i32 @i3string_set_markup(i32, i32) #1

declare dso_local i32 @predict_text_width(i32) #1

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @i3string_as_utf8(i32) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
