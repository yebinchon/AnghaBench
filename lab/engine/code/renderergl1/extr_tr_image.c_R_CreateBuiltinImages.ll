; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_CreateBuiltinImages.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_CreateBuiltinImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i8*, i8* }

@DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"*white\00", align 1
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@IMGFLAG_NONE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"*identityLight\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"*scratch\00", align 1
@IMGFLAG_PICMIP = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_CreateBuiltinImages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @DEFAULT_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @DEFAULT_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = mul nuw i64 %7, %9
  %12 = alloca [4 x i32], i64 %11, align 16
  store i64 %7, i64* %4, align 8
  store i64 %9, i64* %5, align 8
  %13 = call i32 (...) @R_CreateDefaultImage()
  %14 = bitcast [4 x i32]* %12 to i32***
  %15 = mul nuw i64 %7, %9
  %16 = mul nuw i64 16, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @Com_Memset(i32*** %14, i32 255, i32 %17)
  %19 = bitcast [4 x i32]* %12 to i32*
  %20 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %21 = load i32, i32* @IMGFLAG_NONE, align 4
  %22 = call i8* @R_CreateImage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %19, i32 8, i32 8, i32 %20, i32 %21, i32 0)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 3), align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %70, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @DEFAULT_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @DEFAULT_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %9
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %36
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 2
  store i32 %33, i32* %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, %9
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %44
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i64 0, i64 1
  store i32 %33, i32* %49, align 4
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, %9
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %52
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 %55
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 0
  store i32 %33, i32* %57, align 16
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %9
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 %60
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i64 0, i64 3
  store i32 255, i32* %65, align 4
  br label %66

66:                                               ; preds = %32
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %28

69:                                               ; preds = %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %23

73:                                               ; preds = %23
  %74 = bitcast [4 x i32]* %12 to i32*
  %75 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %76 = load i32, i32* @IMGFLAG_NONE, align 4
  %77 = call i8* @R_CreateImage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %74, i32 8, i32 8, i32 %75, i32 %76, i32 0)
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 2), align 8
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %94, %73
  %79 = load i32, i32* %1, align 4
  %80 = icmp slt i32 %79, 32
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = bitcast [4 x i32]* %12 to i32*
  %83 = load i32, i32* @DEFAULT_SIZE, align 4
  %84 = load i32, i32* @DEFAULT_SIZE, align 4
  %85 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %86 = load i32, i32* @IMGFLAG_PICMIP, align 4
  %87 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @R_CreateImage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %82, i32 %83, i32 %84, i32 %85, i32 %88, i32 0)
  %90 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 1), align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %89, i8** %93, align 8
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %78

97:                                               ; preds = %78
  %98 = call i32 (...) @R_CreateDlightImage()
  %99 = call i32 (...) @R_CreateFogImage()
  %100 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_CreateDefaultImage(...) #2

declare dso_local i32 @Com_Memset(i32***, i32, i32) #2

declare dso_local i8* @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @R_CreateDlightImage(...) #2

declare dso_local i32 @R_CreateFogImage(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
