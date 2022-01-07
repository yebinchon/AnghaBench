; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_find_query_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_find_query_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SHOW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_query_type(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %77, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %82

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @t_skipspc(i8* %12, i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @t_getlex(i8* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %83

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 65
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 %29, 90
  br i1 %30, label %41, label %31

31:                                               ; preds = %26, %21
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sge i32 %34, 97
  br i1 %35, label %36, label %77

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 122
  br i1 %40, label %41, label %77

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @memcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %83

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @memcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %83

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @memcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %83

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @memcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %83

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @memcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %83

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %36, %31
  %78 = load i32, i32* %6, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  br label %7

82:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %75, %63, %58, %53, %48, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @t_skipspc(i8*, i8*) #1

declare dso_local i32 @t_getlex(i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
