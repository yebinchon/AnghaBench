; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_dpi.c_init_dpi.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_dpi.c_init_dpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to open the resource database.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Xft.dpi\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Resource Xft.dpi not specified, skipping.\0A\00", align 1
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@dpi = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"Xft.dpi = %s is an invalid number and couldn't be parsed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Found Xft.dpi = %ld.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Using fallback for calculating DPI.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Using dpi = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dpi() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  store i32* null, i32** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = load i32*, i32** @conn, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %48

8:                                                ; preds = %0
  %9 = load i32*, i32** @conn, align 8
  %10 = call i32* @xcb_xrm_database_from_default(i32* %9)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %48

15:                                               ; preds = %8
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @xcb_xrm_resource_get_string(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i8** %2)
  %18 = load i8*, i8** %2, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %48

22:                                               ; preds = %15
  %23 = load i8*, i8** %2, align 8
  %24 = call double @strtod(i8* %23, i8** %3)
  store double %24, double* %4, align 8
  %25 = load double, double* %4, align 8
  %26 = load double, double* @HUGE_VAL, align 8
  %27 = fcmp oeq double %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* @dpi, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %31, %28, %22
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  store i64 0, i64* @dpi, align 8
  br label %48

43:                                               ; preds = %36
  %44 = load double, double* %4, align 8
  %45 = call i64 @lround(double %44) #3
  store i64 %45, i64* @dpi, align 8
  %46 = load i64, i64* @dpi, align 8
  %47 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %43, %40, %20, %13, %7
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @xcb_xrm_database_free(i32* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i64, i64* @dpi, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i64 (...) @init_dpi_fallback()
  store i64 %61, i64* @dpi, align 8
  %62 = load i64, i64* @dpi, align 8
  %63 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32* @xcb_xrm_database_from_default(i32*) #1

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @xcb_xrm_resource_get_string(i32*, i8*, i32*, i8**) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local double @strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare dso_local i64 @lround(double) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xcb_xrm_database_free(i32*) #1

declare dso_local i64 @init_dpi_fallback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
