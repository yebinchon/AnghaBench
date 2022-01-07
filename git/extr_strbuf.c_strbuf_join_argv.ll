; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_join_argv.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_join_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strbuf_join_argv(%struct.strbuf* %0, i32 %1, i8** %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8 %3, i8* %9, align 1
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  br label %38

16:                                               ; preds = %4
  %17 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %17, i8* %19)
  br label %21

21:                                               ; preds = %25, %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %27 = load i8, i8* %9, align 1
  %28 = call i32 @strbuf_addch(%struct.strbuf* %26, i8 signext %27)
  %29 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %29, i8* %32)
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
