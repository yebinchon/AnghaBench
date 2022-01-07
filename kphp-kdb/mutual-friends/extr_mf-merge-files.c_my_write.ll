; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_my_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_my_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W_BUFF_SIZE = common dso_local global i32 0, align 4
@w_buff_n = common dso_local global i32 0, align 4
@w_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @W_BUFF_SIZE, align 4
  %19 = load i32, i32* @w_buff_n, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @W_BUFF_SIZE, align 4
  %24 = load i32, i32* @w_buff_n, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i32, i32* @w_buff, align 4
  %28 = load i32, i32* @w_buff_n, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcpy(i32 %29, i8* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @w_buff_n, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @w_buff_n, align 4
  %42 = load i32, i32* @w_buff_n, align 4
  %43 = load i32, i32* @W_BUFF_SIZE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = call i32 (...) @flush_w_buff()
  br label %47

47:                                               ; preds = %45, %26
  br label %9

48:                                               ; preds = %9
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
