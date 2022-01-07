; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_block_drop_unreferenced.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_block_drop_unreferenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_drop_unreferenced(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @block_mark_referenced(i32 %5)
  %7 = call i32 (...) @gen_noop()
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = call %struct.TYPE_5__* @block_take(i32* %2)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = icmp eq %struct.TYPE_5__* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @inst_free(%struct.TYPE_5__* %23)
  br label %30

25:                                               ; preds = %17, %11
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = call i32 @inst_block(%struct.TYPE_5__* %27)
  %29 = call i32 @BLOCK(i32 %26, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %22
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @block_mark_referenced(i32) #1

declare dso_local i32 @gen_noop(...) #1

declare dso_local %struct.TYPE_5__* @block_take(i32*) #1

declare dso_local i32 @inst_free(%struct.TYPE_5__*) #1

declare dso_local i32 @BLOCK(i32, i32) #1

declare dso_local i32 @inst_block(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
