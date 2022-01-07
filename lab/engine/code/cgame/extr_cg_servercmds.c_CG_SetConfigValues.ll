; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_SetConfigValues.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_SetConfigValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8, i8, i8, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@CS_SCORES1 = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CS_SCORES2 = common dso_local global i32 0, align 4
@CS_LEVEL_START_TIME = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@CS_FLAGSTATUS = common dso_local global i32 0, align 4
@CS_WARMUP = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GT_1FCTF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_SetConfigValues() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @CS_SCORES1, align 4
  %3 = call i8* @CG_ConfigString(i32 %2)
  %4 = call i8* @atoi(i8* %3)
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 6), align 8
  %5 = load i32, i32* @CS_SCORES2, align 4
  %6 = call i8* @CG_ConfigString(i32 %5)
  %7 = call i8* @atoi(i8* %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 5), align 8
  %8 = load i32, i32* @CS_LEVEL_START_TIME, align 4
  %9 = call i8* @CG_ConfigString(i32 %8)
  %10 = call i8* @atoi(i8* %9)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 4), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 0), align 8
  %12 = load i64, i64* @GT_CTF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %0
  %15 = load i32, i32* @CS_FLAGSTATUS, align 4
  %16 = call i8* @CG_ConfigString(i32 %15)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sub nsw i32 %20, 48
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 1), align 8
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 48
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 2), align 1
  br label %29

29:                                               ; preds = %14, %0
  %30 = load i32, i32* @CS_WARMUP, align 4
  %31 = call i8* @CG_ConfigString(i32 %30)
  %32 = call i8* @atoi(i8* %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @CG_ConfigString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
