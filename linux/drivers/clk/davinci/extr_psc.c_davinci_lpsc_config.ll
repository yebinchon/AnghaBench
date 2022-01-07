; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_lpsc_clk = type { i32, i32, i32, i32 }

@MDSTAT_STATE_MASK = common dso_local global i32 0, align 4
@LPSC_FORCE = common dso_local global i32 0, align 4
@MDCTL_FORCE = common dso_local global i32 0, align 4
@PDSTAT_STATE_MASK = common dso_local global i32 0, align 4
@PDCTL_NEXT = common dso_local global i32 0, align 4
@PTCMD = common dso_local global i32 0, align 4
@EPCPR = common dso_local global i32 0, align 4
@PDCTL_EPCGOOD = common dso_local global i32 0, align 4
@PTSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_lpsc_clk*, i32)* @davinci_lpsc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_lpsc_config(%struct.davinci_lpsc_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.davinci_lpsc_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.davinci_lpsc_clk* %0, %struct.davinci_lpsc_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %10 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %13 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MDCTL(i32 %14)
  %16 = load i32, i32* @MDSTAT_STATE_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @regmap_write_bits(i32 %11, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %20 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LPSC_FORCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %27 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %30 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MDCTL(i32 %31)
  %33 = load i32, i32* @MDCTL_FORCE, align 4
  %34 = load i32, i32* @MDCTL_FORCE, align 4
  %35 = call i32 @regmap_write_bits(i32 %28, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %2
  %37 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %38 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %41 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PDSTAT(i32 %42)
  %44 = call i32 @regmap_read(i32 %39, i32 %43, i32* %6)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PDSTAT_STATE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %36
  %50 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %51 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %54 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PDCTL(i32 %55)
  %57 = load i32, i32* @PDCTL_NEXT, align 4
  %58 = load i32, i32* @PDCTL_NEXT, align 4
  %59 = call i32 @regmap_write_bits(i32 %52, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %61 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PTCMD, align 4
  %64 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %65 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = call i32 @regmap_write(i32 %62, i32 %63, i32 %67)
  %69 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %70 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EPCPR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %76 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = and i32 %74, %78
  %80 = call i32 @regmap_read_poll_timeout(i32 %71, i32 %72, i32 %73, i32 %79, i32 0, i32 0)
  %81 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %82 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %85 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PDCTL(i32 %86)
  %88 = load i32, i32* @PDCTL_EPCGOOD, align 4
  %89 = load i32, i32* @PDCTL_EPCGOOD, align 4
  %90 = call i32 @regmap_write_bits(i32 %83, i32 %87, i32 %88, i32 %89)
  br label %101

91:                                               ; preds = %36
  %92 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %93 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PTCMD, align 4
  %96 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %97 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = call i32 @regmap_write(i32 %94, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %91, %49
  %102 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %103 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PTSTAT, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %109 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = and i32 %107, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @regmap_read_poll_timeout(i32 %104, i32 %105, i32 %106, i32 %115, i32 0, i32 0)
  %117 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %118 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %121 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MDSTAT(i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @MDSTAT_STATE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @regmap_read_poll_timeout(i32 %119, i32 %123, i32 %124, i32 %130, i32 0, i32 0)
  ret void
}

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @MDCTL(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PDSTAT(i32) #1

declare dso_local i32 @PDCTL(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MDSTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
