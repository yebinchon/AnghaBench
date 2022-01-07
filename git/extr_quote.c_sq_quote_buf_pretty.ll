; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_sq_quote_buf_pretty.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_sq_quote_buf_pretty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@sq_quote_buf_pretty.ok_punct = internal constant [11 x i8] c"+,-./:=@_^\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"''\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sq_quote_buf_pretty(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %45

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %38, %12
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @isalpha(i8 signext %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isdigit(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @sq_quote_buf_pretty.ok_punct, i64 0, i64 0), i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @sq_quote_buf(%struct.strbuf* %34, i8* %35)
  br label %45

37:                                               ; preds = %28, %23, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %33, %9
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @sq_quote_buf(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
