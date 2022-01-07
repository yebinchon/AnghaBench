; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_LoadBSPFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_LoadBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }

@game = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"LoadBSPFile: unsupported BSP file format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadBSPFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %4 = icmp eq %struct.TYPE_2__* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %9 = icmp eq i32 (i8*)* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5, %1
  %11 = call i32 @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 %15(i8* %16)
  %18 = call i32 (...) @SwapBSPFile()
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @SwapBSPFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
