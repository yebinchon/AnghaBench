; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_UpdateCustomItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_UpdateCustomItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@bg_defaultNumItems = common dso_local global i32 0, align 4
@bg_numItems = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_3__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_UpdateCustomItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call i32 (...) @BG_InitItemList()
  %4 = call i32 (...) @BG_UpdateItems()
  %5 = load i32, i32* @bg_defaultNumItems, align 4
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @bg_numItems, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cg_items, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %2, align 8
  %15 = load i32, i32* @qfalse, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @CG_RegisterItemVisuals(i32 %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %6

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BG_InitItemList(...) #1

declare dso_local i32 @BG_UpdateItems(...) #1

declare dso_local i32 @CG_RegisterItemVisuals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
