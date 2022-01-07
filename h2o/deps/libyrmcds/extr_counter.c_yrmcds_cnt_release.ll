; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_release.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT16_MAX = common dso_local global i64 0, align 8
@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CNT_CMD_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_cnt_release(i32* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [6 x i8], align 1
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @UINT16_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %15, %5
  %23 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %23, i32* %6, align 4
  br label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %27 = call i32 @hton32(i32 %25, i8* %26)
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = call i32 @hton16(i32 %29, i8* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @YRMCDS_CNT_CMD_RELEASE, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @send_command(i32* %33, i32 %34, i32* %35, i32 6, i8* %36, i64 %37, i8* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %24, %22
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @hton32(i32, i8*) #1

declare dso_local i32 @hton16(i32, i8*) #1

declare dso_local i32 @send_command(i32*, i32, i32*, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
