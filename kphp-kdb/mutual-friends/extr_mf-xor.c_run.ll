; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-xor.c_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-xor.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A1 = common dso_local global i64 0, align 8
@A2 = common dso_local global i64 0, align 8
@B1 = common dso_local global i64 0, align 8
@B2 = common dso_local global i64 0, align 8
@B1a = common dso_local global i64 0, align 8
@B2a = common dso_local global i64 0, align 8
@B1b = common dso_local global i64 0, align 8
@B2b = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %63, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ true, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %64

11:                                               ; preds = %9
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i64, i64* @A1, align 8
  %19 = load i64, i64* @A2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* @B1, align 8
  %23 = load i64, i64* @B2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 (...) @my_read1()
  store i32 %26, i32* %1, align 4
  %27 = call i32 (...) @my_read2()
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %21, %17, %14, %11
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i64, i64* @A1, align 8
  %36 = load i64, i64* @A2, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @A1, align 8
  %40 = load i64, i64* @A2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i64, i64* @B1a, align 8
  %44 = load i64, i64* @B2a, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @B1a, align 8
  %48 = load i64, i64* @B2a, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* @B1b, align 8
  %52 = load i64, i64* @B2b, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %42, %34, %28
  %55 = call i32 @my_write(i64* @A1, i32 4)
  %56 = call i32 @my_write(i64* @B1, i32 4)
  %57 = call i32 (...) @my_read1()
  store i32 %57, i32* %1, align 4
  br label %62

58:                                               ; preds = %50, %46, %38, %31
  %59 = call i32 @my_write(i64* @A2, i32 4)
  %60 = call i32 @my_write(i64* @B2, i32 4)
  %61 = call i32 (...) @my_read2()
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %25
  br label %3

64:                                               ; preds = %9
  ret void
}

declare dso_local i32 @my_read1(...) #1

declare dso_local i32 @my_read2(...) #1

declare dso_local i32 @my_write(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
