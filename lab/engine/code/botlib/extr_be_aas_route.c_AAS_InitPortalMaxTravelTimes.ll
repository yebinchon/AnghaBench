; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitPortalMaxTravelTimes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitPortalMaxTravelTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitPortalMaxTravelTimes() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %6 = call i32 @FreeMemory(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i64 @GetClearedMemory(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %25, %7
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @AAS_PortalMaxTravelTime(i32 %19)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %14

28:                                               ; preds = %14
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @AAS_PortalMaxTravelTime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
