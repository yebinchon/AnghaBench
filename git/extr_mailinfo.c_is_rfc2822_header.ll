; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_is_rfc2822_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_is_rfc2822_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @is_rfc2822_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rfc2822_header(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @starts_with(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @starts_with(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  store i32 1, i32* %2, align 4
  br label %43

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 33, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 57
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 59, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp sle i32 %38, 126
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %31
  br label %18

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %18
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %27, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
