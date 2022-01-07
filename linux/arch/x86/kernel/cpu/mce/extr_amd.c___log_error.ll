; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c___log_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c___log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mce = type { i32, i32, i32, i32, i32, i32, i8* }

@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MCI_STATUS_SYNDV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @__log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__log_error(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mce, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call i32 @mce_setup(%struct.mce* %9)
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 6
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @rdtsc()
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 56
  %36 = and i32 %35, 63
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @GENMASK_ULL(i32 55, i32 %37)
  %39 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %38
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %32, %26
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @MSR_AMD64_SMCA_MCx_IPID(i32 %47)
  %49 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rdmsrl(i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MCI_STATUS_SYNDV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @MSR_AMD64_SMCA_MCx_SYND(i32 %58)
  %60 = getelementptr inbounds %struct.mce, %struct.mce* %9, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rdmsrl(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %46
  br label %64

64:                                               ; preds = %63, %43
  %65 = call i32 @mce_log(%struct.mce* %9)
  ret void
}

declare dso_local i32 @mce_setup(%struct.mce*) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @MSR_AMD64_SMCA_MCx_IPID(i32) #1

declare dso_local i32 @MSR_AMD64_SMCA_MCx_SYND(i32) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
