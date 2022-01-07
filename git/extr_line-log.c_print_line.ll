; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_print_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"\\ No newline at end of file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i64, i64*, i8*, i8*, i8*, i32*)* @print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_line(i8* %0, i8 signext %1, i64 %2, i64* %3, i8* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8 %1, i8* %10, align 1
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = call i8* @get_nth_line(i64 %20, i64* %21, i8* %22)
  store i8* %23, i8** %17, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i64*, i64** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i8* @get_nth_line(i64 %25, i64* %26, i8* %27)
  store i8* %28, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load i8*, i8** %18, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %8
  %33 = load i8*, i8** %18, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %18, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %18, align 8
  store i32 1, i32* %19, align 4
  br label %41

41:                                               ; preds = %38, %32, %8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @fputs(i8* %42, i32* %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @fputs(i8* %45, i32* %46)
  %48 = load i8, i8* %10, align 1
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @putc(i8 signext %48, i32* %49)
  %51 = load i8*, i8** %17, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @fwrite(i8* %51, i32 1, i32 %57, i32* %58)
  %60 = load i8*, i8** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @fputs(i8* %60, i32* %61)
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @putc(i8 signext 10, i32* %63)
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %41
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %68)
  br label %70

70:                                               ; preds = %67, %41
  ret void
}

declare dso_local i8* @get_nth_line(i64, i64*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
