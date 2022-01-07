; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_CompressMonoBlock.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_CompressMonoBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CompressMonoBlock.fixIndex = private unnamed_addr constant [8 x i32] [i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @CompressMonoBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CompressMonoBlock(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %3, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store i32 %18, i32* %5, align 4
  store i32 1, i32* %11, align 4
  br label %19

19:                                               ; preds = %37, %2
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MAX(i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @MIN(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 255
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 255, i32 0
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %64, %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %57

67:                                               ; preds = %57
  br label %114

68:                                               ; preds = %40
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %69, 2
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 7
  %73 = sub nsw i32 %70, %72
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %111, %68
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = bitcast [8 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([8 x i32]* @__const.CompressMonoBlock.fixIndex to i8*), i64 32, i1 false)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 7
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 3
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sge i32 %99, 8
  br i1 %100, label %101, label %110

101:                                              ; preds = %77
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 255
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %12, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, 8
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %101, %77
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %74

114:                                              ; preds = %67, %74
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
