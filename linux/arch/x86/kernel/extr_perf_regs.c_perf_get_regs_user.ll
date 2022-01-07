; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_perf_regs.c_perf_get_regs_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_perf_regs.c_perf_get_regs_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_regs = type { %struct.pt_regs*, i32 }
%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_ABI_NONE = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_ABI_64 = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_ABI_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_get_regs_user(%struct.perf_regs* %0, %struct.pt_regs* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store %struct.perf_regs* %0, %struct.perf_regs** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %8 = load i32, i32* @current, align 4
  %9 = call %struct.pt_regs* @task_pt_regs(i32 %8)
  store %struct.pt_regs* %9, %struct.pt_regs** %7, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 11
  %15 = ptrtoint i64* %14 to i64
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i64 1
  %23 = ptrtoint %struct.pt_regs* %22 to i64
  %24 = icmp ule i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @PERF_SAMPLE_REGS_ABI_NONE, align 4
  %27 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %28 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %30 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %29, i32 0, i32 0
  store %struct.pt_regs* null, %struct.pt_regs** %30, align 8
  br label %136

31:                                               ; preds = %17, %3
  %32 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 20
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 20
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 19
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 18
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 17
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 16
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 16
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 14
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %66 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 13
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 11
  store i64 %79, i64* %81, align 8
  %82 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %83 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %98 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %101 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %106 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 1
  store i32 -1, i32* %113, align 8
  %114 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 2
  store i32 -1, i32* %115, align 4
  %116 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 3
  store i32 -1, i32* %117, align 8
  %118 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 4
  store i32 -1, i32* %119, align 4
  %120 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 5
  store i32 -1, i32* %121, align 8
  %122 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %123 = call i64 @user_64bit_mode(%struct.pt_regs* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %31
  %126 = load i32, i32* @PERF_SAMPLE_REGS_ABI_64, align 4
  br label %129

127:                                              ; preds = %31
  %128 = load i32, i32* @PERF_SAMPLE_REGS_ABI_32, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %132 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %134 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %135 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %134, i32 0, i32 0
  store %struct.pt_regs* %133, %struct.pt_regs** %135, align 8
  br label %136

136:                                              ; preds = %129, %25
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(i32) #1

declare dso_local i64 @user_64bit_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
