; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_set_focus_order.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_set_focus_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@focused = common dso_local global i32 0, align 4
@CT_WORKSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_focus_order(%struct.TYPE_8__* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %14, %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = call i32 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = call %struct.TYPE_8__* @TAILQ_FIRST(i32* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32, i32* @focused, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.TYPE_8__* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CT_WORKSPACE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i64 @con_inside_floating(%struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %57

47:                                               ; preds = %36, %30
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* @focused, align 4
  %56 = call i32 @TAILQ_INSERT_TAIL(i32* %49, %struct.TYPE_8__* %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %26

60:                                               ; preds = %26
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_8__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @con_inside_floating(%struct.TYPE_8__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
