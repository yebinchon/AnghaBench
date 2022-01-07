; ModuleID = '/home/carl/AnghaBench/kphp-kdb/skat/extr_st-utils.c_st_print_tspan.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/skat/extr_st-utils.c_st_print_tspan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c">year\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st_print_tspan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 60
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %59

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 3600
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = sdiv i32 %16, 60
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %2, align 4
  %23 = srem i32 %22, 60
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %58

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 86400
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 3600
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %2, align 4
  %36 = srem i32 %35, 3600
  %37 = sdiv i32 %36, 60
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %57

39:                                               ; preds = %25
  %40 = load i32, i32* %2, align 4
  %41 = icmp slt i32 %40, 31536000
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = sdiv i32 %43, 86400
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %2, align 4
  %50 = srem i32 %49, 86400
  %51 = sdiv i32 %50, 3600
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %42
  br label %57

57:                                               ; preds = %56, %28
  br label %58

58:                                               ; preds = %57, %15
  br label %59

59:                                               ; preds = %58, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
