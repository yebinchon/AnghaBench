; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_SetDrawSurfacesBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_SetDrawSurfacesBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drawSurfaces = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i32 0, align 4
@numDrawSurfacesBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"IncDrawSurfaces\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDrawSurfacesBuffer() #0 {
  %1 = load i64, i64* @drawSurfaces, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @drawSurfaces, align 8
  %5 = call i32 @free(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  store i32 %7, i32* @numDrawSurfacesBuffer, align 4
  %8 = load i32, i32* @numDrawSurfacesBuffer, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i64 @safe_malloc_info(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* @drawSurfaces, align 8
  %13 = load i64, i64* @drawSurfaces, align 8
  %14 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i64 %13, i32 0, i32 %17)
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @safe_malloc_info(i32, i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
