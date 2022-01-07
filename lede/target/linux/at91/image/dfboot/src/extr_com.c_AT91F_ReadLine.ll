; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_com.c_AT91F_ReadLine.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_com.c_AT91F_ReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@erase_seq = common dso_local global i8* null, align 8
@AT91C_CB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_ReadLine(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @printf(i8* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %68, %49, %19
  %22 = call signext i8 (...) @getc()
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %50 [
    i32 13, label %25
    i32 10, label %25
    i32 3, label %34
    i32 8, label %37
    i32 127, label %37
  ]

25:                                               ; preds = %21, %21
  %26 = load i8*, i8** %6, align 8
  store i8 0, i8* %26, align 1
  %27 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %21
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  store i32 -1, i32* %3, align 4
  br label %69

37:                                               ; preds = %21, %21
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** @erase_seq, align 8
  %44 = call i32 @printf(i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %37
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @AT91C_CB_SIZE, align 4
  %53 = sub nsw i32 %52, 2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i8, i8* %10, align 1
  %59 = call i32 @putc(i8 signext %58)
  %60 = load i8, i8* %10, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %67

65:                                               ; preds = %50
  %66 = call i32 @putc(i8 signext 7)
  br label %67

67:                                               ; preds = %65, %55
  br label %68

68:                                               ; preds = %67
  br label %21

69:                                               ; preds = %34, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local signext i8 @getc(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @putc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
