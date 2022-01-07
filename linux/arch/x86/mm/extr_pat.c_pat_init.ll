; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_pat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i64, i32, i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 8
@pat_disabled = common dso_local global i64 0, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@WB = common dso_local global i32 0, align 4
@WC = common dso_local global i32 0, align 4
@UC_MINUS = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@WP = common dso_local global i32 0, align 4
@WT = common dso_local global i32 0, align 4
@boot_cpu_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pat_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %2, align 8
  %3 = load i64, i64* @pat_disabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %89

6:                                                ; preds = %0
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %6
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 13
  br i1 %21, label %32, label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %24 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %29 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 6
  br i1 %31, label %32, label %56

32:                                               ; preds = %27, %17
  %33 = load i32, i32* @WB, align 4
  %34 = call i32 @PAT(i32 0, i32 %33)
  %35 = load i32, i32* @WC, align 4
  %36 = call i32 @PAT(i32 1, i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @UC_MINUS, align 4
  %39 = call i32 @PAT(i32 2, i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @UC, align 4
  %42 = call i32 @PAT(i32 3, i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @WB, align 4
  %45 = call i32 @PAT(i32 4, i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @WC, align 4
  %48 = call i32 @PAT(i32 5, i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @UC_MINUS, align 4
  %51 = call i32 @PAT(i32 6, i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @UC, align 4
  %54 = call i32 @PAT(i32 7, i32 %53)
  %55 = or i32 %52, %54
  store i32 %55, i32* %1, align 4
  br label %80

56:                                               ; preds = %27, %22, %6
  %57 = load i32, i32* @WB, align 4
  %58 = call i32 @PAT(i32 0, i32 %57)
  %59 = load i32, i32* @WC, align 4
  %60 = call i32 @PAT(i32 1, i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @UC_MINUS, align 4
  %63 = call i32 @PAT(i32 2, i32 %62)
  %64 = or i32 %61, %63
  %65 = load i32, i32* @UC, align 4
  %66 = call i32 @PAT(i32 3, i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* @WB, align 4
  %69 = call i32 @PAT(i32 4, i32 %68)
  %70 = or i32 %67, %69
  %71 = load i32, i32* @WP, align 4
  %72 = call i32 @PAT(i32 5, i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @UC_MINUS, align 4
  %75 = call i32 @PAT(i32 6, i32 %74)
  %76 = or i32 %73, %75
  %77 = load i32, i32* @WT, align 4
  %78 = call i32 @PAT(i32 7, i32 %77)
  %79 = or i32 %76, %78
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %56, %32
  %81 = load i32, i32* @boot_cpu_done, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @pat_bsp_init(i32 %84)
  store i32 1, i32* @boot_cpu_done, align 4
  br label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @pat_ap_init(i32 %87)
  br label %89

89:                                               ; preds = %5, %86, %83
  ret void
}

declare dso_local i32 @PAT(i32, i32) #1

declare dso_local i32 @pat_bsp_init(i32) #1

declare dso_local i32 @pat_ap_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
