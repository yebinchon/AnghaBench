; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, i64, i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FLAG_CLOCKSOURCE = common dso_local global i32 0, align 4
@FLAG_REPROGRAM = common dso_local global i32 0, align 4
@FLAG_IRQCONTEXT = common dso_local global i32 0, align 4
@FLAG_CLOCKEVENT = common dso_local global i32 0, align 4
@FLAG_SKIPEVENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_cmt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_cmt_channel*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sh_cmt_channel*
  store %struct.sh_cmt_channel* %7, %struct.sh_cmt_channel** %5, align 8
  %8 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %9 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %10 = call i32 @sh_cmt_read_cmcsr(%struct.sh_cmt_channel* %9)
  %11 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %12 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %11, i32 0, i32 6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %10, %17
  %19 = call i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel* %8, i32 %18)
  %20 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %21 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FLAG_CLOCKSOURCE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %28 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %32 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  br label %37

37:                                               ; preds = %26, %2
  %38 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %39 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FLAG_REPROGRAM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %49 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %52 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %53 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %57 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %50
  %63 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %64 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %62
  %70 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %71 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %70, i32 0, i32 4
  %72 = call i64 @clockevent_state_oneshot(%struct.TYPE_8__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %76 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %79 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @FLAG_REPROGRAM, align 4
  %81 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %82 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %74, %69
  %86 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %87 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %88, align 8
  %90 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %91 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %90, i32 0, i32 4
  %92 = call i32 %89(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %85, %62
  br label %94

94:                                               ; preds = %93, %50
  %95 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %98 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %102 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FLAG_REPROGRAM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %94
  %108 = load i32, i32* @FLAG_REPROGRAM, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %111 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %115 = call i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_channel* %114, i32 1)
  %116 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %117 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %107
  %123 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %124 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %123, i32 0, i32 4
  %125 = call i64 @clockevent_state_shutdown(%struct.TYPE_8__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %129 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %132 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127, %122
  %136 = load i32, i32* @FLAG_REPROGRAM, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %139 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %127
  br label %143

143:                                              ; preds = %142, %107
  br label %144

144:                                              ; preds = %143, %94
  %145 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %5, align 8
  %148 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %151
}

declare dso_local i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_read_cmcsr(%struct.sh_cmt_channel*) #1

declare dso_local i64 @clockevent_state_oneshot(%struct.TYPE_8__*) #1

declare dso_local i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_channel*, i32) #1

declare dso_local i64 @clockevent_state_shutdown(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
