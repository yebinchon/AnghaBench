; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitRouting.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_InitRouting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@routingcachesize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"max_routingcache\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"4096\00", align 1
@max_routingcachesize = common dso_local global i32 0, align 4
@numareacacheupdates = common dso_local global i64 0, align 8
@numportalcacheupdates = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitRouting() #0 {
  %1 = call i32 (...) @AAS_InitTravelFlagFromType()
  %2 = call i32 (...) @AAS_InitAreaContentsTravelFlags()
  %3 = call i32 (...) @AAS_InitRoutingUpdate()
  %4 = call i32 (...) @AAS_CreateReversedReachability()
  %5 = call i32 (...) @AAS_InitClusterAreaCache()
  %6 = call i32 (...) @AAS_InitPortalCache()
  %7 = call i32 (...) @AAS_CalculateAreaTravelTimes()
  %8 = call i32 (...) @AAS_InitPortalMaxTravelTimes()
  %9 = call i32 (...) @AAS_InitReachabilityAreas()
  store i64 0, i64* @routingcachesize, align 8
  %10 = call i64 @LibVarValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 1024, %11
  store i32 %12, i32* @max_routingcachesize, align 4
  %13 = call i32 (...) @AAS_ReadRouteCache()
  ret void
}

declare dso_local i32 @AAS_InitTravelFlagFromType(...) #1

declare dso_local i32 @AAS_InitAreaContentsTravelFlags(...) #1

declare dso_local i32 @AAS_InitRoutingUpdate(...) #1

declare dso_local i32 @AAS_CreateReversedReachability(...) #1

declare dso_local i32 @AAS_InitClusterAreaCache(...) #1

declare dso_local i32 @AAS_InitPortalCache(...) #1

declare dso_local i32 @AAS_CalculateAreaTravelTimes(...) #1

declare dso_local i32 @AAS_InitPortalMaxTravelTimes(...) #1

declare dso_local i32 @AAS_InitReachabilityAreas(...) #1

declare dso_local i64 @LibVarValue(i8*, i8*) #1

declare dso_local i32 @AAS_ReadRouteCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
