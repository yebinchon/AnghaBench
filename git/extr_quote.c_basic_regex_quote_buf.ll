; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_basic_regex_quote_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_basic_regex_quote_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @basic_regex_quote_buf(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 94
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %12 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 92)
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  %17 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext %16)
  br label %18

18:                                               ; preds = %10, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %25, align 1
  %28 = call i32 @strbuf_addch(%struct.strbuf* %24, i8 signext %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8, i8* %31, align 1
  store i8 %33, i8* %5, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %56 [
    i32 91, label %38
    i32 46, label %38
    i32 92, label %38
    i32 42, label %38
    i32 36, label %44
  ]

38:                                               ; preds = %35, %35, %35, %35
  %39 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %40 = call i32 @strbuf_addch(%struct.strbuf* %39, i8 signext 92)
  %41 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %42 = load i8, i8* %5, align 1
  %43 = call i32 @strbuf_addch(%struct.strbuf* %41, i8 signext %42)
  br label %60

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %51 = call i32 @strbuf_addch(%struct.strbuf* %50, i8 signext 92)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %54 = load i8, i8* %5, align 1
  %55 = call i32 @strbuf_addch(%struct.strbuf* %53, i8 signext %54)
  br label %60

56:                                               ; preds = %35
  %57 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %58 = load i8, i8* %5, align 1
  %59 = call i32 @strbuf_addch(%struct.strbuf* %57, i8 signext %58)
  br label %60

60:                                               ; preds = %56, %52, %38
  br label %30

61:                                               ; preds = %30
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
