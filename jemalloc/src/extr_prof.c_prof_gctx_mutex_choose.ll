; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_gctx_mutex_choose.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_gctx_mutex_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cum_gctxs = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@gctx_locks = common dso_local global i32* null, align 8
@PROF_NCTX_LOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @prof_gctx_mutex_choose() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ATOMIC_RELAXED, align 4
  %3 = call i32 @atomic_fetch_add_u(i32* @cum_gctxs, i32 1, i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32*, i32** @gctx_locks, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sub i32 %5, 1
  %7 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %8 = urem i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %4, i64 %9
  ret i32* %10
}

declare dso_local i32 @atomic_fetch_add_u(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
