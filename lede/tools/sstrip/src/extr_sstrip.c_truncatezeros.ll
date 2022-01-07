; ModuleID = '/home/carl/AnghaBench/lede/tools/sstrip/src/extr_sstrip.c_truncatezeros.c'
source_filename = "/home/carl/AnghaBench/lede/tools/sstrip/src/extr_sstrip.c_truncatezeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot seek in file.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot read file contents\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ELF file is completely blank!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @truncatezeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncatezeros(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %60, %2
  store i64 1024, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %19, %20
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i64 @lseek(i32 %18, i64 %21, i32 %22)
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @ferr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @read(i32 %28, i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @ferr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %7, align 8
  br label %37

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %11, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = load i64*, i64** %5, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %65, %34, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @ferr(i8*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
