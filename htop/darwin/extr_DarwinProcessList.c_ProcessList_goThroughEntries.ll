; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_ProcessList_goThroughEntries.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_ProcessList_goThroughEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, %struct.TYPE_22__*, i64, %struct.TYPE_17__, i32 }
%struct.TYPE_22__ = type { i64* }
%struct.TYPE_17__ = type { i32 }
%struct.kinfo_proc = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.timeval = type { i32 }

@CPU_STATE_MAX = common dso_local global i64 0, align 8
@DarwinProcess_new = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessList_goThroughEntries(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = bitcast %struct.TYPE_19__* %13 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %3, align 8
  store i32 1, i32* %4, align 4
  %15 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = call i32 @ProcessList_freeCPULoadInfo(%struct.TYPE_22__** %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = call i32 @ProcessList_allocateCPULoadInfo(%struct.TYPE_22__** %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  %29 = call i32 @ProcessList_getVMStats(i32* %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %76, %1
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %72, %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @CPU_STATE_MAX, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %55, %66
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %44
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %40

75:                                               ; preds = %40
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = call %struct.kinfo_proc* @ProcessList_getKInfoProcs(i64* %6)
  store %struct.kinfo_proc* %88, %struct.kinfo_proc** %5, align 8
  store i64 0, i64* %11, align 8
  br label %89

89:                                               ; preds = %155, %79
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %158

93:                                               ; preds = %89
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %95, i64 %96
  %98 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* @DarwinProcess_new, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @ProcessList_getProcess(%struct.TYPE_19__* %94, i32 %100, i32* %4, i32 %102)
  %104 = inttoptr i64 %103 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %7, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %107, i64 %108
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @DarwinProcess_setFromKInfoProc(%struct.TYPE_16__* %106, %struct.kinfo_proc* %109, i32 %111, i32 %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = call i32 @DarwinProcess_setFromLibprocPidinfo(%struct.TYPE_21__* %114, %struct.TYPE_20__* %115)
  %117 = call i64 @CompareKernelVersion(i32 17, i32 0, i32 0)
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %93
  %120 = call i64 @CompareKernelVersion(i32 17, i32 5, i32 0)
  %121 = icmp slt i64 %120, 0
  br label %122

122:                                              ; preds = %119, %93
  %123 = phi i1 [ false, %93 ], [ %121, %119 ]
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = call i32 @DarwinProcess_scanThreads(%struct.TYPE_21__* %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %131
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @UsersTable_getRef(i32 %141, i32 %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = call i32 @ProcessList_add(%struct.TYPE_19__* %150, %struct.TYPE_16__* %152)
  br label %154

154:                                              ; preds = %138, %131
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %11, align 8
  br label %89

158:                                              ; preds = %89
  %159 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %160 = call i32 @free(%struct.kinfo_proc* %159)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ProcessList_freeCPULoadInfo(%struct.TYPE_22__**) #1

declare dso_local i32 @ProcessList_allocateCPULoadInfo(%struct.TYPE_22__**) #1

declare dso_local i32 @ProcessList_getVMStats(i32*) #1

declare dso_local %struct.kinfo_proc* @ProcessList_getKInfoProcs(i64*) #1

declare dso_local i64 @ProcessList_getProcess(%struct.TYPE_19__*, i32, i32*, i32) #1

declare dso_local i32 @DarwinProcess_setFromKInfoProc(%struct.TYPE_16__*, %struct.kinfo_proc*, i32, i32) #1

declare dso_local i32 @DarwinProcess_setFromLibprocPidinfo(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @CompareKernelVersion(i32, i32, i32) #1

declare dso_local i32 @DarwinProcess_scanThreads(%struct.TYPE_21__*) #1

declare dso_local i32 @UsersTable_getRef(i32, i32) #1

declare dso_local i32 @ProcessList_add(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
