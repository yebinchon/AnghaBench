; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_quote_two_c_style.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_quote_two_c_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quote_two_c_style(%struct.strbuf* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @quote_c_style(i8* %9, %struct.strbuf* null, i32* null, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @quote_c_style(i8* %13, %struct.strbuf* null, i32* null, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext 34)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %25 = call i64 @quote_c_style(i8* %23, %struct.strbuf* %24, i32* null, i32 1)
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = call i64 @quote_c_style(i8* %26, %struct.strbuf* %27, i32* null, i32 1)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = call i32 @strbuf_addch(%struct.strbuf* %32, i8 signext 34)
  br label %34

34:                                               ; preds = %31, %22
  br label %42

35:                                               ; preds = %12
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strbuf_addstr(%struct.strbuf* %36, i8* %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strbuf_addstr(%struct.strbuf* %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local i64 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
