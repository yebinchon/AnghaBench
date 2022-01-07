; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_drc_pmem_query_n_bind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_drc_pmem_query_n_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.papr_scm_priv = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_SCM_QUERY_BLOCK_MEM_BINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bound drc 0x%x to %pR\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to query, trying an unbind followed by bind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.papr_scm_priv*)* @drc_pmem_query_n_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drc_pmem_query_n_bind(%struct.papr_scm_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.papr_scm_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.papr_scm_priv* %0, %struct.papr_scm_priv** %3, align 8
  %10 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @H_SCM_QUERY_BLOCK_MEM_BINDING, align 4
  %15 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %16 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @plpar_hcall(i32 %14, i64* %13, i32 %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %69

22:                                               ; preds = %1
  %23 = getelementptr inbounds i64, i64* %13, i64 0
  %24 = load i64, i64* %23, align 16
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @H_SCM_QUERY_BLOCK_MEM_BINDING, align 4
  %26 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %27 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %30 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @plpar_hcall(i32 %25, i64* %13, i32 %28, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %69

37:                                               ; preds = %22
  %38 = getelementptr inbounds i64, i64* %13, i64 0
  %39 = load i64, i64* %38, align 16
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %40, %41
  %43 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %44 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %48 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %42, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %69

54:                                               ; preds = %37
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %57 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %59 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %63 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %66 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %65, i32 0, i32 4
  %67 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64, i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

69:                                               ; preds = %53, %36, %21
  %70 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %71 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %76 = call i32 @drc_pmem_unbind(%struct.papr_scm_priv* %75)
  %77 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %3, align 8
  %78 = call i32 @drc_pmem_bind(%struct.papr_scm_priv* %77)
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %69, %54
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plpar_hcall(i32, i64*, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

declare dso_local i32 @drc_pmem_unbind(%struct.papr_scm_priv*) #2

declare dso_local i32 @drc_pmem_bind(%struct.papr_scm_priv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
