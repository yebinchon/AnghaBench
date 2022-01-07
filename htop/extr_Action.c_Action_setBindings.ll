; ModuleID = '/home/carl/AnghaBench/htop/extr_Action.c_Action_setBindings.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Action.c_Action_setBindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@actionResize = common dso_local global i32 0, align 4
@KEY_RESIZE = common dso_local global i64 0, align 8
@actionSortByMemory = common dso_local global i32 0, align 4
@actionSortByTime = common dso_local global i32 0, align 4
@actionSortByCPU = common dso_local global i32 0, align 4
@actionToggleUserlandThreads = common dso_local global i32 0, align 4
@actionToggleKernelThreads = common dso_local global i32 0, align 4
@actionToggleProgramPath = common dso_local global i32 0, align 4
@actionToggleTreeView = common dso_local global i32 0, align 4
@actionIncFilter = common dso_local global i32 0, align 4
@actionIncSearch = common dso_local global i32 0, align 4
@actionHigherPriority = common dso_local global i32 0, align 4
@actionLowerPriority = common dso_local global i32 0, align 4
@actionInvertSortOrder = common dso_local global i32 0, align 4
@actionExpandCollapseOrSortColumn = common dso_local global i32 0, align 4
@actionSetSortColumn = common dso_local global i32 0, align 4
@actionQuit = common dso_local global i32 0, align 4
@actionSetAffinity = common dso_local global i32 0, align 4
@actionKill = common dso_local global i32 0, align 4
@actionExpandOrCollapse = common dso_local global i32 0, align 4
@KEY_RECLICK = common dso_local global i64 0, align 8
@actionCollapseIntoParent = common dso_local global i32 0, align 4
@actionFilterByUser = common dso_local global i32 0, align 4
@Action_follow = common dso_local global i32 0, align 4
@actionSetup = common dso_local global i32 0, align 4
@actionLsof = common dso_local global i32 0, align 4
@actionStrace = common dso_local global i32 0, align 4
@actionTag = common dso_local global i32 0, align 4
@actionRedraw = common dso_local global i32 0, align 4
@actionHelp = common dso_local global i32 0, align 4
@actionUntagAll = common dso_local global i32 0, align 4
@actionTagAllChildren = common dso_local global i32 0, align 4
@actionShowEnvScreen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Action_setBindings(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @actionResize, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i64, i64* @KEY_RESIZE, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @actionSortByMemory, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 77
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @actionSortByTime, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 84
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @actionSortByCPU, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 80
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @actionToggleUserlandThreads, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 72
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @actionToggleKernelThreads, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 75
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @actionToggleProgramPath, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 112
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @actionToggleTreeView, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 116
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @actionToggleTreeView, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i64 @KEY_F(i32 5)
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @actionIncFilter, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @KEY_F(i32 4)
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @actionIncFilter, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 92
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @actionIncSearch, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @KEY_F(i32 3)
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @actionIncSearch, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 47
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @actionHigherPriority, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 93
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @actionHigherPriority, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @KEY_F(i32 7)
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @actionLowerPriority, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 91
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @actionLowerPriority, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i64 @KEY_F(i32 8)
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @actionInvertSortOrder, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 73
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @actionExpandCollapseOrSortColumn, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = call i64 @KEY_F(i32 6)
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @actionExpandCollapseOrSortColumn, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = call i64 @KEY_F(i32 18)
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @actionSetSortColumn, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 60
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @actionSetSortColumn, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 44
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @actionSetSortColumn, align 4
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 62
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @actionSetSortColumn, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 46
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @actionQuit, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = call i64 @KEY_F(i32 10)
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @actionQuit, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 113
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @actionSetAffinity, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 97
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @actionKill, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = call i64 @KEY_F(i32 9)
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @actionKill, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 107
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @actionExpandOrCollapse, align 4
  %101 = load i32*, i32** %2, align 8
  %102 = load i64, i64* @KEY_RECLICK, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @actionExpandOrCollapse, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 43
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @actionExpandOrCollapse, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 61
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @actionExpandOrCollapse, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 45
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @actionCollapseIntoParent, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 127
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @actionFilterByUser, align 4
  %117 = load i32*, i32** %2, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 117
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @Action_follow, align 4
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 70
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @actionSetup, align 4
  %123 = load i32*, i32** %2, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 83
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @actionSetup, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 67
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @actionSetup, align 4
  %129 = load i32*, i32** %2, align 8
  %130 = call i64 @KEY_F(i32 2)
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @actionLsof, align 4
  %133 = load i32*, i32** %2, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 108
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @actionStrace, align 4
  %136 = load i32*, i32** %2, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 115
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @actionTag, align 4
  %139 = load i32*, i32** %2, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 32
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @actionRedraw, align 4
  %142 = load i32*, i32** %2, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @actionHelp, align 4
  %145 = load i32*, i32** %2, align 8
  %146 = call i64 @KEY_F(i32 1)
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @actionHelp, align 4
  %149 = load i32*, i32** %2, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 104
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @actionHelp, align 4
  %152 = load i32*, i32** %2, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 63
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @actionUntagAll, align 4
  %155 = load i32*, i32** %2, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 85
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @actionTagAllChildren, align 4
  %158 = load i32*, i32** %2, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 99
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @actionShowEnvScreen, align 4
  %161 = load i32*, i32** %2, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 101
  store i32 %160, i32* %162, align 4
  ret void
}

declare dso_local i64 @KEY_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
