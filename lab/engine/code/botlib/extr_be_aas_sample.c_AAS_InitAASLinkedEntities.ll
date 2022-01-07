; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_InitAASLinkedEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_InitAASLinkedEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32**, i32 }

@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitAASLinkedEntities() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 2), align 8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  %6 = icmp ne i32** %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  %9 = call i32 @FreeMemory(i32** %8)
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @GetClearedHunkMemory(i32 %14)
  %16 = inttoptr i64 %15 to i32**
  store i32** %16, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  br label %17

17:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @FreeMemory(i32**) #1

declare dso_local i64 @GetClearedHunkMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
