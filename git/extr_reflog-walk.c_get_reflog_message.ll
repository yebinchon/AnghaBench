; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.reflog_walk_info = type { %struct.commit_reflog* }
%struct.commit_reflog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.reflog_info* }
%struct.reflog_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_reflog_message(%struct.strbuf* %0, %struct.reflog_walk_info* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.reflog_walk_info*, align 8
  %5 = alloca %struct.commit_reflog*, align 8
  %6 = alloca %struct.reflog_info*, align 8
  %7 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.reflog_walk_info* %1, %struct.reflog_walk_info** %4, align 8
  %8 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %4, align 8
  %9 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %8, i32 0, i32 0
  %10 = load %struct.commit_reflog*, %struct.commit_reflog** %9, align 8
  store %struct.commit_reflog* %10, %struct.commit_reflog** %5, align 8
  %11 = load %struct.commit_reflog*, %struct.commit_reflog** %5, align 8
  %12 = icmp ne %struct.commit_reflog* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.commit_reflog*, %struct.commit_reflog** %5, align 8
  %16 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.reflog_info*, %struct.reflog_info** %18, align 8
  %20 = load %struct.commit_reflog*, %struct.commit_reflog** %5, align 8
  %21 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %19, i64 %24
  store %struct.reflog_info* %25, %struct.reflog_info** %6, align 8
  %26 = load %struct.reflog_info*, %struct.reflog_info** %6, align 8
  %27 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %14
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %32, %14
  %36 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %37 = load %struct.reflog_info*, %struct.reflog_info** %6, align 8
  %38 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @strbuf_add(%struct.strbuf* %36, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %35, %13
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
