; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_get_cache_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_get_cache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"UC  \00", align 1
@WC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"WC  \00", align 1
@WT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"WT  \00", align 1
@WP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"WP  \00", align 1
@WB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"WB  \00", align 1
@UC_MINUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"UC- \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pat_get_cache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pat_get_cache_mode(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %26 [
    i32 133, label %8
    i32 130, label %11
    i32 128, label %14
    i32 129, label %17
    i32 131, label %20
    i32 132, label %23
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @UC, align 4
  %10 = call i32 @CM(i32 %9)
  store i32 %10, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* @WC, align 4
  %13 = call i32 @CM(i32 %12)
  store i32 %13, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* @WT, align 4
  %16 = call i32 @CM(i32 %15)
  store i32 %16, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @WP, align 4
  %19 = call i32 @CM(i32 %18)
  store i32 %19, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @WB, align 4
  %22 = call i32 @CM(i32 %21)
  store i32 %22, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @UC_MINUS, align 4
  %25 = call i32 @CM(i32 %24)
  store i32 %25, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @WB, align 4
  %28 = call i32 @CM(i32 %27)
  store i32 %28, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %14, %11, %8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 4)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @CM(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
