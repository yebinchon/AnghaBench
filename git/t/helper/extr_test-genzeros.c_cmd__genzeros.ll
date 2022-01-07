; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-genzeros.c_cmd__genzeros.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-genzeros.c_cmd__genzeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"usage: %s [<count>]\0A\00", align 1
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__genzeros(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strtol(i8* %21, i32* null, i32 0)
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i64 [ %22, %18 ], [ -1, %23 ]
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %40, %24
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ true, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = call i64 @putchar(i32 0)
  %37 = load i64, i64* @EOF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %42

40:                                               ; preds = %35
  br label %26

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
