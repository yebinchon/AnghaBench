; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_trim_trailing_newline.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_trim_trailing_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_trim_trailing_newline(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %3 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %4 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %53

7:                                                ; preds = %1
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %53

20:                                               ; preds = %7
  %21 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %26, %20
  %45 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %44, %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
