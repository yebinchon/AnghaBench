; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_setFromLibprocPidinfo.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcess.c_DarwinProcess_setFromLibprocPidinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double, i32, i32, i32, double, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.proc_taskinfo = type { i32, i32, i32, i32, i64, i64, i32 }

@PROC_PIDTASKINFO = common dso_local global i32 0, align 4
@PAGE_SIZE_KB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DarwinProcess_setFromLibprocPidinfo(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.proc_taskinfo, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PROC_PIDTASKINFO, align 4
  %12 = call i32 @proc_pidinfo(i32 %10, i32 %11, i32 0, %struct.proc_taskinfo* %5, i32 40)
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 40, %13
  br i1 %14, label %15, label %145

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 0, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 0, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = add nsw i32 %31, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sitofp i32 %39 to double
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to double
  %46 = fmul double %40, %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to double
  %51 = fmul double %50, 1.000000e+05
  %52 = fdiv double %46, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store double %52, double* %55, align 8
  br label %56

56:                                               ; preds = %25, %20
  %57 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %58, %60
  %62 = sdiv i32 %61, 10000000
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  store i64 %67, i64* %70, align 8
  %71 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 1024
  %74 = load i32, i32* @PAGE_SIZE_KB, align 4
  %75 = sdiv i32 %73, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 1024
  %82 = load i32, i32* @PAGE_SIZE_KB, align 4
  %83 = sdiv i32 %81, %82
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 8
  %87 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32 %88, i32* %91, align 8
  %92 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sitofp i32 %93 to double
  %95 = fmul double %94, 1.000000e+02
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %95, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store double %101, double* %104, align 8
  %105 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 0
  store i32 %117, i32* %115, align 4
  %118 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %119
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  %127 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %128
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = getelementptr inbounds %struct.proc_taskinfo, %struct.proc_taskinfo* %5, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %137
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  br label %145

145:                                              ; preds = %56, %2
  ret void
}

declare dso_local i32 @proc_pidinfo(i32, i32, i32, %struct.proc_taskinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
