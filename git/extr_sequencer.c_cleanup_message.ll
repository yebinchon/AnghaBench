; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_cleanup_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_cleanup_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@COMMIT_MSG_CLEANUP_SCISSORS = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_NONE = common dso_local global i32 0, align 4
@COMMIT_MSG_CLEANUP_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_message(%struct.strbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @COMMIT_MSG_CLEANUP_SCISSORS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %3
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wt_status_locate_end(i32 %17, i32 %20)
  %22 = call i32 @strbuf_setlen(%struct.strbuf* %14, i32 %21)
  br label %23

23:                                               ; preds = %13, %9
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @COMMIT_MSG_CLEANUP_NONE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @COMMIT_MSG_CLEANUP_ALL, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @strbuf_stripspace(%struct.strbuf* %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @wt_status_locate_end(i32, i32) #1

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
