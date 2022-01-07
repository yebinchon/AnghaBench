; ModuleID = '/home/carl/AnghaBench/htop/extr_StringUtils.c_String_readLine.c'
source_filename = "/home/carl/AnghaBench/htop/extr_StringUtils.c_String_readLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @String_readLine(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 1024, i32* %4, align 4
  store i32 1024, i32* %5, align 4
  %10 = call i8* @xMalloc(i32 1025)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i8*, i8** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @fgets(i8* %13, i32 1025, i32* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @free(i8* %19)
  store i8* null, i8** %2, align 8
  br label %48

21:                                               ; preds = %12
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 10)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %2, align 8
  br label %48

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @feof(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %2, align 8
  br label %48

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1024
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @xRealloc(i8* %39, i32 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 -1024
  store i8* %47, i8** %7, align 8
  br label %12

48:                                               ; preds = %33, %26, %18
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i8* @xMalloc(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i8* @xRealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
