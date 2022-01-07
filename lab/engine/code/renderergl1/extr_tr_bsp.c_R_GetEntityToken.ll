; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_GetEntityToken.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_GetEntityToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@s_worldData = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_GetEntityToken(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i8* @COM_Parse(i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_worldData, i32 0, i32 1))
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @Q_strncpyz(i8* %8, i8* %9, i32 %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_worldData, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_worldData, i32 0, i32 0), align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_worldData, i32 0, i32 1), align 8
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %14, %2
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i8* @COM_Parse(i64*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
