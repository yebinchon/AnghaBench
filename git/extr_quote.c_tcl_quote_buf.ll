; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_tcl_quote_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_tcl_quote_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcl_quote_buf(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 34)
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %5, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %19 [
    i32 91, label %16
    i32 93, label %16
    i32 123, label %16
    i32 125, label %16
    i32 36, label %16
    i32 92, label %16
    i32 34, label %16
    i32 12, label %23
    i32 13, label %26
    i32 10, label %29
    i32 9, label %32
    i32 11, label %35
  ]

16:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  %17 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %18 = call i32 @strbuf_addch(%struct.strbuf* %17, i8 signext 92)
  br label %19

19:                                               ; preds = %13, %16
  %20 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %21 = load i8, i8* %5, align 1
  %22 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext %21)
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %38

29:                                               ; preds = %13
  %30 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %31 = call i32 @strbuf_addstr(%struct.strbuf* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %38

32:                                               ; preds = %13
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %38

35:                                               ; preds = %13
  %36 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32, %29, %26, %23, %19
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %41 = call i32 @strbuf_addch(%struct.strbuf* %40, i8 signext 34)
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
