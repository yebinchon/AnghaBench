; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_fd_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_fd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"copyexec_aux_replay_binlog: read returns %lld instead of %lld. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @fd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @read(i32 %10, i8* %11, i64 %12)
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %8, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %9, label %23

23:                                               ; preds = %21
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @kprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = call i32 (...) @copyexec_abort()
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @kprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  store i32 -1, i32* %4, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

declare dso_local i32 @copyexec_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
