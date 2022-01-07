; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_rewrap_message_tail.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_rewrap_message_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.format_commit_context = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.format_commit_context*, i64, i64, i64)* @rewrap_message_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrap_message_tail(%struct.strbuf* %0, %struct.format_commit_context* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.format_commit_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store %struct.format_commit_context* %1, %struct.format_commit_context** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %12 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %18 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %24 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %67

29:                                               ; preds = %22, %16, %5
  %30 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %31 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %39 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %40 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %43 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %46 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %49 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strbuf_wrap(%struct.strbuf* %38, i64 %41, i64 %44, i64 %47, i64 %50)
  br label %52

52:                                               ; preds = %37, %29
  %53 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %57 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %60 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %63 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.format_commit_context*, %struct.format_commit_context** %7, align 8
  %66 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %52, %28
  ret void
}

declare dso_local i32 @strbuf_wrap(%struct.strbuf*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
