; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_geoip2.c_get_continent_name_and_code.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_geoip2.c_get_continent_name_and_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"NA North America\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"OC Oceania\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"EU Europe\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"SA South America\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"AF Africa\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"AN\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"AN Antarctica\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"AS Asia\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"-- Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_continent_name_and_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_continent_name_and_code(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @memcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @memcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %39

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @memcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %39

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @memcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %39

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @memcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %39

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @memcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @memcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %39

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %39

39:                                               ; preds = %38, %37, %32, %27, %22, %17, %12, %7
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
