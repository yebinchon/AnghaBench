; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_time.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_time.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.timekeeper = type { %struct.TYPE_12__, %struct.TYPE_11__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }

@fsyscall_gtod_data = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %3 = call i32 @write_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 1))
  %4 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %5 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 7), align 4
  %8 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 6), align 8
  %12 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %13 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 0), align 8
  %16 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %17 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 5), align 4
  %23 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %24 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 4), align 8
  %27 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 3, i32 1), align 8
  %30 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %31 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 3, i32 0), align 8
  %34 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %35 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 1), align 8
  %42 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %43 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %47 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %52 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %50, %54
  %56 = add nsw i32 %45, %55
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 0), align 8
  br label %57

57:                                               ; preds = %67, %1
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 0), align 8
  %59 = load i64, i64* @NSEC_PER_SEC, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %62 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 %60, %64
  %66 = icmp sge i32 %58, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load i64, i64* @NSEC_PER_SEC, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %71 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %69, %73
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 0), align 8
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 0), align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 1), align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 2, i32 1), align 8
  br label %57

79:                                               ; preds = %57
  %80 = call i32 @write_seqcount_end(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fsyscall_gtod_data, i32 0, i32 1))
  ret void
}

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
