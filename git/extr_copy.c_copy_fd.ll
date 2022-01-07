; ModuleID = '/home/carl/AnghaBench/git/extr_copy.c_copy_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_copy.c_copy_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COPY_READ_ERROR = common dso_local global i32 0, align 4
@COPY_WRITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %2, %28
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %11 = call i64 @xread(i32 %9, i8* %10, i32 8192)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %29

15:                                               ; preds = %8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @COPY_READ_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @write_in_full(i32 %21, i8* %22, i64 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @COPY_WRITE_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %20
  br label %8

29:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @xread(i32, i8*, i32) #1

declare dso_local i64 @write_in_full(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
