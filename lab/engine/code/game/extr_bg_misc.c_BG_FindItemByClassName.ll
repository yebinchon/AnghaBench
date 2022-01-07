; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_FindItemByClassName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_FindItemByClassName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@bg_itemlist = common dso_local global %struct.TYPE_4__* null, align 8
@bg_defaultNumItems = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BG_FindItemByClassName(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bg_itemlist, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 1
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @Q_stricmp(i64 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %2, align 8
  br label %39

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 1
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %4, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @dmlab_finditem(i8* %27, i32* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = call i32 (...) @BG_UpdateItems()
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bg_itemlist, align 8
  %33 = load i32, i32* @bg_defaultNumItems, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %36
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %2, align 8
  br label %39

38:                                               ; preds = %26
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %39

39:                                               ; preds = %38, %30, %20
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %40
}

declare dso_local i32 @Q_stricmp(i64, i8*) #1

declare dso_local i64 @dmlab_finditem(i8*, i32*) #1

declare dso_local i32 @BG_UpdateItems(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
