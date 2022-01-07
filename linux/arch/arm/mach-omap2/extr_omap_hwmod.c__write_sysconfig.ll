; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__write_sysconfig.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__write_sysconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.omap_hwmod*)*, %struct.TYPE_3__*, i32 (%struct.omap_hwmod*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"omap_hwmod: %s: cannot write OCP_SYSCONFIG: not defined on hwmod's class\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.omap_hwmod*)* @_write_sysconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_write_sysconfig(i32 %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hwmod*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %4, align 8
  %5 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %6 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %13 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %19 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %21 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** %23, align 8
  %25 = icmp ne i32 (%struct.omap_hwmod*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** %30, align 8
  %32 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %33 = call i32 %31(%struct.omap_hwmod* %32)
  br label %34

34:                                               ; preds = %26, %16
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %37 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %38 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @omap_hwmod_write(i32 %35, %struct.omap_hwmod* %36, i32 %43)
  %45 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %46 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** %48, align 8
  %50 = icmp ne i32 (%struct.omap_hwmod*)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** %55, align 8
  %57 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %58 = call i32 %56(%struct.omap_hwmod* %57)
  br label %59

59:                                               ; preds = %11, %51, %34
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @omap_hwmod_write(i32, %struct.omap_hwmod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
