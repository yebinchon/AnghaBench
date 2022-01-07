; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-date.c_show_dates.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-date.c_show_dates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.date_mode = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @show_dates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dates(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.date_mode, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @parse_date_format(i8* %9, %struct.date_mode* %5)
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @parse_timestamp(i8* %17, i8** %6, i32 10)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %24, %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @show_date(i32 %32, i32 %33, %struct.date_mode* %5)
  %35 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i8**, i8*** %3, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %3, align 8
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @parse_date_format(i8*, %struct.date_mode*) #1

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @show_date(i32, i32, %struct.date_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
