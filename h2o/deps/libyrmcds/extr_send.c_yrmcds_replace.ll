; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_replace.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@YRMCDS_CMD_REPLACEQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_replace(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %10
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 @yrmcds_text_replace(%struct.TYPE_5__* %30, i8* %31, i64 %32, i8* %33, i64 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %11, align 4
  br label %60

41:                                               ; preds = %24, %10
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @YRMCDS_CMD_REPLACEQ, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @YRMCDS_CMD_REPLACE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i32*, i32** %21, align 8
  %59 = call i32 @send_data(%struct.TYPE_5__* %42, i32 %50, i8* %51, i64 %52, i8* %53, i64 %54, i32 %55, i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %49, %29
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @yrmcds_text_replace(%struct.TYPE_5__*, i8*, i64, i8*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @send_data(%struct.TYPE_5__*, i32, i8*, i64, i8*, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
