; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_TakeScreenshot.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_TakeScreenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i8**)*, i32 (i8*, i8**, i64)* }

@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_TakeScreenshot(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i64 18, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i8** @RB_ReadPixels(i32 %22, i32 %23, i32 %24, i32 %25, i64* %20, i32* %19)
  store i8** %26, i8*** %11, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = load i64, i64* %20, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = getelementptr inbounds i8*, i8** %29, i64 -18
  store i8** %30, i8*** %12, align 8
  %31 = load i8**, i8*** %12, align 8
  %32 = call i32 @Com_Memset(i8** %31, i32 0, i32 18)
  %33 = load i8**, i8*** %12, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* inttoptr (i64 2 to i8*), i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8**, i8*** %12, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 12
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8**, i8*** %12, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 13
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %12, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 14
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %12, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 15
  store i8* %56, i8** %58, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 16
  store i8* inttoptr (i64 24 to i8*), i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 3
  store i32 %62, i32* %18, align 4
  %63 = load i8**, i8*** %11, align 8
  %64 = load i64, i64* %20, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8** %65, i8*** %14, align 8
  store i8** %65, i8*** %13, align 8
  %66 = load i8**, i8*** %13, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %66, i64 %72
  store i8** %73, i8*** %16, align 8
  br label %74

74:                                               ; preds = %106, %5
  %75 = load i8**, i8*** %13, align 8
  %76 = load i8**, i8*** %16, align 8
  %77 = icmp ult i8** %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load i8**, i8*** %13, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8** %82, i8*** %15, align 8
  br label %83

83:                                               ; preds = %87, %78
  %84 = load i8**, i8*** %13, align 8
  %85 = load i8**, i8*** %15, align 8
  %86 = icmp ult i8** %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i8**, i8*** %13, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %17, align 8
  %91 = load i8**, i8*** %13, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %14, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %14, align 8
  store i8* %93, i8** %94, align 8
  %96 = load i8**, i8*** %13, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %14, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %14, align 8
  store i8* %98, i8** %99, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load i8**, i8*** %14, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %103, i8*** %14, align 8
  store i8* %101, i8** %102, align 8
  %104 = load i8**, i8*** %13, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  store i8** %105, i8*** %13, align 8
  br label %83

106:                                              ; preds = %83
  %107 = load i32, i32* %19, align 4
  %108 = load i8**, i8*** %13, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8** %110, i8*** %13, align 8
  br label %74

111:                                              ; preds = %74
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %21, align 8
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i8**, i8*** %11, align 8
  %120 = load i64, i64* %20, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i64, i64* %21, align 8
  %123 = call i32 @R_GammaCorrect(i8** %121, i64 %122)
  br label %124

124:                                              ; preds = %118, %111
  %125 = load i32 (i8*, i8**, i64)*, i32 (i8*, i8**, i64)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 1), align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i8**, i8*** %12, align 8
  %128 = load i64, i64* %21, align 8
  %129 = add i64 %128, 18
  %130 = call i32 %125(i8* %126, i8** %127, i64 %129)
  %131 = load i32 (i8**)*, i32 (i8**)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = call i32 %131(i8** %132)
  ret void
}

declare dso_local i8** @RB_ReadPixels(i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @Com_Memset(i8**, i32, i32) #1

declare dso_local i32 @R_GammaCorrect(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
