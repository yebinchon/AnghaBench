; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_cpu_total.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_cpu_total.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_cpu_total.mem = internal global [10000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@TMEM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpu_total(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = call i32 @snprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_cpu_total.mem, i64 0, i64 0), i32 10000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_cpu_total.mem, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @read(i32 %17, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_cpu_total.mem, i64 0, i64 0), i32 9999)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @close(i32 %23)
  store i32 0, i32* %2, align 4
  br label %65

25:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10000 x i8], [10000 x i8]* @get_cpu_total.mem, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 %42, 10
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = sub i64 %46, 48
  store i64 %47, i64* %7, align 8
  br label %56

48:                                               ; preds = %38, %30
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %60

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %26

60:                                               ; preds = %54, %26
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %3, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @close(i32 %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %22, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
