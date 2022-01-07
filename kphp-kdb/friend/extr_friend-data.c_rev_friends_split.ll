; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__*, i32, i32)* @rev_friends_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rev_friends_split(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  br label %56

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28, %16
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %36, align 8
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  call void @rev_friends_split(%struct.TYPE_5__** %37, %struct.TYPE_5__** %39, %struct.TYPE_5__* %42, i32 %43, i32 %44)
  br label %56

45:                                               ; preds = %28, %22
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  call void @rev_friends_split(%struct.TYPE_5__** %49, %struct.TYPE_5__** %50, %struct.TYPE_5__* %53, i32 %54, i32 %55)
  br label %56

56:                                               ; preds = %13, %45, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
