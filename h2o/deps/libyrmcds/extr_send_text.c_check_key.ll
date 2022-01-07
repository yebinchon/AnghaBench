; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_check_key.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send_text.c_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_KEY_LENGTH = common dso_local global i64 0, align 8
@YRMCDS_BAD_KEY = common dso_local global i32 0, align 4
@YRMCDS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @check_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_key(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_KEY_LENGTH, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @YRMCDS_BAD_KEY, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 32
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @YRMCDS_BAD_KEY, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %18
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 127
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @YRMCDS_BAD_KEY, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @YRMCDS_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %32, %26, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
