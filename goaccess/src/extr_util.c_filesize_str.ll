; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_util.c_filesize_str.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_util.c_filesize_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.2f PiB\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%.2f TiB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%.2f GiB\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.2f MiB\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%.2f KiB\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%.1f   B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filesize_str(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i8* @xmalloc(i32 12)
  store i8* %4, i8** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp uge i64 %5, 1125899906842624
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = uitofp i64 %9 to double
  %11 = call double @PIB(i64 1)
  %12 = fdiv double %10, %11
  %13 = call i32 @snprintf(i8* %8, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %12)
  br label %63

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = icmp uge i64 %15, 1099511627776
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = uitofp i64 %19 to double
  %21 = call double @TIB(i64 1)
  %22 = fdiv double %20, %21
  %23 = call i32 @snprintf(i8* %18, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %22)
  br label %62

24:                                               ; preds = %14
  %25 = load i64, i64* %2, align 8
  %26 = icmp uge i64 %25, 1073741824
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %2, align 8
  %30 = uitofp i64 %29 to double
  %31 = call double @GIB(i64 1)
  %32 = fdiv double %30, %31
  %33 = call i32 @snprintf(i8* %28, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %32)
  br label %61

34:                                               ; preds = %24
  %35 = load i64, i64* %2, align 8
  %36 = icmp uge i64 %35, 1048576
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %2, align 8
  %40 = uitofp i64 %39 to double
  %41 = call double @MIB(i64 1)
  %42 = fdiv double %40, %41
  %43 = call i32 @snprintf(i8* %38, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %42)
  br label %60

44:                                               ; preds = %34
  %45 = load i64, i64* %2, align 8
  %46 = icmp uge i64 %45, 1024
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %2, align 8
  %50 = uitofp i64 %49 to double
  %51 = call double @KIB(i64 1)
  %52 = fdiv double %50, %51
  %53 = call i32 @snprintf(i8* %48, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %52)
  br label %59

54:                                               ; preds = %44
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %2, align 8
  %57 = uitofp i64 %56 to double
  %58 = call i32 @snprintf(i8* %55, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), double %57)
  br label %59

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61, %17
  br label %63

63:                                               ; preds = %62, %7
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local double @PIB(i64) #1

declare dso_local double @TIB(i64) #1

declare dso_local double @GIB(i64) #1

declare dso_local double @MIB(i64) #1

declare dso_local double @KIB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
