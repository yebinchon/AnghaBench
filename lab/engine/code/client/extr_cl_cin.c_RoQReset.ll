; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQReset.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@currentHandle = common dso_local global i64 0, align 8
@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FMV_LOOPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQReset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQReset() #0 {
  %1 = load i64, i64* @currentHandle, align 8
  %2 = icmp ult i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %35

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %6 = load i64, i64* @currentHandle, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @FS_FCloseFile(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %12 = load i64, i64* @currentHandle, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %17 = load i64, i64* @currentHandle, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* @qtrue, align 4
  %21 = call i32 @FS_FOpenFileRead(i32 %15, i32* %19, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %24 = load i64, i64* @currentHandle, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FS_Read(i32 %22, i32 16, i32 %27)
  %29 = call i32 (...) @RoQ_init()
  %30 = load i32, i32* @FMV_LOOPED, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %32 = load i64, i64* @currentHandle, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @FS_FCloseFile(i32) #1

declare dso_local i32 @FS_FOpenFileRead(i32, i32*, i32) #1

declare dso_local i32 @FS_Read(i32, i32, i32) #1

declare dso_local i32 @RoQ_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
