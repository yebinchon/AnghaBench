; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_validate_raw_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_validate_raw_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*)* @validate_raw_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_raw_date(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strtoul(i8* %10, i8** %7, i32 10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* @errno, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %14, %2
  store i32 -1, i32* %3, align 4
  br label %61

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 43
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %61

37:                                               ; preds = %31, %24
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i64 @strtoul(i8* %39, i8** %7, i32 10)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* @errno, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = icmp eq i8* %44, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 1400, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %48, %43, %37
  store i32 -1, i32* %3, align 4
  br label %61

57:                                               ; preds = %53
  %58 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strbuf_addstr(%struct.strbuf* %58, i8* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %56, %36, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
