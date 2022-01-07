; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_get_start_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_get_start_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @get_start_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_start_end(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @die(i8* %17)
  br label %19

19:                                               ; preds = %16, %3
  br label %20

20:                                               ; preds = %42, %19
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @fgets(i8* %21, i32 1024, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %27 = call i64 @start_line(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = call i32 @strtoul(i8* %30, i32* null, i32 16)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %42

33:                                               ; preds = %25
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %35 = call i64 @end_line(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %39 = call i32 @strtoul(i8* %38, i32* null, i32 16)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %20

43:                                               ; preds = %20
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %43
  store i32 0, i32* %4, align 4
  br label %55

54:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @start_line(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @end_line(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
