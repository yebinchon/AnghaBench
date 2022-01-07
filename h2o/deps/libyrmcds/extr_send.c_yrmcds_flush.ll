; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_flush.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CMD_FLUSHQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_flush(%struct.TYPE_5__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca [4 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %14, i32* %5, align 4
  br label %57

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @yrmcds_text_flush(%struct.TYPE_5__* %21, i64 %22, i32 %23, i64* %24)
  store i32 %25, i32* %5, align 4
  br label %57

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @YRMCDS_CMD_FLUSHQ, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @YRMCDS_CMD_FLUSH, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i64*, i64** %9, align 8
  %40 = call i32 @send_command(%struct.TYPE_5__* %30, i32 %38, i32 0, i64* %39, i32 0, i32* null, i32 0, i8* null, i32 0, i32* null)
  store i32 %40, i32* %5, align 4
  br label %57

41:                                               ; preds = %26
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %44 = call i32 @hton32(i64 %42, i8* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @YRMCDS_CMD_FLUSHQ, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @YRMCDS_CMD_FLUSH, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %56 = call i32 @send_command(%struct.TYPE_5__* %45, i32 %53, i32 0, i64* %54, i32 0, i32* null, i32 4, i8* %55, i32 0, i32* null)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %37, %20, %13
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @yrmcds_text_flush(%struct.TYPE_5__*, i64, i32, i64*) #1

declare dso_local i32 @send_command(%struct.TYPE_5__*, i32, i32, i64*, i32, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @hton32(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
