; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__resolve_clkdm_deps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__resolve_clkdm_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32 }
%struct.clkdm_dep = type { i64, i64 }

@.str = private unnamed_addr constant [92 x i8] c"clockdomain: %s: could not find clkdm %s while resolving dependencies - should never happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clockdomain*, %struct.clkdm_dep*)* @_resolve_clkdm_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_resolve_clkdm_deps(%struct.clockdomain* %0, %struct.clkdm_dep* %1) #0 {
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca %struct.clkdm_dep*, align 8
  %5 = alloca %struct.clkdm_dep*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store %struct.clkdm_dep* %1, %struct.clkdm_dep** %4, align 8
  %6 = load %struct.clkdm_dep*, %struct.clkdm_dep** %4, align 8
  store %struct.clkdm_dep* %6, %struct.clkdm_dep** %5, align 8
  br label %7

7:                                                ; preds = %43, %2
  %8 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %9 = icmp ne %struct.clkdm_dep* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %12 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %46

17:                                               ; preds = %15
  %18 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %19 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %25 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @_clkdm_lookup(i64 %26)
  %28 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %29 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %31 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %37 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %40 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @WARN(i32 %35, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %23, %22
  %44 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %45 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %44, i32 1
  store %struct.clkdm_dep* %45, %struct.clkdm_dep** %5, align 8
  br label %7

46:                                               ; preds = %15
  ret void
}

declare dso_local i64 @_clkdm_lookup(i64) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
