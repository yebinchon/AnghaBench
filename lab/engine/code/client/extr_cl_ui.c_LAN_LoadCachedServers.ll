; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_LoadCachedServers.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_LAN_LoadCachedServers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@cls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"servercache.dat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LAN_LoadCachedServers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 4), align 8
  %3 = call i64 @FS_SV_FOpenFileRead(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @FS_Read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), i32 4, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @FS_Read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), i32 4, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @FS_Read(i32* %1, i32 4, i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @FS_Read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 2), i32 4, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @FS_Read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 3), i32 4, i32 %18)
  br label %21

20:                                               ; preds = %5
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 4), align 8
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @FS_FCloseFile(i32 %22)
  br label %24

24:                                               ; preds = %21, %0
  ret void
}

declare dso_local i64 @FS_SV_FOpenFileRead(i8*, i32*) #1

declare dso_local i32 @FS_Read(i32*, i32, i32) #1

declare dso_local i32 @FS_FCloseFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
