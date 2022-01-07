; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_prepend.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CMD_PREPENDQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_PREPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_prepend(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24, %21, %18, %7
  %31 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %31, i32* %8, align 4
  br label %62

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @yrmcds_text_prepend(%struct.TYPE_5__* %38, i8* %39, i64 %40, i8* %41, i64 %42, i32 %43, i32* %44)
  store i32 %45, i32* %8, align 4
  br label %62

46:                                               ; preds = %32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @YRMCDS_CMD_PREPENDQ, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @YRMCDS_CMD_PREPEND, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32*, i32** %15, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @send_command(%struct.TYPE_5__* %47, i32 %55, i32 0, i32* %56, i64 %57, i8* %58, i32 0, i32* null, i64 %59, i8* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %54, %37, %30
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @yrmcds_text_prepend(%struct.TYPE_5__*, i8*, i64, i8*, i64, i32, i32*) #1

declare dso_local i32 @send_command(%struct.TYPE_5__*, i32, i32, i32*, i64, i8*, i32, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
