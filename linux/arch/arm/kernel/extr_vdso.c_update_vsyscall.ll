; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_vdso.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.timekeeper = type { %struct.TYPE_6__, i32, %struct.timespec64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32 }

@cntvct_ok = common dso_local global i32 0, align 4
@vdso_data = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca %struct.timespec64*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %4 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %5 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %4, i32 0, i32 2
  store %struct.timespec64* %5, %struct.timespec64** %3, align 8
  %6 = load i32, i32* @cntvct_ok, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %89

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %11 = call i32 @vdso_write_begin(%struct.TYPE_7__* %10)
  %12 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %13 = call i64 @tk_is_cntvct(%struct.timekeeper* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  store i64 %13, i64* %15, align 8
  %16 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %17 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %22 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %26 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %9
  %48 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %49 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %55 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %60 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %66 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %72 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %78 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %47, %9
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %85 = call i32 @vdso_write_end(%struct.TYPE_7__* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdso_data, align 8
  %87 = call i32 @virt_to_page(%struct.TYPE_7__* %86)
  %88 = call i32 @flush_dcache_page(i32 %87)
  br label %89

89:                                               ; preds = %83, %8
  ret void
}

declare dso_local i32 @vdso_write_begin(%struct.TYPE_7__*) #1

declare dso_local i64 @tk_is_cntvct(%struct.timekeeper*) #1

declare dso_local i32 @vdso_write_end(%struct.TYPE_7__*) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @virt_to_page(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
