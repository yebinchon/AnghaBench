; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitZoneMemory.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_InitZoneMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"com_zoneMegs\00", align 1
@DEF_COMZONEMEGS_S = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@DEF_COMZONEMEGS = common dso_local global i32 0, align 4
@s_zoneTotal = common dso_local global i32 0, align 4
@mainzone = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Zone data failed to allocate %i megs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_InitZoneMemory() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @DEF_COMZONEMEGS_S, align 4
  %3 = load i32, i32* @CVAR_LATCH, align 4
  %4 = load i32, i32* @CVAR_ARCHIVE, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DEF_COMZONEMEGS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @DEF_COMZONEMEGS, align 4
  %14 = mul nsw i32 1048576, %13
  store i32 %14, i32* @s_zoneTotal, align 4
  br label %21

15:                                               ; preds = %0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1024
  %20 = mul nsw i32 %19, 1024
  store i32 %20, i32* @s_zoneTotal, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* @s_zoneTotal, align 4
  %23 = call i32 @calloc(i32 %22, i32 1)
  store i32 %23, i32* @mainzone, align 4
  %24 = load i32, i32* @mainzone, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ERR_FATAL, align 4
  %28 = load i32, i32* @s_zoneTotal, align 4
  %29 = sdiv i32 %28, 1048576
  %30 = call i32 @Com_Error(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @mainzone, align 4
  %33 = load i32, i32* @s_zoneTotal, align 4
  %34 = call i32 @Z_ClearZone(i32 %32, i32 %33)
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i32, i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Z_ClearZone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
