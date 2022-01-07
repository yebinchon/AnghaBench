; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c___glue_xts_req_128bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c___glue_xts_req_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i8*, i32*, i32*, i32)* }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.common_glue_ctx*, i8*, %struct.skcipher_walk*)* @__glue_xts_req_128bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__glue_xts_req_128bit(%struct.common_glue_ctx* %0, i8* %1, %struct.skcipher_walk* %2) #0 {
  %4 = alloca %struct.common_glue_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.skcipher_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.skcipher_walk* %2, %struct.skcipher_walk** %6, align 8
  store i32 16, i32* %7, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %86, %3
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %27
  %34 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = mul i32 16, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %76, %47
  %49 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32 (i8*, i32*, i32*, i32)*, i32 (i8*, i32*, i32*, i32)** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %62 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %57(i8* %58, i32* %59, i32* %60, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %48
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %48, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %81, 16
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %90

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %33
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %27

89:                                               ; preds = %27
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
