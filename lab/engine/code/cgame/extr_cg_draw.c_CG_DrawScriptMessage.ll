; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawScriptMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawScriptMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

@__const.CG_DrawScriptMessage.rgba = private unnamed_addr constant %struct.TYPE_4__ { float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global i64 0, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawScriptMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawScriptMessage() #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_4__* @__const.CG_DrawScriptMessage.rgba to i8*), i64 16, i1 false)
  %10 = load i32, i32* @SCREEN_WIDTH, align 4
  %11 = load i32, i32* @SCREEN_HEIGHT, align 4
  %12 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %13 = add nsw i64 %12, 4
  %14 = call i32 @dmlab_make_screen_messages(i32 %10, i32 %11, i64 %13, i32 80)
  store i32 %14, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %64, %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %22 = bitcast %struct.TYPE_4__* %8 to { <2 x float>, <2 x float> }*
  %23 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %22, i32 0, i32 0
  %24 = load <2 x float>, <2 x float>* %23, align 4
  %25 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %22, i32 0, i32 1
  %26 = load <2 x float>, <2 x float>* %25, align 4
  %27 = call i32 @dmlab_get_screen_message(i32 %20, i8* %21, i32* %4, i32* %5, i32* %6, i32* %7, <2 x float> %24, <2 x float> %26)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %40 [
    i32 0, label %31
    i32 1, label %32
    i32 2, label %39
  ]

31:                                               ; preds = %19
  br label %48

32:                                               ; preds = %19
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %34 = call i32 @CG_DrawStrlen(i8* %33)
  %35 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %19, %39
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %42 = call i32 @CG_DrawStrlen(i8* %41)
  %43 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 2
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %32, %31
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %52 = load i32, i32* @qfalse, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %57 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %58 = bitcast %struct.TYPE_4__* %8 to { <2 x float>, <2 x float> }*
  %59 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %58, i32 0, i32 0
  %60 = load <2 x float>, <2 x float>* %59, align 4
  %61 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %58, i32 0, i32 1
  %62 = load <2 x float>, <2 x float>* %61, align 4
  %63 = call i32 @CG_DrawStringExt(i32 %49, i32 %50, i8* %51, <2 x float> %60, <2 x float> %62, i32 %52, i32 %55, i32 %56, i64 %57, i32 0)
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %15

67:                                               ; preds = %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dmlab_make_screen_messages(i32, i32, i64, i32) #2

declare dso_local i32 @dmlab_get_screen_message(i32, i8*, i32*, i32*, i32*, i32*, <2 x float>, <2 x float>) #2

declare dso_local i32 @CG_DrawStrlen(i8*) #2

declare dso_local i32 @CG_DrawStringExt(i32, i32, i8*, <2 x float>, <2 x float>, i32, i32, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
