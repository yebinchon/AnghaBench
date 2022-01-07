; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32*, {}*, %struct.TYPE_6__, {}*, {}*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SYSC_SYSCONFIG = common dso_local global i64 0, align 8
@SYSC_SYSSTATUS = common dso_local global i64 0, align 8
@SYSC_QUIRK_NO_RESET_ON_INIT = common dso_local global i32 0, align 4
@SYSS_QUIRK_RESETDONE_INVERTED = common dso_local global i32 0, align 4
@MAX_MODULE_SOFTRESET_WAIT = common dso_local global i32 0, align 4
@SYSC_QUIRK_RESET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_reset(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sysc*, %struct.sysc** %3, align 8
  %12 = getelementptr inbounds %struct.sysc, %struct.sysc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SYSC_SYSCONFIG, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.sysc*, %struct.sysc** %3, align 8
  %18 = getelementptr inbounds %struct.sysc, %struct.sysc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @SYSC_SYSSTATUS, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.sysc*, %struct.sysc** %3, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load %struct.sysc*, %struct.sysc** %3, align 8
  %32 = getelementptr inbounds %struct.sysc, %struct.sysc* %31, i32 0, i32 5
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = load %struct.sysc*, %struct.sysc** %3, align 8
  %41 = getelementptr inbounds %struct.sysc, %struct.sysc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SYSC_QUIRK_NO_RESET_ON_INIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %30, %27, %1
  store i32 0, i32* %2, align 4
  br label %157

48:                                               ; preds = %39
  %49 = load %struct.sysc*, %struct.sysc** %3, align 8
  %50 = getelementptr inbounds %struct.sysc, %struct.sysc* %49, i32 0, i32 5
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @BIT(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sysc*, %struct.sysc** %3, align 8
  %58 = getelementptr inbounds %struct.sysc, %struct.sysc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SYSS_QUIRK_RESETDONE_INVERTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %70

65:                                               ; preds = %48
  %66 = load %struct.sysc*, %struct.sysc** %3, align 8
  %67 = getelementptr inbounds %struct.sysc, %struct.sysc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load %struct.sysc*, %struct.sysc** %3, align 8
  %72 = getelementptr inbounds %struct.sysc, %struct.sysc* %71, i32 0, i32 4
  %73 = bitcast {}** %72 to i32 (%struct.sysc*)**
  %74 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %73, align 8
  %75 = icmp ne i32 (%struct.sysc*)* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.sysc*, %struct.sysc** %3, align 8
  %78 = getelementptr inbounds %struct.sysc, %struct.sysc* %77, i32 0, i32 4
  %79 = bitcast {}** %78 to i32 (%struct.sysc*)**
  %80 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %79, align 8
  %81 = load %struct.sysc*, %struct.sysc** %3, align 8
  %82 = call i32 %80(%struct.sysc* %81)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.sysc*, %struct.sysc** %3, align 8
  %85 = call i32 @sysc_read_sysconfig(%struct.sysc* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.sysc*, %struct.sysc** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @sysc_write(%struct.sysc* %89, i32 %90, i32 %91)
  %93 = load %struct.sysc*, %struct.sysc** %3, align 8
  %94 = getelementptr inbounds %struct.sysc, %struct.sysc* %93, i32 0, i32 3
  %95 = bitcast {}** %94 to i32 (%struct.sysc*)**
  %96 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %95, align 8
  %97 = icmp ne i32 (%struct.sysc*)* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = load %struct.sysc*, %struct.sysc** %3, align 8
  %100 = getelementptr inbounds %struct.sysc, %struct.sysc* %99, i32 0, i32 3
  %101 = bitcast {}** %100 to i32 (%struct.sysc*)**
  %102 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %101, align 8
  %103 = load %struct.sysc*, %struct.sysc** %3, align 8
  %104 = call i32 %102(%struct.sysc* %103)
  br label %105

105:                                              ; preds = %98, %83
  %106 = load i32, i32* %5, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.sysc*, %struct.sysc** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.sysc*, %struct.sysc** %3, align 8
  %113 = getelementptr inbounds %struct.sysc, %struct.sysc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %111, %115
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %121 = call i32 @readx_poll_timeout(i32 (%struct.sysc*)* @sysc_read_sysstatus, %struct.sysc* %109, i32 %110, i32 %119, i32 100, i32 %120)
  store i32 %121, i32* %8, align 4
  br label %142

122:                                              ; preds = %105
  %123 = load %struct.sysc*, %struct.sysc** %3, align 8
  %124 = getelementptr inbounds %struct.sysc, %struct.sysc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SYSC_QUIRK_RESET_STATUS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load %struct.sysc*, %struct.sysc** %3, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %140 = call i32 @readx_poll_timeout(i32 (%struct.sysc*)* @sysc_read_sysconfig, %struct.sysc* %131, i32 %132, i32 %138, i32 100, i32 %139)
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %130, %122
  br label %142

142:                                              ; preds = %141, %108
  %143 = load %struct.sysc*, %struct.sysc** %3, align 8
  %144 = getelementptr inbounds %struct.sysc, %struct.sysc* %143, i32 0, i32 1
  %145 = bitcast {}** %144 to i32 (%struct.sysc*)**
  %146 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %145, align 8
  %147 = icmp ne i32 (%struct.sysc*)* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load %struct.sysc*, %struct.sysc** %3, align 8
  %150 = getelementptr inbounds %struct.sysc, %struct.sysc* %149, i32 0, i32 1
  %151 = bitcast {}** %150 to i32 (%struct.sysc*)**
  %152 = load i32 (%struct.sysc*)*, i32 (%struct.sysc*)** %151, align 8
  %153 = load %struct.sysc*, %struct.sysc** %3, align 8
  %154 = call i32 %152(%struct.sysc* %153)
  br label %155

155:                                              ; preds = %148, %142
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %47
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @sysc_read_sysconfig(%struct.sysc*) #1

declare dso_local i32 @sysc_write(%struct.sysc*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout(i32 (%struct.sysc*)*, %struct.sysc*, i32, i32, i32, i32) #1

declare dso_local i32 @sysc_read_sysstatus(%struct.sysc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
