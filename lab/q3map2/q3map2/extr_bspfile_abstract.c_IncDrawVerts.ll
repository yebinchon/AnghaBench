; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_IncDrawVerts.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_IncDrawVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numBSPDrawVerts = common dso_local global i32 0, align 4
@bspDrawVerts = common dso_local global i32* null, align 8
@MAX_MAP_DRAW_VERTS = common dso_local global i32 0, align 4
@numBSPDrawVertsBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IncDrawVerts\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"realloc() failed (IncDrawVerts)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IncDrawVerts() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @numBSPDrawVerts, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @numBSPDrawVerts, align 4
  %4 = load i32*, i32** @bspDrawVerts, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  %8 = sdiv i32 %7, 37
  store i32 %8, i32* @numBSPDrawVertsBuffer, align 4
  %9 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32* @safe_malloc_info(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** @bspDrawVerts, align 8
  br label %44

14:                                               ; preds = %0
  %15 = load i32, i32* @numBSPDrawVerts, align 4
  %16 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %20 = mul nsw i32 %19, 3
  store i32 %20, i32* @numBSPDrawVertsBuffer, align 4
  %21 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* @numBSPDrawVertsBuffer, align 4
  %23 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %24 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @MAX_MAP_DRAW_VERTS, align 4
  store i32 %27, i32* @numBSPDrawVertsBuffer, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32*, i32** @bspDrawVerts, align 8
  %30 = load i32, i32* @numBSPDrawVertsBuffer, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @realloc(i32* %29, i32 %33)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** @bspDrawVerts, align 8
  %39 = call i32 @free(i32* %38)
  %40 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32*, i32** %1, align 8
  store i32* %42, i32** @bspDrawVerts, align 8
  br label %43

43:                                               ; preds = %41, %14
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32*, i32** @bspDrawVerts, align 8
  %46 = load i32, i32* @numBSPDrawVerts, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = call i32 @memset(i32* %49, i32 0, i32 4)
  ret void
}

declare dso_local i32* @safe_malloc_info(i32, i8*) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
