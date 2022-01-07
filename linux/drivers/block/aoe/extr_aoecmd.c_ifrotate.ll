; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ifrotate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ifrotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoeif = type { i32* }
%struct.aoetgt = type { %struct.aoeif*, %struct.aoeif* }

@NAOEIFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoeif* (%struct.aoetgt*)* @ifrotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoeif* @ifrotate(%struct.aoetgt* %0) #0 {
  %2 = alloca %struct.aoeif*, align 8
  %3 = alloca %struct.aoetgt*, align 8
  %4 = alloca %struct.aoeif*, align 8
  store %struct.aoetgt* %0, %struct.aoetgt** %3, align 8
  %5 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %6 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %5, i32 0, i32 0
  %7 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  store %struct.aoeif* %7, %struct.aoeif** %4, align 8
  %8 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %9 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %8, i32 1
  store %struct.aoeif* %9, %struct.aoeif** %4, align 8
  %10 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %11 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %12 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %11, i32 0, i32 1
  %13 = load %struct.aoeif*, %struct.aoeif** %12, align 8
  %14 = load i64, i64* @NAOEIFS, align 8
  %15 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %13, i64 %14
  %16 = icmp uge %struct.aoeif* %10, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %19 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %1
  %23 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %24 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %23, i32 0, i32 1
  %25 = load %struct.aoeif*, %struct.aoeif** %24, align 8
  store %struct.aoeif* %25, %struct.aoeif** %4, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %28 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.aoeif* null, %struct.aoeif** %2, align 8
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.aoeif*, %struct.aoeif** %4, align 8
  %34 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %35 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %34, i32 0, i32 0
  store %struct.aoeif* %33, %struct.aoeif** %35, align 8
  store %struct.aoeif* %33, %struct.aoeif** %2, align 8
  br label %36

36:                                               ; preds = %32, %31
  %37 = load %struct.aoeif*, %struct.aoeif** %2, align 8
  ret %struct.aoeif* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
