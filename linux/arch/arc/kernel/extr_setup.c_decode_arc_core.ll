; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_decode_arc_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_setup.c_decode_arc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_to_str = type { i32, i8* }
%struct.cpuinfo_arc = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bcr_uarch_build_arcv2 = type { i32, i32 }

@arc_legacy_rel = common dso_local global %struct.id_to_str* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"ARC700\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HS38\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@ARC_REG_MICRO_ARCH_BCR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HS48\00", align 1
@arc_cpu_rel = common dso_local global %struct.id_to_str* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_arc*)* @decode_arc_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_arc_core(%struct.cpuinfo_arc* %0) #0 {
  %2 = alloca %struct.cpuinfo_arc*, align 8
  %3 = alloca %struct.bcr_uarch_build_arcv2, align 4
  %4 = alloca %struct.id_to_str*, align 8
  store %struct.cpuinfo_arc* %0, %struct.cpuinfo_arc** %2, align 8
  %5 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %6 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 84
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load %struct.id_to_str*, %struct.id_to_str** @arc_legacy_rel, align 8
  %12 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %11, i64 0
  store %struct.id_to_str* %12, %struct.id_to_str** %4, align 8
  br label %13

13:                                               ; preds = %34, %10
  %14 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %15 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %20 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %24 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %29 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %37

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %36 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %35, i32 1
  store %struct.id_to_str* %36, %struct.id_to_str** %4, align 8
  br label %13

37:                                               ; preds = %27, %13
  %38 = call i64 (...) @is_isa_arcompact()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  br label %57

43:                                               ; preds = %37
  %44 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %45 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %50 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %56

51:                                               ; preds = %43
  %52 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %53 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %54, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %56, %40
  br label %100

58:                                               ; preds = %1
  %59 = load i32, i32* @ARC_REG_MICRO_ARCH_BCR, align 4
  %60 = bitcast %struct.bcr_uarch_build_arcv2* %3 to i64*
  %61 = load i64, i64* %60, align 4
  %62 = call i32 @READ_BCR(i32 %59, i64 %61)
  %63 = getelementptr inbounds %struct.bcr_uarch_build_arcv2, %struct.bcr_uarch_build_arcv2* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %68 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %67, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %70 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %75

72:                                               ; preds = %58
  %73 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %74 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.id_to_str*, %struct.id_to_str** @arc_cpu_rel, align 8
  %77 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %76, i64 0
  store %struct.id_to_str* %77, %struct.id_to_str** %4, align 8
  br label %78

78:                                               ; preds = %97, %75
  %79 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %80 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 255
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bcr_uarch_build_arcv2, %struct.bcr_uarch_build_arcv2* %3, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %87 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %92 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.cpuinfo_arc*, %struct.cpuinfo_arc** %2, align 8
  %95 = getelementptr inbounds %struct.cpuinfo_arc, %struct.cpuinfo_arc* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %100

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.id_to_str*, %struct.id_to_str** %4, align 8
  %99 = getelementptr inbounds %struct.id_to_str, %struct.id_to_str* %98, i32 1
  store %struct.id_to_str* %99, %struct.id_to_str** %4, align 8
  br label %78

100:                                              ; preds = %57, %90, %78
  ret void
}

declare dso_local i64 @is_isa_arcompact(...) #1

declare dso_local i32 @READ_BCR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
