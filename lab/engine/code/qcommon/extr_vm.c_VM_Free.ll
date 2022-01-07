; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_Free.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 (%struct.TYPE_5__*)*, i32, i64 }

@forced_unload = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"VM_Free(%s) on running vm\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"forcefully unloading %s vm\0A\00", align 1
@currentVM = common dso_local global i32* null, align 8
@lastVM = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VM_Free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i32, i32* @forced_unload, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @ERR_FATAL, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @Com_Error(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %52

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_5__*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = call i32 %34(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @Sys_UnloadDll(i64 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32 @Com_Memset(%struct.TYPE_5__* %47, i32 0, i32 56)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = call i32 @Com_Memset(%struct.TYPE_5__* %50, i32 0, i32 56)
  store i32* null, i32** @currentVM, align 8
  store i32* null, i32** @lastVM, align 8
  br label %52

52:                                               ; preds = %49, %14, %5
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @Sys_UnloadDll(i64) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
