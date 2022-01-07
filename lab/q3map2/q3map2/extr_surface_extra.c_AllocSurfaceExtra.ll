; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_AllocSurfaceExtra.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_AllocSurfaceExtra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numSurfaceExtras = common dso_local global i32 0, align 4
@maxSurfaceExtras = common dso_local global i32 0, align 4
@GROW_SURFACE_EXTRAS = common dso_local global i64 0, align 8
@surfaceExtras = common dso_local global i32* null, align 8
@seDefault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @AllocSurfaceExtra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AllocSurfaceExtra() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @numSurfaceExtras, align 4
  %3 = load i32, i32* @maxSurfaceExtras, align 4
  %4 = icmp sge i32 %2, %3
  br i1 %4, label %5, label %30

5:                                                ; preds = %0
  %6 = load i64, i64* @GROW_SURFACE_EXTRAS, align 8
  %7 = load i32, i32* @maxSurfaceExtras, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @maxSurfaceExtras, align 4
  %11 = load i32, i32* @maxSurfaceExtras, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32* @safe_malloc(i32 %14)
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** @surfaceExtras, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** @surfaceExtras, align 8
  %21 = load i32, i32* @numSurfaceExtras, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memcpy(i32* %19, i32* %20, i32 %24)
  %26 = load i32*, i32** @surfaceExtras, align 8
  %27 = call i32 @free(i32* %26)
  br label %28

28:                                               ; preds = %18, %5
  %29 = load i32*, i32** %1, align 8
  store i32* %29, i32** @surfaceExtras, align 8
  br label %30

30:                                               ; preds = %28, %0
  %31 = load i32*, i32** @surfaceExtras, align 8
  %32 = load i32, i32* @numSurfaceExtras, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %1, align 8
  %35 = load i32, i32* @numSurfaceExtras, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @numSurfaceExtras, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @memcpy(i32* %37, i32* @seDefault, i32 4)
  %39 = load i32*, i32** %1, align 8
  ret i32* %39
}

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
