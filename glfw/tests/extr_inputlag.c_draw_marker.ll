; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_draw_marker.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_inputlag.c_draw_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_command_buffer = type { i32 }
%struct.nk_vec2 = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.nk_rect = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_marker(%struct.nk_command_buffer* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nk_vec2, align 4
  %5 = alloca %struct.nk_command_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.nk_color], align 16
  %8 = alloca %struct.nk_rect, align 4
  %9 = bitcast %struct.nk_vec2* %4 to i64*
  store i64 %2, i64* %9, align 4
  store %struct.nk_command_buffer* %0, %struct.nk_command_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = getelementptr inbounds [4 x %struct.nk_color], [4 x %struct.nk_color]* %7, i64 0, i64 0
  %11 = call i32 @nk_rgb(i32 255, i32 0, i32 0)
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i64 1
  %14 = call i32 @nk_rgb(i32 255, i32 255, i32 0)
  %15 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i64 1
  %17 = call i32 @nk_rgb(i32 0, i32 255, i32 0)
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %16, i64 1
  %20 = call i32 @nk_rgb(i32 0, i32 96, i32 255)
  %21 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 -5, %24
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %8, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nk_vec2, %struct.nk_vec2* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 -5, %28
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %8, i32 0, i32 2
  store i32 10, i32* %30, align 4
  %31 = getelementptr inbounds %struct.nk_rect, %struct.nk_rect* %8, i32 0, i32 3
  store i32 10, i32* %31, align 4
  %32 = load %struct.nk_command_buffer*, %struct.nk_command_buffer** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.nk_color], [4 x %struct.nk_color]* %7, i64 0, i64 %34
  %36 = bitcast %struct.nk_rect* %8 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %35, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nk_fill_circle(%struct.nk_command_buffer* %32, i64 %38, i64 %40, i32 %42)
  ret void
}

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @nk_fill_circle(%struct.nk_command_buffer*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
