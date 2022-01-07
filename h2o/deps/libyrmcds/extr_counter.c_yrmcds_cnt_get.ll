; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_get.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT16_MAX = common dso_local global i64 0, align 8
@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CNT_CMD_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_cnt_get(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @UINT16_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13, %4
  %21 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %26 = call i32 @hton16(i32 %24, i8* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @YRMCDS_CNT_CMD_GET, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @send_command(i32* %27, i32 %28, i32* %29, i32 2, i8* %30, i64 %31, i8* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @hton16(i32, i8*) #1

declare dso_local i32 @send_command(i32*, i32, i32*, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
