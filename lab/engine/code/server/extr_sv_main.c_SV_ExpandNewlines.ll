; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_ExpandNewlines.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_ExpandNewlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SV_ExpandNewlines.string = internal global [1024 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @SV_ExpandNewlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @SV_ExpandNewlines(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 1021
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i1 [ false, %4 ], [ %12, %9 ]
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* @SV_ExpandNewlines.string, i64 0, i64 %23
  store i8 92, i8* %24, align 1
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* @SV_ExpandNewlines.string, i64 0, i64 %27
  store i8 110, i8* %28, align 1
  br label %36

29:                                               ; preds = %15
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* @SV_ExpandNewlines.string, i64 0, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %20
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %2, align 8
  br label %4

39:                                               ; preds = %13
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* @SV_ExpandNewlines.string, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @SV_ExpandNewlines.string, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
