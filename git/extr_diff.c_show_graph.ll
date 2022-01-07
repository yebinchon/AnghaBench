; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_graph.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8, i32, i8*, i8*)* @show_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_graph(%struct.strbuf* %0, i8 signext %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %25

14:                                               ; preds = %5
  %15 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* %16)
  %18 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %19 = load i8, i8* %7, align 1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @strbuf_addchars(%struct.strbuf* %18, i8 signext %19, i32 %20)
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %22, i8* %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
