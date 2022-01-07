; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_read_iter_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_read_iter_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @read_iter_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_iter_zero(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %58, %2
  %10 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %11 = call i64 @iov_iter_count(%struct.iov_iter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %15 = call i64 @iov_iter_count(%struct.iov_iter* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %24 = call i64 @iov_iter_zero(i64 %22, %struct.iov_iter* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %29 = call i64 @iov_iter_count(%struct.iov_iter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  br label %39

36:                                               ; preds = %31
  %37 = load i64, i64* @EFAULT, align 8
  %38 = sub i64 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i64 [ %35, %34 ], [ %38, %36 ]
  store i64 %40, i64* %3, align 8
  br label %62

41:                                               ; preds = %27, %21
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* @current, align 4
  %46 = call i64 @signal_pending(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  br label %56

53:                                               ; preds = %48
  %54 = load i64, i64* @ERESTARTSYS, align 8
  %55 = sub i64 0, %54
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  store i64 %57, i64* %3, align 8
  br label %62

58:                                               ; preds = %41
  %59 = call i32 (...) @cond_resched()
  br label %9

60:                                               ; preds = %9
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %56, %39
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_zero(i64, %struct.iov_iter*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
