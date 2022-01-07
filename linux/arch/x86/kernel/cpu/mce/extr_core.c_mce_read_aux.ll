; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_read_aux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_read_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.mce = type { i32, i32, i8*, i8*, i8* }

@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mce_flags = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MCI_STATUS_SYNDV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mce*, i32)* @mce_read_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_read_aux(%struct.mce* %0, i32 %1) #0 {
  %3 = alloca %struct.mce*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mce*, %struct.mce** %3, align 8
  %8 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msr_ops, i32 0, i32 1), align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %14(i32 %15)
  %17 = call i8* @mce_rdmsrl(i32 %16)
  %18 = load %struct.mce*, %struct.mce** %3, align 8
  %19 = getelementptr inbounds %struct.mce, %struct.mce* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.mce*, %struct.mce** %3, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %20
  %28 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msr_ops, i32 0, i32 0), align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %28(i32 %29)
  %31 = call i8* @mce_rdmsrl(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.mce*, %struct.mce** %3, align 8
  %34 = getelementptr inbounds %struct.mce, %struct.mce* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mca_cfg, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  %38 = load %struct.mce*, %struct.mce** %3, align 8
  %39 = getelementptr inbounds %struct.mce, %struct.mce* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.mce*, %struct.mce** %3, align 8
  %46 = getelementptr inbounds %struct.mce, %struct.mce* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @MCI_MISC_ADDR_LSB(i8* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mce*, %struct.mce** %3, align 8
  %51 = getelementptr inbounds %struct.mce, %struct.mce* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mce*, %struct.mce** %3, align 8
  %56 = getelementptr inbounds %struct.mce, %struct.mce* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %44, %37, %27
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mce_flags, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.mce*, %struct.mce** %3, align 8
  %64 = getelementptr inbounds %struct.mce, %struct.mce* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 56
  %67 = and i32 %66, 63
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GENMASK_ULL(i32 55, i32 %68)
  %70 = load %struct.mce*, %struct.mce** %3, align 8
  %71 = getelementptr inbounds %struct.mce, %struct.mce* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %62, %59
  br label %75

75:                                               ; preds = %74, %20
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mce_flags, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @MSR_AMD64_SMCA_MCx_IPID(i32 %79)
  %81 = call i8* @mce_rdmsrl(i32 %80)
  %82 = load %struct.mce*, %struct.mce** %3, align 8
  %83 = getelementptr inbounds %struct.mce, %struct.mce* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mce*, %struct.mce** %3, align 8
  %85 = getelementptr inbounds %struct.mce, %struct.mce* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MCI_STATUS_SYNDV, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @MSR_AMD64_SMCA_MCx_SYND(i32 %91)
  %93 = call i8* @mce_rdmsrl(i32 %92)
  %94 = load %struct.mce*, %struct.mce** %3, align 8
  %95 = getelementptr inbounds %struct.mce, %struct.mce* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %90, %78
  br label %97

97:                                               ; preds = %96, %75
  ret void
}

declare dso_local i8* @mce_rdmsrl(i32) #1

declare dso_local i32 @MCI_MISC_ADDR_LSB(i8*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @MSR_AMD64_SMCA_MCx_IPID(i32) #1

declare dso_local i32 @MSR_AMD64_SMCA_MCx_SYND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
