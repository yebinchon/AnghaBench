; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_IncDrawVerts.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_IncDrawVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numDrawVerts = common dso_local global i32 0, align 4
@drawVerts = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_VERTS = common dso_local global i32 0, align 4
@numDrawVertsBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IncDrawVerts\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"realloc() failed (IncDrawVerts)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IncDrawVerts() #0 {
  %1 = load i32, i32* @numDrawVerts, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @numDrawVerts, align 4
  %3 = load i64, i64* @drawVerts, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  %7 = sdiv i32 %6, 37
  store i32 %7, i32* @numDrawVertsBuffer, align 4
  %8 = load i32, i32* @numDrawVertsBuffer, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i64 @safe_malloc_info(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* @drawVerts, align 8
  br label %40

13:                                               ; preds = %0
  %14 = load i32, i32* @numDrawVerts, align 4
  %15 = load i32, i32* @numDrawVertsBuffer, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* @numDrawVertsBuffer, align 4
  %19 = mul nsw i32 %18, 3
  store i32 %19, i32* @numDrawVertsBuffer, align 4
  %20 = load i32, i32* @numDrawVertsBuffer, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* @numDrawVertsBuffer, align 4
  %22 = load i32, i32* @numDrawVertsBuffer, align 4
  %23 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  store i32 %26, i32* @numDrawVertsBuffer, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i64, i64* @drawVerts, align 8
  %29 = load i32, i32* @numDrawVertsBuffer, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @realloc(i64 %28, i32 %32)
  store i64 %33, i64* @drawVerts, align 8
  %34 = load i64, i64* @drawVerts, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  br label %39

39:                                               ; preds = %38, %13
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i64, i64* @drawVerts, align 8
  %42 = load i32, i32* @numDrawVerts, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @memset(i64 %45, i32 0, i32 4)
  ret void
}

declare dso_local i64 @safe_malloc_info(i32, i8*) #1

declare dso_local i64 @realloc(i64, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
