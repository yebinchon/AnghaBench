; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_acquire.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT16_MAX = common dso_local global i64 0, align 8
@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_CNT_CMD_ACQUIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_cnt_acquire(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca [10 x i8], align 1
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @UINT16_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24, %20, %17, %6
  %32 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %32, i32* %7, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %36 = call i32 @hton32(i64 %34, i8* %35)
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i32 @hton32(i64 %37, i8* %39)
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  %45 = call i32 @hton16(i32 %42, i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @YRMCDS_CNT_CMD_ACQUIRE, align 4
  %48 = load i64*, i64** %13, align 8
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @send_command(i32* %46, i32 %47, i64* %48, i32 10, i8* %49, i64 %50, i8* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %33, %31
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @hton32(i64, i8*) #1

declare dso_local i32 @hton16(i32, i8*) #1

declare dso_local i32 @send_command(i32*, i32, i64*, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
