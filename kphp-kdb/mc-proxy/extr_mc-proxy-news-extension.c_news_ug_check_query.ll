; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_ug_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_ug_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"news_ug_check: type = %d, key = %s, key_len = %d\0A\00", align 1
@mct_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"raw_updates\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%raw_updates\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"updates\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%updates\00", align 1
@mct_set = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"userlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @news_ug_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @verbosity, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @eat_at(i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @mct_get, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 12
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 8
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i1 [ true, %45 ], [ %53, %49 ]
  br label %56

56:                                               ; preds = %54, %42
  %57 = phi i1 [ false, %42 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %38, %34
  %59 = phi i1 [ true, %38 ], [ true, %34 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %17
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @mct_set, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @mct_replace, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @mct_add, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69, %65, %61
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %74, 8
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i1 [ false, %73 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81, %58
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
