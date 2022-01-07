; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_FindMetaVertex.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_FindMetaVertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstSearchMetaVert = common dso_local global i32 0, align 4
@metaVerts = common dso_local global i32* null, align 8
@numMetaVerts = common dso_local global i32 0, align 4
@maxMetaVerts = common dso_local global i32 0, align 4
@GROW_META_VERTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @FindMetaVertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindMetaVertex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @firstSearchMetaVert, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** @metaVerts, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @numMetaVerts, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @memcmp(i32* %17, i32* %18, i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* @numMetaVerts, align 4
  %31 = load i32, i32* @maxMetaVerts, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i64, i64* @GROW_META_VERTS, align 8
  %35 = load i32, i32* @maxMetaVerts, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @maxMetaVerts, align 4
  %39 = load i32, i32* @maxMetaVerts, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @safe_malloc(i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** @metaVerts, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** @metaVerts, align 8
  %49 = load i32, i32* @numMetaVerts, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32* %47, i32* %48, i32 %52)
  %54 = load i32*, i32** @metaVerts, align 8
  %55 = call i32 @free(i32* %54)
  br label %56

56:                                               ; preds = %46, %33
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** @metaVerts, align 8
  br label %58

58:                                               ; preds = %56, %29
  %59 = load i32*, i32** @metaVerts, align 8
  %60 = load i32, i32* @numMetaVerts, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @memcpy(i32* %62, i32* %63, i32 4)
  %65 = load i32, i32* @numMetaVerts, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @numMetaVerts, align 4
  %67 = load i32, i32* @numMetaVerts, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %58, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
