; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_cfg_skipspc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_cfg_skipspc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_cur = common dso_local global i8* null, align 8
@cfg_lno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cfg_skipspc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_skipspc() #0 {
  br label %1

1:                                                ; preds = %58, %49, %0
  %2 = load i8*, i8** @cfg_cur, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** @cfg_cur, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %26, label %11

11:                                               ; preds = %6
  %12 = load i8*, i8** @cfg_cur, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 13
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** @cfg_cur, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** @cfg_cur, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 35
  br label %26

26:                                               ; preds = %21, %16, %11, %6, %1
  %27 = phi i1 [ true, %16 ], [ true, %11 ], [ true, %6 ], [ true, %1 ], [ %25, %21 ]
  br i1 %27, label %28, label %61

28:                                               ; preds = %26
  %29 = load i8*, i8** @cfg_cur, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 35
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i8*, i8** @cfg_cur, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** @cfg_cur, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** @cfg_cur, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** @cfg_cur, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %34, label %49

49:                                               ; preds = %47
  br label %1

50:                                               ; preds = %28
  %51 = load i8*, i8** @cfg_cur, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @cfg_lno, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @cfg_lno, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** @cfg_cur, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** @cfg_cur, align 8
  br label %1

61:                                               ; preds = %26
  %62 = load i8*, i8** @cfg_cur, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
