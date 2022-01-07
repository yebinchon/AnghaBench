; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_sq_quote_buf.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_sq_quote_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"'!\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"'\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sq_quote_buf(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = call i8* @strbuf_detach(%struct.strbuf* %13, i32* null)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = call i32 @strbuf_addch(%struct.strbuf* %16, i8 signext 39)
  br label %18

18:                                               ; preds = %47, %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcspn(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %24, i64* %6, align 8
  %25 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @strbuf_add(%struct.strbuf* %25, i8* %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %37, %22
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @need_bs_quote(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8, i8* %41, align 1
  %44 = call i32 @strbuf_addch(%struct.strbuf* %40, i8 signext %43)
  %45 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %46 = call i32 @strbuf_addch(%struct.strbuf* %45, i8 signext 39)
  br label %32

47:                                               ; preds = %32
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %50 = call i32 @strbuf_addch(%struct.strbuf* %49, i8 signext 39)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  ret void
}

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i64 @need_bs_quote(i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
