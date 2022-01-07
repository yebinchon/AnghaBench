; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__to_stat.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__to_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, %struct.TYPE_15__, i64, i64, %struct.TYPE_17__, %struct.TYPE_26__, %struct.TYPE_24__, i64, i64, i64, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat*, %struct.TYPE_18__*)* @uv__to_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__to_stat(%struct.stat* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %5 = load %struct.stat*, %struct.stat** %3, align 8
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 15
  store i32 %7, i32* %9, align 4
  %10 = load %struct.stat*, %struct.stat** %3, align 8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 24
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.stat*, %struct.stat** %3, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 23
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stat*, %struct.stat** %3, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 22
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.stat*, %struct.stat** %3, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.stat*, %struct.stat** %3, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 20
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stat*, %struct.stat** %3, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.stat*, %struct.stat** %3, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 18
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.stat*, %struct.stat** %3, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.stat*, %struct.stat** %3, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.stat*, %struct.stat** %3, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.stat*, %struct.stat** %3, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.stat*, %struct.stat** %3, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.stat*, %struct.stat** %3, align 8
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
