; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1xxx.c_board_type_str.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1xxx.c_board_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCSR_WHOAMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DB1000\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DB1500\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DB1100\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PB1500\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"PB1100\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PB1200\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DB1200\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DB1300\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DB1550\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PB1550\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @board_type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @board_type_str() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @BCSR_WHOAMI, align 4
  %3 = call i32 @bcsr_read(i32 %2)
  %4 = call i32 @BCSR_WHOAMI_BOARD(i32 %3)
  switch i32 %4, label %15 [
    i32 140, label %5
    i32 136, label %6
    i32 139, label %7
    i32 131, label %8
    i32 130, label %8
    i32 134, label %9
    i32 133, label %10
    i32 132, label %10
    i32 138, label %11
    i32 137, label %12
    i32 135, label %13
    i32 128, label %14
    i32 129, label %14
  ]

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %16

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %16

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %16

8:                                                ; preds = %0, %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %16

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %16

10:                                               ; preds = %0, %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %16

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %16

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %16

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %16

14:                                               ; preds = %0, %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %16

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i8*, i8** %1, align 8
  ret i8* %17
}

declare dso_local i32 @BCSR_WHOAMI_BOARD(i32) #1

declare dso_local i32 @bcsr_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
