; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_do_subsidiary_caches_debugcheck.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_do_subsidiary_caches_debugcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @do_subsidiary_caches_debugcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_subsidiary_caches_debugcheck(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %3 = load %struct.cache*, %struct.cache** %2, align 8
  %4 = getelementptr inbounds %struct.cache, %struct.cache* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @of_node_is_type(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @of_node_is_type(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
