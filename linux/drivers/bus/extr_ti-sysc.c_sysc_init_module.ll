; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYSC_QUIRK_NO_IDLE = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_IDLE_ON_INIT = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_RESET_ON_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Reset failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_init_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_init_module(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.sysc*, %struct.sysc** %3, align 8
  %7 = call i32 @sysc_rstctrl_reset_deassert(%struct.sysc* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %136

12:                                               ; preds = %1
  %13 = load %struct.sysc*, %struct.sysc** %3, align 8
  %14 = getelementptr inbounds %struct.sysc, %struct.sysc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SYSC_QUIRK_NO_IDLE, align 4
  %18 = load i32, i32* @SYSC_QUIRK_NO_IDLE_ON_INIT, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %12
  %24 = load %struct.sysc*, %struct.sysc** %3, align 8
  %25 = call i32 @sysc_clockdomain_init(%struct.sysc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %136

30:                                               ; preds = %23
  %31 = load %struct.sysc*, %struct.sysc** %3, align 8
  %32 = call i32 @sysc_clkdm_deny_idle(%struct.sysc* %31)
  %33 = load %struct.sysc*, %struct.sysc** %3, align 8
  %34 = call i32 @sysc_enable_opt_clocks(%struct.sysc* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %136

39:                                               ; preds = %30
  %40 = load %struct.sysc*, %struct.sysc** %3, align 8
  %41 = call i32 @sysc_enable_main_clocks(%struct.sysc* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %126

45:                                               ; preds = %39
  %46 = load %struct.sysc*, %struct.sysc** %3, align 8
  %47 = getelementptr inbounds %struct.sysc, %struct.sysc* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SYSC_QUIRK_NO_RESET_ON_INIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.sysc*, %struct.sysc** %3, align 8
  %55 = call i32 @sysc_rstctrl_reset_deassert(%struct.sysc* %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %119

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.sysc*, %struct.sysc** %3, align 8
  %62 = call i32 @sysc_read_revision(%struct.sysc* %61)
  %63 = load %struct.sysc*, %struct.sysc** %3, align 8
  %64 = getelementptr inbounds %struct.sysc, %struct.sysc* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sysc*, %struct.sysc** %3, align 8
  %66 = call i32 @sysc_init_revision_quirks(%struct.sysc* %65)
  %67 = load %struct.sysc*, %struct.sysc** %3, align 8
  %68 = call i32 @sysc_init_module_quirks(%struct.sysc* %67)
  %69 = load %struct.sysc*, %struct.sysc** %3, align 8
  %70 = getelementptr inbounds %struct.sysc, %struct.sysc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load %struct.sysc*, %struct.sysc** %3, align 8
  %75 = call i32 @sysc_legacy_init(%struct.sysc* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %119

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.sysc*, %struct.sysc** %3, align 8
  %82 = getelementptr inbounds %struct.sysc, %struct.sysc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load %struct.sysc*, %struct.sysc** %3, align 8
  %87 = getelementptr inbounds %struct.sysc, %struct.sysc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sysc_enable_module(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %119

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.sysc*, %struct.sysc** %3, align 8
  %96 = call i32 @sysc_reset(%struct.sysc* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.sysc*, %struct.sysc** %3, align 8
  %101 = getelementptr inbounds %struct.sysc, %struct.sysc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.sysc*, %struct.sysc** %3, align 8
  %107 = getelementptr inbounds %struct.sysc, %struct.sysc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.sysc*, %struct.sysc** %3, align 8
  %115 = getelementptr inbounds %struct.sysc, %struct.sysc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @sysc_disable_module(i32 %116)
  br label %118

118:                                              ; preds = %113, %110, %105
  br label %119

119:                                              ; preds = %118, %92, %78, %58
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.sysc*, %struct.sysc** %3, align 8
  %124 = call i32 @sysc_disable_main_clocks(%struct.sysc* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %44
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.sysc*, %struct.sysc** %3, align 8
  %131 = call i32 @sysc_disable_opt_clocks(%struct.sysc* %130)
  %132 = load %struct.sysc*, %struct.sysc** %3, align 8
  %133 = call i32 @sysc_clkdm_allow_idle(%struct.sysc* %132)
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %37, %28, %10
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @sysc_rstctrl_reset_deassert(%struct.sysc*, i32) #1

declare dso_local i32 @sysc_clockdomain_init(%struct.sysc*) #1

declare dso_local i32 @sysc_clkdm_deny_idle(%struct.sysc*) #1

declare dso_local i32 @sysc_enable_opt_clocks(%struct.sysc*) #1

declare dso_local i32 @sysc_enable_main_clocks(%struct.sysc*) #1

declare dso_local i32 @sysc_read_revision(%struct.sysc*) #1

declare dso_local i32 @sysc_init_revision_quirks(%struct.sysc*) #1

declare dso_local i32 @sysc_init_module_quirks(%struct.sysc*) #1

declare dso_local i32 @sysc_legacy_init(%struct.sysc*) #1

declare dso_local i32 @sysc_enable_module(i32) #1

declare dso_local i32 @sysc_reset(%struct.sysc*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sysc_disable_module(i32) #1

declare dso_local i32 @sysc_disable_main_clocks(%struct.sysc*) #1

declare dso_local i32 @sysc_disable_opt_clocks(%struct.sysc*) #1

declare dso_local i32 @sysc_clkdm_allow_idle(%struct.sysc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
