; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_dump_hub_diag_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_dump_hub_diag_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OpalIoP7IOCErrorData = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"  GEM: %016llx %016llx %016llx %016llx %016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"  LEM: %016llx %016llx %016llx %016llx %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.OpalIoP7IOCErrorData*)* @pnv_eeh_dump_hub_diag_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_eeh_dump_hub_diag_common(%struct.OpalIoP7IOCErrorData* %0) #0 {
  %2 = alloca %struct.OpalIoP7IOCErrorData*, align 8
  store %struct.OpalIoP7IOCErrorData* %0, %struct.OpalIoP7IOCErrorData** %2, align 8
  %3 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %4 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %3, i32 0, i32 9
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %9 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %14 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %19 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %24 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22, %17, %12, %7, %1
  %28 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %29 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @be64_to_cpu(i64 %30)
  %32 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %33 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @be64_to_cpu(i64 %34)
  %36 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %37 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @be64_to_cpu(i64 %38)
  %40 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %41 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @be64_to_cpu(i64 %42)
  %44 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %45 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @be64_to_cpu(i64 %46)
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %27, %22
  %50 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %51 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %56 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %61 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %66 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %71 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69, %64, %59, %54, %49
  %75 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %76 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @be64_to_cpu(i64 %77)
  %79 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %80 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @be64_to_cpu(i64 %81)
  %83 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %84 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @be64_to_cpu(i64 %85)
  %87 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %88 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @be64_to_cpu(i64 %89)
  %91 = load %struct.OpalIoP7IOCErrorData*, %struct.OpalIoP7IOCErrorData** %2, align 8
  %92 = getelementptr inbounds %struct.OpalIoP7IOCErrorData, %struct.OpalIoP7IOCErrorData* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @be64_to_cpu(i64 %93)
  %95 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %82, i32 %86, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
