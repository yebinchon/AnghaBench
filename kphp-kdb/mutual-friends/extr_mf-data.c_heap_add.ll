; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_heap_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_heap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heap_size = common dso_local global i32 0, align 4
@MAX_HEAP = common dso_local global i32 0, align 4
@active_aio_queries = common dso_local global i32 0, align 4
@heap = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_add(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @heap_size, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @MAX_HEAP, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @active_aio_queries, align 4
  %9 = or i32 %8, 1048576
  store i32 %9, i32* @active_aio_queries, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* @heap_size, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @MAX_HEAP, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = load i32**, i32*** @heap, align 8
  %21 = load i32, i32* @heap_size, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @heap_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  store i32* %19, i32** %24, align 8
  %25 = load i32, i32* @heap_size, align 4
  %26 = call i32 @heap_fix_up(i32 %25)
  br label %27

27:                                               ; preds = %18, %13, %10
  ret void
}

declare dso_local i32 @heap_fix_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
