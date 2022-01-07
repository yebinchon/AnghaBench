; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdsReqType.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdsReqType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDS_TYPE_5 = common dso_local global i8 0, align 1
@SDS_TYPE_8 = common dso_local global i8 0, align 1
@SDS_TYPE_16 = common dso_local global i8 0, align 1
@SDS_TYPE_32 = common dso_local global i8 0, align 1
@SDS_TYPE_64 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i64)* @sdsReqType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @sdsReqType(i64 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ult i64 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8, i8* @SDS_TYPE_5, align 1
  store i8 %7, i8* %2, align 1
  br label %25

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ult i64 %9, 255
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8, i8* @SDS_TYPE_8, align 1
  store i8 %12, i8* %2, align 1
  br label %25

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %14, 65535
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8, i8* @SDS_TYPE_16, align 1
  store i8 %17, i8* %2, align 1
  br label %25

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %19, 4294967295
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8, i8* @SDS_TYPE_32, align 1
  store i8 %22, i8* %2, align 1
  br label %25

23:                                               ; preds = %18
  %24 = load i8, i8* @SDS_TYPE_64, align 1
  store i8 %24, i8* %2, align 1
  br label %25

25:                                               ; preds = %23, %21, %16, %11, %6
  %26 = load i8, i8* %2, align 1
  ret i8 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
