; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_copy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_copy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.agp_kern_info = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NOT_SUPPORTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SUPPORTED = common dso_local global i32 0, align 4
@AGPSTAT_MODE_3_0 = common dso_local global i32 0, align 4
@AGP3_RESERVED_MASK = common dso_local global i32 0, align 4
@AGP2_RESERVED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_copy_info(%struct.agp_bridge_data* %0, %struct.agp_kern_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_bridge_data*, align 8
  %5 = alloca %struct.agp_kern_info*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %4, align 8
  store %struct.agp_kern_info* %1, %struct.agp_kern_info** %5, align 8
  %6 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %7 = call i32 @memset(%struct.agp_kern_info* %6, i32 0, i32 56)
  %8 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %9 = icmp ne %struct.agp_bridge_data* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @NOT_SUPPORTED, align 4
  %12 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %13 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %98

16:                                               ; preds = %2
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %18 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %17, i32 0, i32 7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %23 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %26 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %31 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %30, i32 0, i32 10
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @SUPPORTED, align 4
  %34 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %35 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %37 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %40 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %42 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AGPSTAT_MODE_3_0, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %16
  %48 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %49 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AGP3_RESERVED_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %55 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %65

56:                                               ; preds = %16
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AGP2_RESERVED_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %64 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %56, %47
  %66 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %67 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %70 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = call i32 (...) @agp_return_size()
  %72 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %73 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %75 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %78 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %80 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %79, i32 0, i32 3
  %81 = call i32 @atomic_read(i32* %80)
  %82 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %83 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %85 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %90 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %92 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %95 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.agp_kern_info*, %struct.agp_kern_info** %5, align 8
  %97 = getelementptr inbounds %struct.agp_kern_info, %struct.agp_kern_info* %96, i32 0, i32 1
  store i64 -1, i64* %97, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %65, %10
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.agp_kern_info*, i32, i32) #1

declare dso_local i32 @agp_return_size(...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
