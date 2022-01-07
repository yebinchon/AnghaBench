; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_setup.c_identify_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_setup.c_identify_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_ia64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%union.anon = type { [5 x i64] }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.anon = type <{ [16 x i8], i32, i64, i32 }>

@PAL_STATUS_SUCCESS = common dso_local global i64 0, align 8
@smp_num_siblings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_ia64*)* @identify_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @identify_cpu(%struct.cpuinfo_ia64* %0) #0 {
  %2 = alloca %struct.cpuinfo_ia64*, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cpuinfo_ia64* %0, %struct.cpuinfo_ia64** %2, align 8
  store i64 50, i64* %7, align 8
  store i64 44, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @ia64_get_cpuid(i32 %14)
  %16 = bitcast %union.anon* %3 to [5 x i64]*
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i64 0, i64 %18
  store i64 %15, i64* %19, align 8
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %24, i32 0, i32 15
  %26 = load i32, i32* %25, align 8
  %27 = bitcast %union.anon* %3 to %struct.anon*
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0
  %30 = call i32 @memcpy(i32 %26, i8* %29, i32 16)
  %31 = bitcast %union.anon* %3 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = bitcast %union.anon* %3 to %struct.anon*
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 4
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i32
  %41 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = bitcast %union.anon* %3 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 4
  %46 = lshr i64 %45, 8
  %47 = and i64 %46, 255
  %48 = trunc i64 %47 to i32
  %49 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %50 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = bitcast %union.anon* %3 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 4
  %54 = lshr i64 %53, 16
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i32
  %57 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = bitcast %union.anon* %3 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 4
  %62 = lshr i64 %61, 24
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i32
  %65 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %66 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = bitcast %union.anon* %3 to %struct.anon*
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 4
  %70 = lshr i64 %69, 32
  %71 = and i64 %70, 255
  %72 = trunc i64 %71 to i32
  %73 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %74 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = bitcast %union.anon* %3 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %79 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %81 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %84 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_model_name(i32 %82, i32 %85)
  %87 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  %89 = call i64 @ia64_pal_vm_summary(%struct.TYPE_10__* %4, %struct.TYPE_9__* %5)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @PAL_STATUS_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %23
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %93, %23
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  %103 = shl i64 1, %102
  %104 = sub nsw i64 %103, 1
  %105 = or i64 -2305843009213693952, %104
  %106 = xor i64 %105, -1
  %107 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %108 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %107, i32 0, i32 9
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = shl i64 1, %109
  %111 = sub nsw i64 %110, 1
  %112 = or i64 -9223372036854775808, %111
  %113 = xor i64 %112, -1
  %114 = load %struct.cpuinfo_ia64*, %struct.cpuinfo_ia64** %2, align 8
  %115 = getelementptr inbounds %struct.cpuinfo_ia64, %struct.cpuinfo_ia64* %114, i32 0, i32 10
  store i64 %113, i64* %115, align 8
  ret void
}

declare dso_local i64 @ia64_get_cpuid(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @get_model_name(i32, i32) #1

declare dso_local i64 @ia64_pal_vm_summary(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
