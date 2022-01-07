; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_vdso.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_vdso.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timekeeper = type { %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@vdso_data = common dso_local global %struct.TYPE_8__* null, align 8
@hrtimer_resolution = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %4 = call i32 @vdso_write_begin(%struct.TYPE_8__* %3)
  %5 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %6 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 4
  %11 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %12 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %18 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %24 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %30 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %36 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %47 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %53 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %58 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %62 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %60, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @hrtimer_resolution, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vdso_data, align 8
  %72 = call i32 @vdso_write_end(%struct.TYPE_8__* %71)
  ret void
}

declare dso_local i32 @vdso_write_begin(%struct.TYPE_8__*) #1

declare dso_local i32 @vdso_write_end(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
