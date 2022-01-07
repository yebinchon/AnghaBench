; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_deps_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_deps_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32 }
%struct.clkdm_dep = type { i64, %struct.clockdomain* }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clkdm_dep* (%struct.clockdomain*, %struct.clkdm_dep*)* @_clkdm_deps_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clkdm_dep* @_clkdm_deps_lookup(%struct.clockdomain* %0, %struct.clkdm_dep* %1) #0 {
  %3 = alloca %struct.clkdm_dep*, align 8
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.clkdm_dep*, align 8
  %6 = alloca %struct.clkdm_dep*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.clkdm_dep* %1, %struct.clkdm_dep** %5, align 8
  %7 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %8 = icmp ne %struct.clockdomain* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  %11 = icmp ne %struct.clkdm_dep* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.clkdm_dep* @ERR_PTR(i32 %14)
  store %struct.clkdm_dep* %15, %struct.clkdm_dep** %3, align 8
  br label %62

16:                                               ; preds = %9
  %17 = load %struct.clkdm_dep*, %struct.clkdm_dep** %5, align 8
  store %struct.clkdm_dep* %17, %struct.clkdm_dep** %6, align 8
  br label %18

18:                                               ; preds = %48, %16
  %19 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %20 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %25 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %24, i32 0, i32 1
  %26 = load %struct.clockdomain*, %struct.clockdomain** %25, align 8
  %27 = icmp ne %struct.clockdomain* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %30 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %35 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.clockdomain* @_clkdm_lookup(i64 %36)
  %38 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %39 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %38, i32 0, i32 1
  store %struct.clockdomain* %37, %struct.clockdomain** %39, align 8
  br label %40

40:                                               ; preds = %33, %28, %23
  %41 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %42 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %41, i32 0, i32 1
  %43 = load %struct.clockdomain*, %struct.clockdomain** %42, align 8
  %44 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %45 = icmp eq %struct.clockdomain* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %50 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %49, i32 1
  store %struct.clkdm_dep* %50, %struct.clkdm_dep** %6, align 8
  br label %18

51:                                               ; preds = %46, %18
  %52 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  %53 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.clkdm_dep* @ERR_PTR(i32 %58)
  store %struct.clkdm_dep* %59, %struct.clkdm_dep** %3, align 8
  br label %62

60:                                               ; preds = %51
  %61 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  store %struct.clkdm_dep* %61, %struct.clkdm_dep** %3, align 8
  br label %62

62:                                               ; preds = %60, %56, %12
  %63 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  ret %struct.clkdm_dep* %63
}

declare dso_local %struct.clkdm_dep* @ERR_PTR(i32) #1

declare dso_local %struct.clockdomain* @_clkdm_lookup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
