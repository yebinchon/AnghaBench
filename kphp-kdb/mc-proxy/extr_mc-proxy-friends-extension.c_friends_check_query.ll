; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_check_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_check_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mct_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"common_friends_num\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%common_friends_num\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"common_friends\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%common_friends\00", align 1
@mct_set = common dso_local global i32 0, align 4
@mct_replace = common dso_local global i32 0, align 4
@mct_add = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"userlist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @friends_check_query(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @eat_at(i8* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @mct_get, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %23, 19
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 18)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 19)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 15
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 15)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ true, %36 ], [ %44, %40 ]
  br label %47

47:                                               ; preds = %45, %33
  %48 = phi i1 [ false, %33 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %29, %25
  %50 = phi i1 [ true, %29 ], [ true, %25 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @mct_set, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @mct_replace, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @mct_add, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60, %56, %52
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 8
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72, %49
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
