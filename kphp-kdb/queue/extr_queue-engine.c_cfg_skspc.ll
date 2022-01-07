; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_cfg_skspc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_cfg_skspc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_cur = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cfg_skspc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_skspc() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i8*, i8** @cfg_cur, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** @cfg_cur, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 9
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ true, %1 ], [ %10, %6 ]
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load i8*, i8** @cfg_cur, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** @cfg_cur, align 8
  br label %1

16:                                               ; preds = %11
  %17 = load i8*, i8** @cfg_cur, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
