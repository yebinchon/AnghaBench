; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_subject.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_subject(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %28, %3
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @get_one_line(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @is_blank_line(i8* %21, i32* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %10
  br label %45

25:                                               ; preds = %20
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = icmp ne %struct.strbuf* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %10

29:                                               ; preds = %25
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 2
  %33 = call i32 @strbuf_grow(%struct.strbuf* %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %37, i8* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @strbuf_add(%struct.strbuf* %41, i8* %42, i32 %43)
  store i32 0, i32* %7, align 4
  br label %10

45:                                               ; preds = %24
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i32 @get_one_line(i8*) #1

declare dso_local i64 @is_blank_line(i8*, i32*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
