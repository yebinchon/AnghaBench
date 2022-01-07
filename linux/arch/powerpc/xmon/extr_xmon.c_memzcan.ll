; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memzcan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_memzcan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mdest = common dso_local global i32 0, align 4
@termch = common dso_local global i8 0, align 1
@mskip = common dso_local global i32 0, align 4
@mlim = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%.8x .. \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.8lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @memzcan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memzcan() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @scanhex(i32* @mdest)
  %6 = load i8, i8* @termch, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8 0, i8* @termch, align 1
  br label %10

10:                                               ; preds = %9, %0
  %11 = call i32 @scanhex(i32* @mskip)
  %12 = load i8, i8* @termch, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 10
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8 0, i8* @termch, align 1
  br label %16

16:                                               ; preds = %15, %10
  %17 = call i32 @scanhex(i32* @mlim)
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* @mdest, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %55, %16
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @mlim, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mread(i32 %24, i8* %1, i32 1)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %46

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @mskip, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %37, %34
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @mskip, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %2, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @mskip, align 4
  %57 = load i32, i32* %2, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %2, align 4
  br label %19

59:                                               ; preds = %53, %19
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @mskip, align 4
  %65 = sub i32 %63, %64
  %66 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @scanhex(i32*) #1

declare dso_local i32 @mread(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
