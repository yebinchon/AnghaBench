; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_hl.c_HL_CopyLump.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_hl.c_HL_CopyLump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@hl_header = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"LoadBSPFile: odd lump size\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WARNING: exceeded max size for lump %d size %d > maxsize %d\0A\00", align 1
@hl_fileLength = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: exceeded file length for lump %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HL_CopyLump(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hl_header, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hl_header, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = call i32 @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sdiv i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %40, %34
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @hl_fileLength, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @hl_fileLength, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %78

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hl_header, align 8
  %69 = bitcast %struct.TYPE_4__* %68 to i32*
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @memcpy(i8* %67, i32* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %66, %64
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
