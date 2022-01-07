; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_filehandling.c_count_lines.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_filehandling.c_count_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCBUFSIZ_LARGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @count_lines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i64 @hcmalloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  store i8 10, i8* %5, align 1
  br label %12

12:                                               ; preds = %45, %24, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @hc_feof(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @hc_fread(i8* %18, i32 1, i64 %19, i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %12

25:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %5, align 1
  br label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %26

45:                                               ; preds = %26
  br label %12

46:                                               ; preds = %12
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @hcfree(i8* %47)
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i64 @hc_fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
