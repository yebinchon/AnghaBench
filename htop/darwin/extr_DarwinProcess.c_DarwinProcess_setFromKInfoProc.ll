; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_setFromKInfoProc.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_setFromKInfoProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.kinfo_proc = type { %struct.TYPE_7__, %struct.extern_proc }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.extern_proc = type { i64, i32, i32, i32 }

@SZOMB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DarwinProcess_setFromKInfoProc(%struct.TYPE_8__* %0, %struct.kinfo_proc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extern_proc*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %11 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %10, i32 0, i32 1
  store %struct.extern_proc* %11, %struct.extern_proc** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %4
  %15 = load %struct.extern_proc*, %struct.extern_proc** %9, align 8
  %16 = getelementptr inbounds %struct.extern_proc, %struct.extern_proc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %21 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 4
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %35 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %53 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 255
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load %struct.extern_proc*, %struct.extern_proc** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DarwinProcess_setStartTime(%struct.TYPE_8__* %59, %struct.extern_proc* %60, i32 %61)
  %63 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = call i32 @DarwinProcess_getCmdLine(%struct.kinfo_proc* %63, i32* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %14, %4
  %70 = load %struct.extern_proc*, %struct.extern_proc** %9, align 8
  %71 = getelementptr inbounds %struct.extern_proc, %struct.extern_proc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.extern_proc*, %struct.extern_proc** %9, align 8
  %76 = getelementptr inbounds %struct.extern_proc, %struct.extern_proc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.extern_proc*, %struct.extern_proc** %9, align 8
  %81 = getelementptr inbounds %struct.extern_proc, %struct.extern_proc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SZOMB, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 90, i32 63
  %87 = trunc i32 %86 to i8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i8 %87, i8* %89, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  ret void
}

declare dso_local i32 @DarwinProcess_setStartTime(%struct.TYPE_8__*, %struct.extern_proc*, i32) #1

declare dso_local i32 @DarwinProcess_getCmdLine(%struct.kinfo_proc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
