; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_ndctl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_ndctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i32 }
%struct.nvdimm = type { i32 }
%struct.nd_cmd_get_config_size = type { i32, i32, i32 }
%struct.papr_scm_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"returned with cmd_rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @papr_scm_ndctl(%struct.nvdimm_bus_descriptor* %0, %struct.nvdimm* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %9 = alloca %struct.nvdimm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nd_cmd_get_config_size*, align 8
  %15 = alloca %struct.papr_scm_priv*, align 8
  store %struct.nvdimm_bus_descriptor* %0, %struct.nvdimm_bus_descriptor** %8, align 8
  store %struct.nvdimm* %1, %struct.nvdimm** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.nvdimm*, %struct.nvdimm** %9, align 8
  %17 = icmp ne %struct.nvdimm* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %59

21:                                               ; preds = %6
  %22 = load %struct.nvdimm*, %struct.nvdimm** %9, align 8
  %23 = call %struct.papr_scm_priv* @nvdimm_provider_data(%struct.nvdimm* %22)
  store %struct.papr_scm_priv* %23, %struct.papr_scm_priv** %15, align 8
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %48 [
    i32 129, label %25
    i32 130, label %38
    i32 128, label %43
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to %struct.nd_cmd_get_config_size*
  store %struct.nd_cmd_get_config_size* %27, %struct.nd_cmd_get_config_size** %14, align 8
  %28 = load %struct.nd_cmd_get_config_size*, %struct.nd_cmd_get_config_size** %14, align 8
  %29 = getelementptr inbounds %struct.nd_cmd_get_config_size, %struct.nd_cmd_get_config_size* %28, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = load %struct.nd_cmd_get_config_size*, %struct.nd_cmd_get_config_size** %14, align 8
  %31 = getelementptr inbounds %struct.nd_cmd_get_config_size, %struct.nd_cmd_get_config_size* %30, i32 0, i32 0
  store i32 8, i32* %31, align 4
  %32 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %15, align 8
  %33 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nd_cmd_get_config_size*, %struct.nd_cmd_get_config_size** %14, align 8
  %36 = getelementptr inbounds %struct.nd_cmd_get_config_size, %struct.nd_cmd_get_config_size* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  br label %51

38:                                               ; preds = %21
  %39 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %15, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @papr_scm_meta_get(%struct.papr_scm_priv* %39, i8* %40)
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  br label %51

43:                                               ; preds = %21
  %44 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %15, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @papr_scm_meta_set(%struct.papr_scm_priv* %44, i8* %45)
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %21
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %59

51:                                               ; preds = %43, %38, %25
  %52 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %15, align 8
  %53 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %51, %48, %18
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.papr_scm_priv* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local i32 @papr_scm_meta_get(%struct.papr_scm_priv*, i8*) #1

declare dso_local i32 @papr_scm_meta_set(%struct.papr_scm_priv*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
