; ModuleID = '/home/carl/AnghaBench/git/extr_http.h_missing__target.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.h_missing__target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_FILE_COULDNT_READ_FILE = common dso_local global i32 0, align 4
@CURLE_HTTP_RETURNED_ERROR = common dso_local global i32 0, align 4
@CURLE_FTP_COULDNT_RETR_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @missing__target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @missing__target(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CURLE_FILE_COULDNT_READ_FILE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 404
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CURLE_HTTP_RETURNED_ERROR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 550
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CURLE_FTP_COULDNT_RETR_FILE, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br label %24

24:                                               ; preds = %22, %11, %2
  %25 = phi i1 [ true, %11 ], [ true, %2 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
