; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_shutdown_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_shutdown_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, i64, i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)*, i64 }
%struct.TYPE_5__ = type { i32 (i32*)* }

@ipmi_si_dev_attr_group = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shutdown_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_smi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smi_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.smi_info*
  store %struct.smi_info* %5, %struct.smi_info** %3, align 8
  %6 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %7 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %12 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @device_remove_group(i64 %14, i32* @ipmi_si_dev_attr_group)
  %16 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %17 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %26 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_set_drvdata(i64 %28, i32* null)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %32 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %34 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_6__*)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %40 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %41, align 8
  %43 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %44 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %43, i32 0, i32 5
  %45 = call i32 %42(%struct.TYPE_6__* %44)
  %46 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %47 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 (%struct.TYPE_6__*)* null, i32 (%struct.TYPE_6__*)** %48, align 8
  br label %49

49:                                               ; preds = %38, %30
  %50 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %51 = call i32 @stop_timer_and_thread(%struct.smi_info* %50)
  %52 = call i32 (...) @synchronize_rcu()
  br label %53

53:                                               ; preds = %66, %49
  %54 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %55 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %60 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SI_NORMAL, align 8
  %63 = icmp ne i64 %61, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ true, %53 ], [ %63, %58 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %68 = call i32 @poll(%struct.smi_info* %67)
  %69 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %53

70:                                               ; preds = %64
  %71 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %72 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %71, i32 0, i32 6
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %77 = call i32 @disable_si_irq(%struct.smi_info* %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %92, %78
  %80 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %81 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %86 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SI_NORMAL, align 8
  %89 = icmp ne i64 %87, %88
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ true, %79 ], [ %89, %84 ]
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %94 = call i32 @poll(%struct.smi_info* %93)
  %95 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %79

96:                                               ; preds = %90
  %97 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %98 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %97, i32 0, i32 6
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = icmp ne %struct.TYPE_5__* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %103 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %102, i32 0, i32 6
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (i32*)*, i32 (i32*)** %105, align 8
  %107 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %108 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 %106(i32* %109)
  br label %111

111:                                              ; preds = %101, %96
  %112 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %113 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %114, align 8
  %116 = icmp ne i32 (%struct.TYPE_6__*)* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %119 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %120, align 8
  %122 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %123 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %122, i32 0, i32 5
  %124 = call i32 %121(%struct.TYPE_6__* %123)
  %125 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 (%struct.TYPE_6__*)* null, i32 (%struct.TYPE_6__*)** %127, align 8
  br label %128

128:                                              ; preds = %117, %111
  %129 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %130 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %131, align 8
  %133 = icmp ne i32 (%struct.TYPE_6__*)* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %136 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %137, align 8
  %139 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %140 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %139, i32 0, i32 5
  %141 = call i32 %138(%struct.TYPE_6__* %140)
  %142 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %143 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 (%struct.TYPE_6__*)* null, i32 (%struct.TYPE_6__*)** %144, align 8
  br label %145

145:                                              ; preds = %134, %128
  %146 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %147 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @kfree(i32* %148)
  %150 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %151 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %150, i32 0, i32 4
  store i32* null, i32** %151, align 8
  %152 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %153 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %152, i32 0, i32 3
  store i32* null, i32** %153, align 8
  ret void
}

declare dso_local i32 @device_remove_group(i64, i32*) #1

declare dso_local i32 @dev_set_drvdata(i64, i32*) #1

declare dso_local i32 @stop_timer_and_thread(%struct.smi_info*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @poll(%struct.smi_info*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @disable_si_irq(%struct.smi_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
