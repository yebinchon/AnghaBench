; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/image/lzma-loader/src/extr_LzmaDecode.c_LzmaDecodeProperties.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/image/lzma-loader/src/extr_LzmaDecode.c_LzmaDecodeProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i64, i64 }

@LZMA_PROPERTIES_SIZE = common dso_local global i32 0, align 4
@LZMA_RESULT_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDecodeProperties(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 225
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %31, %23
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 45
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %37, 45
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %8, align 1
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %48, %40
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 9
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i8, i8* %8, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 9
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %8, align 1
  br label %43

57:                                               ; preds = %43
  %58 = load i8, i8* %8, align 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8 %58, i8* %60, align 8
  %61 = load i32, i32* @LZMA_RESULT_OK, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %21, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
