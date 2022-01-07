; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memlocate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memlocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@last_cmd = common dso_local global i8* null, align 8
@mdest = common dso_local global i32 0, align 4
@termch = common dso_local global i8 0, align 1
@mend = common dso_local global i32 0, align 4
@mval = common dso_local global i32 0, align 4
@mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%.16x:  %.16x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @memlocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memlocate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @last_cmd, align 8
  %4 = call i32 @scanhex(i8* bitcast (i32* @mdest to i8*))
  %5 = load i8, i8* @termch, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 10
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  store i8 0, i8* @termch, align 1
  %9 = call i32 @scanhex(i8* bitcast (i32* @mend to i8*))
  %10 = load i8, i8* @termch, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  store i8 0, i8* @termch, align 1
  %14 = call i32 @scanhex(i8* bitcast (i32* @mval to i8*))
  store i32 -1, i32* @mask, align 4
  %15 = load i8, i8* @termch, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8 0, i8* @termch, align 1
  br label %19

19:                                               ; preds = %18, %13
  %20 = call i32 @scanhex(i8* bitcast (i32* @mask to i8*))
  br label %21

21:                                               ; preds = %19, %8
  br label %22

22:                                               ; preds = %21, %0
  store i32 0, i32* %2, align 4
  %23 = load i32, i32* @mdest, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %52, %22
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @mend, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %31 = call i32 @mread(i32 %29, i8* %30, i32 4)
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %35 = call i32 @GETWORD(i8* %34)
  %36 = load i32, i32* @mval, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* @mask, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %1, align 4
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %44 = call i32 @GETWORD(i8* %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %2, align 4
  %48 = icmp uge i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %33, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add i32 %53, 4
  store i32 %54, i32* %1, align 4
  br label %24

55:                                               ; preds = %49, %24
  ret void
}

declare dso_local i32 @scanhex(i8*) #1

declare dso_local i32 @mread(i32, i8*, i32) #1

declare dso_local i32 @GETWORD(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
