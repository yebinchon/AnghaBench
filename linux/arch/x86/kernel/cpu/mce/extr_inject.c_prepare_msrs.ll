; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_prepare_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_prepare_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i64, i32, i32, i32, i32, i32, i32 }

@MSR_IA32_MCG_STATUS = common dso_local global i32 0, align 4
@X86_FEATURE_SMCA = common dso_local global i32 0, align 4
@DFR_INT_INJ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @prepare_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_msrs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mce, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mce*
  %7 = bitcast %struct.mce* %3 to i8*
  %8 = bitcast %struct.mce* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  %9 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MSR_IA32_MCG_STATUS, align 4
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wrmsrl(i32 %11, i32 %13)
  %15 = load i32, i32* @X86_FEATURE_SMCA, align 4
  %16 = call i64 @boot_cpu_has(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DFR_INT_INJ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MSR_AMD64_SMCA_MCx_DESTAT(i32 %24)
  %26 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wrmsrl(i32 %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @MSR_AMD64_SMCA_MCx_DEADDR(i32 %29)
  %31 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wrmsrl(i32 %30, i32 %32)
  br label %45

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @MSR_AMD64_SMCA_MCx_STATUS(i32 %35)
  %37 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wrmsrl(i32 %36, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @MSR_AMD64_SMCA_MCx_ADDR(i32 %40)
  %42 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wrmsrl(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %34, %23
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MSR_AMD64_SMCA_MCx_MISC(i32 %46)
  %48 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wrmsrl(i32 %47, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @MSR_AMD64_SMCA_MCx_SYND(i32 %51)
  %53 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wrmsrl(i32 %52, i32 %54)
  br label %72

56:                                               ; preds = %1
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @MSR_IA32_MCx_STATUS(i32 %57)
  %59 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wrmsrl(i32 %58, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @MSR_IA32_MCx_ADDR(i32 %62)
  %64 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wrmsrl(i32 %63, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @MSR_IA32_MCx_MISC(i32 %67)
  %69 = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wrmsrl(i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %56, %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wrmsrl(i32, i32) #2

declare dso_local i64 @boot_cpu_has(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_DESTAT(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_DEADDR(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_STATUS(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_ADDR(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_MISC(i32) #2

declare dso_local i32 @MSR_AMD64_SMCA_MCx_SYND(i32) #2

declare dso_local i32 @MSR_IA32_MCx_STATUS(i32) #2

declare dso_local i32 @MSR_IA32_MCx_ADDR(i32) #2

declare dso_local i32 @MSR_IA32_MCx_MISC(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
