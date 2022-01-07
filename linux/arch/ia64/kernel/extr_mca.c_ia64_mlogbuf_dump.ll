; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_ia64_mlogbuf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_ia64_mlogbuf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLOGBUF_MSGMAX = common dso_local global i32 0, align 4
@mlogbuf_start = common dso_local global i64 0, align 8
@mlogbuf_end = common dso_local global i64 0, align 8
@mlogbuf_rlock = common dso_local global i32 0, align 4
@mlogbuf = common dso_local global i8* null, align 8
@MLOGBUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mlogbuf_timestamp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_mlogbuf_dump() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MLOGBUF_MSGMAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  br label %11

11:                                               ; preds = %55, %0
  %12 = load i64, i64* @mlogbuf_start, align 8
  %13 = load i64, i64* @mlogbuf_end, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %16, align 16
  store i8* %10, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @mlogbuf_rlock, i64 %17)
  %19 = load i64, i64* @mlogbuf_start, align 8
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %47, %15
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @mlogbuf_end, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i8*, i8** @mlogbuf, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* @MLOGBUF_SIZE, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %48

38:                                               ; preds = %24
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @MLOGBUF_MSGMAX, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp uge i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %48

47:                                               ; preds = %38
  br label %20

48:                                               ; preds = %46, %37, %20
  %49 = load i8*, i8** %3, align 8
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds i8, i8* %10, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* @mlogbuf_start, align 8
  store i64 0, i64* @mlogbuf_timestamp, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @mlogbuf_rlock, i64 %57)
  br label %11

59:                                               ; preds = %11
  %60 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @printk(i8*, i8*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
