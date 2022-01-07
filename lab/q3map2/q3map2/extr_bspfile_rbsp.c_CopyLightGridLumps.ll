; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_rbsp.c_CopyLightGridLumps.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_rbsp.c_CopyLightGridLumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUMP_LIGHTARRAY = common dso_local global i32 0, align 4
@numBSPGridPoints = common dso_local global i32 0, align 4
@bspGridPoints = common dso_local global i32* null, align 8
@LUMP_LIGHTGRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @CopyLightGridLumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyLightGridLumps(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @LUMP_LIGHTARRAY, align 4
  %9 = call i32 @GetLumpElements(i32* %7, i32 %8, i32 2)
  store i32 %9, i32* @numBSPGridPoints, align 4
  %10 = load i32, i32* @numBSPGridPoints, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32* @safe_malloc(i32 %13)
  store i32* %14, i32** @bspGridPoints, align 8
  %15 = load i32*, i32** @bspGridPoints, align 8
  %16 = load i32, i32* @numBSPGridPoints, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %15, i32 0, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @LUMP_LIGHTARRAY, align 4
  %23 = call i8* @GetLump(i32* %21, i32 %22)
  %24 = bitcast i8* %23 to i16*
  store i16* %24, i16** %4, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @LUMP_LIGHTGRID, align 4
  %27 = call i8* @GetLump(i32* %25, i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** @bspGridPoints, align 8
  store i32* %29, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @numBSPGridPoints, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i16*, i16** %4, align 8
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = call i32 @memcpy(i32* %35, i32* %40, i32 4)
  %42 = load i16*, i16** %4, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %30

49:                                               ; preds = %30
  ret void
}

declare dso_local i32 @GetLumpElements(i32*, i32, i32) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @GetLump(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
