; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_set_source_color.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_set_source_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64)* @draw_util_set_source_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_util_set_source_color(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = bitcast %struct.TYPE_7__* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i32 @RETURN_UNLESS_SURFACE_INITIALIZED(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cairo_set_source_rgba(i32 %13, i32 %15, i32 %17, i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @RETURN_UNLESS_SURFACE_INITIALIZED(%struct.TYPE_6__*) #1

declare dso_local i32 @cairo_set_source_rgba(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
