; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_buff.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_write_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64 0, align 8
@buff = common dso_local global i64 0, align 8
@BUFF_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_buff(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load i64, i64* @wptr, align 8
  %11 = load i64, i64* @buff, align 8
  %12 = load i64, i64* @BUFF_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 (...) @flush_buff()
  br label %20

20:                                               ; preds = %18, %9
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @buff, align 8
  %23 = load i64, i64* @BUFF_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @wptr, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @min(i32 %21, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* @wptr, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @memcpy(i64 %28, i8* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @wptr, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* @wptr, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @flush_buff(...) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
