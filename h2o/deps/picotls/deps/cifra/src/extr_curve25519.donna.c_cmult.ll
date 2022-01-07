; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_cmult.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_cmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @cmult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmult(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [19 x i32], align 16
  %10 = alloca [19 x i32], align 16
  %11 = alloca [19 x i32], align 16
  %12 = alloca [19 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [19 x i32], align 16
  %19 = alloca [19 x i32], align 16
  %20 = alloca [19 x i32], align 16
  %21 = alloca [19 x i32], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %30 = bitcast [19 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 76, i1 false)
  %31 = bitcast [19 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 76, i1 false)
  %32 = bitcast i8* %31 to <{ i32, [18 x i32] }>*
  %33 = getelementptr inbounds <{ i32, [18 x i32] }>, <{ i32, [18 x i32] }>* %32, i32 0, i32 0
  store i32 1, i32* %33, align 16
  %34 = bitcast [19 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 76, i1 false)
  %35 = bitcast i8* %34 to <{ i32, [18 x i32] }>*
  %36 = getelementptr inbounds <{ i32, [18 x i32] }>, <{ i32, [18 x i32] }>* %35, i32 0, i32 0
  store i32 1, i32* %36, align 16
  %37 = bitcast [19 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 76, i1 false)
  %38 = getelementptr inbounds [19 x i32], [19 x i32]* %9, i64 0, i64 0
  store i32* %38, i32** %13, align 8
  %39 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  store i32* %39, i32** %14, align 8
  %40 = getelementptr inbounds [19 x i32], [19 x i32]* %11, i64 0, i64 0
  store i32* %40, i32** %15, align 8
  %41 = getelementptr inbounds [19 x i32], [19 x i32]* %12, i64 0, i64 0
  store i32* %41, i32** %16, align 8
  %42 = bitcast [19 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 76, i1 false)
  %43 = bitcast [19 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 76, i1 false)
  %44 = bitcast i8* %43 to <{ i32, [18 x i32] }>*
  %45 = getelementptr inbounds <{ i32, [18 x i32] }>, <{ i32, [18 x i32] }>* %44, i32 0, i32 0
  store i32 1, i32* %45, align 16
  %46 = bitcast [19 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 76, i1 false)
  %47 = bitcast [19 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 76, i1 false)
  %48 = bitcast i8* %47 to <{ i32, [18 x i32] }>*
  %49 = getelementptr inbounds <{ i32, [18 x i32] }>, <{ i32, [18 x i32] }>* %48, i32 0, i32 0
  store i32 1, i32* %49, align 16
  %50 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 0
  store i32* %50, i32** %22, align 8
  %51 = getelementptr inbounds [19 x i32], [19 x i32]* %19, i64 0, i64 0
  store i32* %51, i32** %23, align 8
  %52 = getelementptr inbounds [19 x i32], [19 x i32]* %20, i64 0, i64 0
  store i32* %52, i32** %24, align 8
  %53 = getelementptr inbounds [19 x i32], [19 x i32]* %21, i64 0, i64 0
  store i32* %53, i32** %25, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @memcpy(i32* %54, i32* %55, i32 40)
  store i32 0, i32* %26, align 4
  br label %57

57:                                               ; preds = %117, %4
  %58 = load i32, i32* %26, align 4
  %59 = icmp ult i32 %58, 32
  br i1 %59, label %60, label %120

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %26, align 4
  %63 = sub i32 31, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %67

67:                                               ; preds = %113, %60
  %68 = load i32, i32* %27, align 4
  %69 = icmp ult i32 %68, 8
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load i32, i32* %28, align 4
  %72 = ashr i32 %71, 7
  store i32 %72, i32* %29, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %29, align 4
  %76 = call i32 @swap_conditional(i32* %73, i32* %74, i32 %75)
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %29, align 4
  %80 = call i32 @swap_conditional(i32* %77, i32* %78, i32 %79)
  %81 = load i32*, i32** %24, align 8
  %82 = load i32*, i32** %25, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @fmonty(i32* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = load i32*, i32** %24, align 8
  %92 = load i32*, i32** %22, align 8
  %93 = load i32, i32* %29, align 4
  %94 = call i32 @swap_conditional(i32* %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %25, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* %29, align 4
  %98 = call i32 @swap_conditional(i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %15, align 8
  store i32* %99, i32** %17, align 8
  %100 = load i32*, i32** %24, align 8
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %17, align 8
  store i32* %101, i32** %24, align 8
  %102 = load i32*, i32** %16, align 8
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %25, align 8
  store i32* %103, i32** %16, align 8
  %104 = load i32*, i32** %17, align 8
  store i32* %104, i32** %25, align 8
  %105 = load i32*, i32** %13, align 8
  store i32* %105, i32** %17, align 8
  %106 = load i32*, i32** %22, align 8
  store i32* %106, i32** %13, align 8
  %107 = load i32*, i32** %17, align 8
  store i32* %107, i32** %22, align 8
  %108 = load i32*, i32** %14, align 8
  store i32* %108, i32** %17, align 8
  %109 = load i32*, i32** %23, align 8
  store i32* %109, i32** %14, align 8
  %110 = load i32*, i32** %17, align 8
  store i32* %110, i32** %23, align 8
  %111 = load i32, i32* %28, align 4
  %112 = shl i32 %111, 1
  store i32 %112, i32* %28, align 4
  br label %113

113:                                              ; preds = %70
  %114 = load i32, i32* %27, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %27, align 4
  br label %67

116:                                              ; preds = %67
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %26, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %26, align 4
  br label %57

120:                                              ; preds = %57
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @memcpy(i32* %121, i32* %122, i32 40)
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @memcpy(i32* %124, i32* %125, i32 40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @swap_conditional(i32*, i32*, i32) #2

declare dso_local i32 @fmonty(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
