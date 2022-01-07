; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_num_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_num_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_9__* null, align 8
@agp_memory_reserved = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_num_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 128, label %11
    i32 130, label %16
    i32 129, label %21
    i32 131, label %26
    i32 132, label %31
  ]

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct.TYPE_12__* @A_SIZE_8(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %1, align 4
  br label %37

16:                                               ; preds = %0
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.TYPE_14__* @A_SIZE_16(i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %1, align 4
  br label %37

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = call %struct.TYPE_13__* @A_SIZE_32(i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %1, align 4
  br label %37

26:                                               ; preds = %0
  %27 = load i8*, i8** %2, align 8
  %28 = call %struct.TYPE_10__* @A_SIZE_LVL2(i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %1, align 4
  br label %37

31:                                               ; preds = %0
  %32 = load i8*, i8** %2, align 8
  %33 = call %struct.TYPE_11__* @A_SIZE_FIX(i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %1, align 4
  br label %37

36:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %31, %26, %21, %16, %11
  %38 = load i32, i32* @agp_memory_reserved, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* %1, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_12__* @A_SIZE_8(i8*) #1

declare dso_local %struct.TYPE_14__* @A_SIZE_16(i8*) #1

declare dso_local %struct.TYPE_13__* @A_SIZE_32(i8*) #1

declare dso_local %struct.TYPE_10__* @A_SIZE_LVL2(i8*) #1

declare dso_local %struct.TYPE_11__* @A_SIZE_FIX(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
