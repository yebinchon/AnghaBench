; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_drc_pmem_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_drc_pmem_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.papr_scm_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unbind drc 0x%x\0A\00", align 1
@H_SCM_UNBIND_ALL = common dso_local global i32 0, align 4
@H_UNBIND_SCOPE_DRC = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"unbind error: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unbind drc 0x%x complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.papr_scm_priv*)* @drc_pmem_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drc_pmem_unbind(%struct.papr_scm_priv* %0) #0 {
  %2 = alloca %struct.papr_scm_priv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.papr_scm_priv* %0, %struct.papr_scm_priv** %2, align 8
  %7 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %12 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %16 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %45, %1
  %20 = load i32, i32* @H_SCM_UNBIND_ALL, align 4
  %21 = load i32, i32* @H_UNBIND_SCOPE_DRC, align 4
  %22 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %23 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @plpar_hcall(i32 %20, i64* %10, i32 %21, i32 %24, i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = getelementptr inbounds i64, i64* %10, i64 0
  %28 = load i64, i64* %27, align 16
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @H_IS_LONG_BUSY(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @get_longbusy_msecs(i64 %33)
  %35 = call i32 @msleep(i32 %34)
  %36 = load i64, i64* @H_BUSY, align 8
  store i64 %36, i64* %6, align 8
  br label %44

37:                                               ; preds = %19
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @H_BUSY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @cond_resched()
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @H_BUSY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %19, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %54 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %68

59:                                               ; preds = %49
  %60 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %61 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %2, align 8
  %65 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

declare dso_local i64 @plpar_hcall(i32, i64*, i32, i32, i64) #2

declare dso_local i64 @H_IS_LONG_BUSY(i64) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @get_longbusy_msecs(i64) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
