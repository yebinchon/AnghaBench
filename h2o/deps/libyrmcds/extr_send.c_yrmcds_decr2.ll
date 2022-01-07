; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_decr2.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_decr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@YRMCDS_CMD_DECREMENTQ = common dso_local global i32 0, align 4
@YRMCDS_CMD_DECREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_decr2(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [20 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %8
  %28 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %28, i32* %9, align 4
  br label %60

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @YRMCDS_NOT_IMPLEMENTED, align 4
  store i32 %35, i32* %9, align 4
  br label %60

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %39 = call i32 @hton64(i32 %37, i8* %38)
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 8
  %42 = call i32 @hton64(i32 %40, i8* %41)
  %43 = load i32, i32* %15, align 4
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 16
  %45 = call i32 @hton32(i32 %43, i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @YRMCDS_CMD_DECREMENTQ, align 4
  br label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @YRMCDS_CMD_DECREMENT, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32*, i32** %17, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %59 = call i32 @send_command(%struct.TYPE_4__* %46, i32 %54, i32 0, i32* %55, i64 %56, i8* %57, i32 20, i8* %58, i32 0, i32* null)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %53, %34, %27
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @hton64(i32, i8*) #1

declare dso_local i32 @hton32(i32, i8*) #1

declare dso_local i32 @send_command(%struct.TYPE_4__*, i32, i32, i32*, i64, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
