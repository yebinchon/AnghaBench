; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_option_date_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_option_date_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@WHENSPEC_RAW = common dso_local global i32 0, align 4
@whenspec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rfc2822\00", align 1
@WHENSPEC_RFC2822 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@WHENSPEC_NOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"unknown --date-format argument %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @option_date_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @option_date_format(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @WHENSPEC_RAW, align 4
  store i32 %7, i32* @whenspec, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @WHENSPEC_RFC2822, align 4
  store i32 %13, i32* @whenspec, align 4
  br label %24

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @WHENSPEC_NOW, align 4
  store i32 %19, i32* @whenspec, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %18
  br label %24

24:                                               ; preds = %23, %12
  br label %25

25:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
