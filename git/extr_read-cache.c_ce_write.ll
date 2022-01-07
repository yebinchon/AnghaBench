; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_write.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_buffer_len = common dso_local global i32 0, align 4
@WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@write_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @ce_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_write(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %47, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %12
  %16 = load i32, i32* @write_buffer_len, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i64, i64* @write_buffer, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @memcpy(i64 %29, i8* %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @WRITE_BUFFER_SIZE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* @write_buffer_len, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @ce_write_flush(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %57

46:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* @write_buffer_len, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %8, align 8
  br label %12

56:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @ce_write_flush(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
