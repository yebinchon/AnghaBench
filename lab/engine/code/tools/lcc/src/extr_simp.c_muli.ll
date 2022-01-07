; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_muli.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_muli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"overflow in constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32)* @muli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muli(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i64, i64* %6, align 8
  %16 = icmp sle i64 %15, 1
  br i1 %16, label %75, label %17

17:                                               ; preds = %14, %5
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp sle i64 %21, 1
  br i1 %22, label %75, label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = sub nsw i64 0, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 0, %33
  %35 = sdiv i64 %32, %34
  %36 = icmp sle i64 %31, %35
  br i1 %36, label %75, label %37

37:                                               ; preds = %29, %26, %23
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sdiv i64 %45, %46
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %75, label %49

49:                                               ; preds = %43, %40, %37
  %50 = load i64, i64* %6, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sdiv i64 %57, %58
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %55, %52, %49
  %62 = load i64, i64* %6, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sdiv i64 %69, %70
  %72 = icmp sle i64 %68, %71
  br label %73

73:                                               ; preds = %67, %64, %61
  %74 = phi i1 [ false, %64 ], [ false, %61 ], [ %72, %67 ]
  br label %75

75:                                               ; preds = %73, %55, %43, %29, %20, %14
  %76 = phi i1 [ true, %55 ], [ true, %43 ], [ true, %29 ], [ true, %20 ], [ true, %14 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %80, %75
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
