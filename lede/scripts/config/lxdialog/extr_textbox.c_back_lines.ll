; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_textbox.c_back_lines.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_textbox.c_back_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@begin_reached = common dso_local global i32 0, align 4
@page = common dso_local global i8* null, align 8
@end_reached = common dso_local global i64 0, align 8
@buf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @back_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @back_lines(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @begin_reached, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %42, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = load i8*, i8** @page, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i64, i64* @end_reached, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 0, i64* @end_reached, align 8
  br label %42

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i8*, i8** @page, align 8
  %20 = load i8*, i8** @buf, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* @begin_reached, align 4
  br label %45

23:                                               ; preds = %18
  %24 = load i8*, i8** @page, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** @page, align 8
  br label %26

26:                                               ; preds = %34, %23
  %27 = load i8*, i8** @page, align 8
  %28 = load i8*, i8** @buf, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* @begin_reached, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load i8*, i8** @page, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** @page, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** @page, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 10
  br i1 %38, label %26, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** @page, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** @page, align 8
  br label %42

42:                                               ; preds = %39, %16
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %4

45:                                               ; preds = %22, %30, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
