; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_statsx_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_statsx_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mct_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"views\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"visitors\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"monthly_views\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"monthly_visitors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statsx_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @mct_get, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @eat_at(i8* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 7
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 5
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 8
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 13
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %7, align 4
  %71 = icmp sge i32 %70, 16
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 16)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i1 [ false, %69 ], [ %76, %72 ]
  br label %79

79:                                               ; preds = %77, %65, %58, %51, %44, %37
  %80 = phi i1 [ true, %65 ], [ true, %58 ], [ true, %51 ], [ true, %44 ], [ true, %37 ], [ %78, %77 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %12
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
