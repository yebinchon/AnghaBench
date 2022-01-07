; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-index-part.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@msgs_read = common dso_local global i32 0, align 4
@mod = common dso_local global i32 0, align 4
@rem = common dso_local global i32 0, align 4
@LastMsg = common dso_local global i32* null, align 8
@msgs_analyzed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @get_hash(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @msgs_read, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @msgs_read, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mod, align 4
  %14 = srem i32 %12, %13
  %15 = load i32, i32* @rem, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load i32*, i32** @LastMsg, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = call i32 @store_entry(%struct.TYPE_4__* %25)
  %27 = load i32*, i32** @LastMsg, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @msgs_analyzed, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @msgs_analyzed, align 4
  br label %33

33:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @get_hash(i32) #1

declare dso_local i32 @store_entry(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
