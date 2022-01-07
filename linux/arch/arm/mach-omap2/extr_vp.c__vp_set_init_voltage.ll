; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vp.c__vp_set_init_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vp.c__vp_set_init_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voltagedomain = type { i8 (i32)*, i32 (i8, i32)*, %struct.TYPE_3__*, %struct.omap_vp_instance* }
%struct.TYPE_3__ = type { i8 (i8)* }
%struct.omap_vp_instance = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.voltagedomain*, i8)* @_vp_set_init_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @_vp_set_init_voltage(%struct.voltagedomain* %0, i8 signext %1) #0 {
  %3 = alloca %struct.voltagedomain*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.omap_vp_instance*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.voltagedomain* %0, %struct.voltagedomain** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %9 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %8, i32 0, i32 3
  %10 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %9, align 8
  store %struct.omap_vp_instance* %10, %struct.omap_vp_instance** %5, align 8
  %11 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %12 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8 (i8)*, i8 (i8)** %14, align 8
  %16 = load i8, i8* %4, align 1
  %17 = call signext i8 %15(i8 signext %16)
  store i8 %17, i8* %7, align 1
  %18 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %19 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %18, i32 0, i32 0
  %20 = load i8 (i32)*, i8 (i32)** %19, align 8
  %21 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %22 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call signext i8 %20(i32 %23)
  store i8 %24, i8* %6, align 1
  %25 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %26 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %32 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = or i32 %30, %36
  %38 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %39 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %37, %43
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %6, align 1
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %53 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = call signext i8 @__ffs(i8 signext %56)
  %58 = sext i8 %57 to i32
  %59 = shl i32 %51, %58
  %60 = load i8, i8* %6, align 1
  %61 = sext i8 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %6, align 1
  %64 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %65 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %64, i32 0, i32 1
  %66 = load i32 (i8, i32)*, i32 (i8, i32)** %65, align 8
  %67 = load i8, i8* %6, align 1
  %68 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %69 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(i8 signext %67, i32 %70)
  %72 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %73 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %72, i32 0, i32 1
  %74 = load i32 (i8, i32)*, i32 (i8, i32)** %73, align 8
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %78 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = or i32 %76, %82
  %84 = trunc i32 %83 to i8
  %85 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %86 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %74(i8 signext %84, i32 %87)
  %89 = load %struct.voltagedomain*, %struct.voltagedomain** %3, align 8
  %90 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %89, i32 0, i32 1
  %91 = load i32 (i8, i32)*, i32 (i8, i32)** %90, align 8
  %92 = load i8, i8* %6, align 1
  %93 = load %struct.omap_vp_instance*, %struct.omap_vp_instance** %5, align 8
  %94 = getelementptr inbounds %struct.omap_vp_instance, %struct.omap_vp_instance* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %91(i8 signext %92, i32 %95)
  %97 = load i8, i8* %6, align 1
  ret i8 %97
}

declare dso_local signext i8 @__ffs(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
