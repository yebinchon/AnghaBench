; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_toggle_floating_mode.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_toggle_floating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@CT_FLOATING_CON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Cannot toggle floating mode on con = %p because it is of type CT_FLOATING_CON.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"already floating, re-setting to tiling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toggle_floating_mode(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CT_FLOATING_CON, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @ELOG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %11)
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i64 @con_is_floating(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32 @LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @floating_disable(%struct.TYPE_7__* %19)
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @floating_enable(%struct.TYPE_7__* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17, %10
  ret void
}

declare dso_local i32 @ELOG(i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_7__*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @floating_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @floating_enable(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
