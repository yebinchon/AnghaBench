; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_getk.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_getk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CMD_GETKQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_GETK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_getk(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %5
  %21 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %21, i32* %6, align 4
  br label %48

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @yrmcds_text_get(%struct.TYPE_5__* %28, i8* %29, i64 %30, i32 %31, i32* %32)
  store i32 %33, i32* %6, align 4
  br label %48

34:                                               ; preds = %22
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @YRMCDS_CMD_GETKQ, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @YRMCDS_CMD_GETK, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @send_command(%struct.TYPE_5__* %35, i32 %43, i32 0, i32* %44, i64 %45, i8* %46, i32 0, i32* null, i32 0, i32* null)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %42, %27, %20
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @yrmcds_text_get(%struct.TYPE_5__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @send_command(%struct.TYPE_5__*, i32, i32, i32*, i64, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
