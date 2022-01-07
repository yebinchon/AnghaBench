; ModuleID = '/home/carl/AnghaBench/htop/extr_EnvScreen.c_EnvScreen_scan.c'
source_filename = "/home/carl/AnghaBench/htop/extr_EnvScreen.c_EnvScreen_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Could not read process environment.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnvScreen_scan(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @Panel_getSelectedIndex(%struct.TYPE_10__* %10)
  %12 = call i32 @MAX(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @Panel_prune(%struct.TYPE_10__* %13)
  %15 = call i32 (...) @CRT_dropPrivileges()
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @Platform_getProcessEnv(i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = call i32 (...) @CRT_restorePrivileges()
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %35, %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @InfoScreen_addLine(%struct.TYPE_11__* %32, i8* %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strrchr(i8* %36, i32 0)
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %6, align 8
  br label %27

39:                                               ; preds = %27
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i32 @InfoScreen_addLine(%struct.TYPE_11__* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Vector_insertionSort(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @Vector_insertionSort(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @Panel_setSelected(%struct.TYPE_10__* %54, i32 %55)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @Panel_getSelectedIndex(%struct.TYPE_10__*) #1

declare dso_local i32 @Panel_prune(%struct.TYPE_10__*) #1

declare dso_local i32 @CRT_dropPrivileges(...) #1

declare dso_local i8* @Platform_getProcessEnv(i32) #1

declare dso_local i32 @CRT_restorePrivileges(...) #1

declare dso_local i32 @InfoScreen_addLine(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Vector_insertionSort(i32) #1

declare dso_local i32 @Panel_setSelected(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
