; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_setprop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_setprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"setprop\00", align 1
@ldom_domaining_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_setprop(i64 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i64], align 16
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %5, align 4
  br label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  store i64 ptrtoint ([8 x i8]* @.str to i64), i64* %22, align 16
  %23 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 1
  store i64 4, i64* %23, align 8
  %24 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 2
  store i64 1, i64* %24, align 16
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 3
  store i64 %27, i64* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 4
  store i64 %30, i64* %31, align 16
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 5
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 6
  store i64 %36, i64* %37, align 16
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  store i64 -1, i64* %38, align 8
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %40 = call i32 @p1275_cmd_direct(i64* %39)
  %41 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 7
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %21, %20, %13
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
