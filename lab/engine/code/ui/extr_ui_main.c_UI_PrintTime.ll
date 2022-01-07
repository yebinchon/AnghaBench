; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_PrintTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_PrintTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%d hr %d min\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d min %d sec\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d sec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @UI_PrintTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_PrintTime(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 1000
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 3600
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 3600
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 3600
  %18 = sdiv i32 %17, 60
  %19 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 60
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 60
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 60
  %30 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  br label %36

31:                                               ; preds = %20
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %23
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
