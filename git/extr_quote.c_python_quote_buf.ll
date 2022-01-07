; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_python_quote_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_python_quote_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @python_quote_buf(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 39, i8* %5, align 1
  store i8 92, i8* %6, align 1
  store i8 10, i8* %7, align 1
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 39)
  br label %11

11:                                               ; preds = %36, %20, %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %8, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load i8, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = call i32 @strbuf_addch(%struct.strbuf* %21, i8 signext 92)
  %23 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %24 = call i32 @strbuf_addch(%struct.strbuf* %23, i8 signext 110)
  br label %11

25:                                               ; preds = %16
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 39
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %35 = call i32 @strbuf_addch(%struct.strbuf* %34, i8 signext 92)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %38 = load i8, i8* %8, align 1
  %39 = call i32 @strbuf_addch(%struct.strbuf* %37, i8 signext %38)
  br label %11

40:                                               ; preds = %11
  %41 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %42 = call i32 @strbuf_addch(%struct.strbuf* %41, i8 signext 39)
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
