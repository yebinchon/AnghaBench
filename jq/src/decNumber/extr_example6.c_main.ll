; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_example6.c_main.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_example6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }

@__const.main.startpack = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 12], align 16
@__const.main.ratepack = private unnamed_addr constant [2 x i32] [i32 6, i32 92], align 4
@__const.main.yearspack = private unnamed_addr constant [2 x i32] [i32 2, i32 12], align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DEC_INIT_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Result: %s (scale=%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca [49 x i8], align 16
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i32]* @__const.main.startpack to i8*), i64 16, i1 false)
  store i32 0, i32* %15, align 4
  %25 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast ([2 x i32]* @__const.main.ratepack to i8*), i64 8, i1 false)
  store i32 1, i32* %17, align 4
  %26 = bitcast [2 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast ([2 x i32]* @__const.main.yearspack to i8*), i64 8, i1 false)
  store i32 0, i32* %19, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @DEC_INIT_BASE, align 4
  %36 = call i32 @decContextDefault(%struct.TYPE_9__* %13, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 25, i32* %38, align 8
  %39 = call i32 @decNumberFromString(i32* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %13)
  %40 = call i32 @decNumberFromString(i32* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %13)
  %41 = call i32 @decNumberFromString(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %13)
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %43 = call i32 @decPackedToNumber(i32* %42, i32 16, i32* %15, i32* %9)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %45 = call i32 @decPackedToNumber(i32* %44, i32 8, i32* %17, i32* %10)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %47 = call i32 @decPackedToNumber(i32* %46, i32 8, i32* %19, i32* %11)
  %48 = call i32 @decNumberDivide(i32* %10, i32* %10, i32* %8, %struct.TYPE_9__* %13)
  %49 = call i32 @decNumberAdd(i32* %10, i32* %10, i32* %6, %struct.TYPE_9__* %13)
  %50 = call i32 @decNumberPower(i32* %10, i32* %10, i32* %11, %struct.TYPE_9__* %13)
  %51 = call i32 @decNumberMultiply(i32* %12, i32* %10, i32* %9, %struct.TYPE_9__* %13)
  %52 = call i32 @decNumberRescale(i32* %12, i32* %12, i32* %7, %struct.TYPE_9__* %13)
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %54 = call i32 @decPackedFromNumber(i32* %53, i32 64, i32* %21, i32* %12)
  store i32 0, i32* %23, align 4
  br label %55

55:                                               ; preds = %68, %34
  %56 = load i32, i32* %23, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %23, align 4
  %60 = mul nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [49 x i8], [49 x i8]* %22, i64 0, i64 %61
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %23, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %23, align 4
  br label %55

71:                                               ; preds = %55
  %72 = getelementptr inbounds [49 x i8], [49 x i8]* %22, i64 0, i64 0
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %72, i64 %74)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @decContextDefault(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @decNumberFromString(i32*, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @decPackedToNumber(i32*, i32, i32*, i32*) #2

declare dso_local i32 @decNumberDivide(i32*, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @decNumberAdd(i32*, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @decNumberPower(i32*, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @decNumberMultiply(i32*, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @decNumberRescale(i32*, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @decPackedFromNumber(i32*, i32, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
