; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_my_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_my_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFF_SIZE = common dso_local global i32 0, align 4
@w_buff_n = common dso_local global i32 0, align 4
@w_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BUFF_SIZE, align 4
  %17 = load i32, i32* @w_buff_n, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i32, i32* @BUFF_SIZE, align 4
  %22 = load i32, i32* @w_buff_n, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i32, i32* @w_buff, align 4
  %26 = load i32, i32* @w_buff_n, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i32 %27, i8* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @w_buff_n, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @w_buff_n, align 4
  %40 = load i32, i32* @w_buff_n, align 4
  %41 = load i32, i32* @BUFF_SIZE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = call i32 (...) @flush_w_buff()
  br label %45

45:                                               ; preds = %43, %24
  br label %7

46:                                               ; preds = %7
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flush_w_buff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
