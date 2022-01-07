; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mdest = common dso_local global i64 0, align 8
@termch = common dso_local global i8 0, align 1
@mval = common dso_local global i64 0, align 8
@msrc = common dso_local global i64 0, align 8
@mcount = common dso_local global i32 0, align 4
@xmon_is_ro = common dso_local global i32 0, align 4
@xmon_ro_msg = common dso_local global i8* null, align 8
@mdiffs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @memops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memops(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @scanhex(i8* bitcast (i64* @mdest to i8*))
  %4 = load i8, i8* @termch, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 0, i8* @termch, align 1
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 115
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i64* @mval, i64* @msrc
  %13 = bitcast i64* %12 to i8*
  %14 = call i32 @scanhex(i8* %13)
  %15 = load i8, i8* @termch, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i8 0, i8* @termch, align 1
  br label %19

19:                                               ; preds = %18, %8
  %20 = call i32 @scanhex(i8* bitcast (i32* @mcount to i8*))
  %21 = load i32, i32* %2, align 4
  switch i32 %21, label %61 [
    i32 109, label %22
    i32 115, label %35
    i32 100, label %47
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* @xmon_is_ro, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** @xmon_ro_msg, align 8
  %27 = call i32 @printf(i8* %26)
  br label %61

28:                                               ; preds = %22
  %29 = load i64, i64* @mdest, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i64, i64* @msrc, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @mcount, align 4
  %34 = call i32 @memmove(i8* %30, i8* %32, i32 %33)
  br label %61

35:                                               ; preds = %19
  %36 = load i32, i32* @xmon_is_ro, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** @xmon_ro_msg, align 8
  %40 = call i32 @printf(i8* %39)
  br label %61

41:                                               ; preds = %35
  %42 = load i64, i64* @mdest, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* @mval, align 8
  %45 = load i32, i32* @mcount, align 4
  %46 = call i32 @memset(i8* %43, i64 %44, i32 %45)
  br label %61

47:                                               ; preds = %19
  %48 = load i8, i8* @termch, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 10
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8 0, i8* @termch, align 1
  br label %52

52:                                               ; preds = %51, %47
  %53 = call i32 @scanhex(i8* bitcast (i32* @mdiffs to i8*))
  %54 = load i64, i64* @mdest, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64, i64* @msrc, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i32, i32* @mcount, align 4
  %59 = load i32, i32* @mdiffs, align 4
  %60 = call i32 @memdiffs(i8* %55, i8* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %19, %52, %41, %38, %28, %25
  ret void
}

declare dso_local i32 @scanhex(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i64, i32) #1

declare dso_local i32 @memdiffs(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
