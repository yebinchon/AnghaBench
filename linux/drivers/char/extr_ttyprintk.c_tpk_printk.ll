; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ttyprintk.c_tpk_printk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ttyprintk.c_tpk_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tpk_curr = common dso_local global i32 0, align 4
@TPK_STR_SIZE = common dso_local global i32 0, align 4
@tpk_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tpk_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpk_printk(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @tpk_curr, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 (...) @tpk_flush()
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %69, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load i32, i32* @tpk_curr, align 4
  %20 = load i32, i32* @TPK_STR_SIZE, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** @tpk_buffer, align 8
  %24 = load i32, i32* @tpk_curr, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @tpk_curr, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 92, i8* %27, align 1
  %28 = call i32 (...) @tpk_flush()
  br label %29

29:                                               ; preds = %22, %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %57 [
    i32 13, label %36
    i32 10, label %55
  ]

36:                                               ; preds = %29
  %37 = call i32 (...) @tpk_flush()
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %42, %36
  br label %68

55:                                               ; preds = %29
  %56 = call i32 (...) @tpk_flush()
  br label %68

57:                                               ; preds = %29
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** @tpk_buffer, align 8
  %64 = load i32, i32* @tpk_curr, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @tpk_curr, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  br label %68

68:                                               ; preds = %57, %55, %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @tpk_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
