; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addstr_xml_quoted.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_addstr_xml_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"\22<>&\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_addstr_xml_quoted(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcspn(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %5, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @strbuf_add(%struct.strbuf* %13, i8* %14, i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %36 [
    i32 34, label %23
    i32 60, label %26
    i32 62, label %29
    i32 38, label %32
    i32 0, label %35
  ]

23:                                               ; preds = %10
  %24 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %36

26:                                               ; preds = %10
  %27 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %36

29:                                               ; preds = %10
  %30 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %31 = call i32 @strbuf_addstr(%struct.strbuf* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %36

32:                                               ; preds = %10
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %36

35:                                               ; preds = %10
  br label %39

36:                                               ; preds = %10, %32, %29, %26, %23
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  br label %6

39:                                               ; preds = %35, %6
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
