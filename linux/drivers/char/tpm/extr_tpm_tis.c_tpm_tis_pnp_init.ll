; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_pnp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_pnp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.tpm_info = type { i32, %struct.resource }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @tpm_tis_pnp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_pnp_init(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.tpm_info, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %8 = bitcast %struct.tpm_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %7, align 8
  %12 = load %struct.resource*, %struct.resource** %7, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tpm_info, %struct.tpm_info* %6, i32 0, i32 1
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = bitcast %struct.resource* %18 to i8*
  %21 = bitcast %struct.resource* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %23 = call i64 @pnp_irq_valid(%struct.pnp_dev* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %27 = call i32 @pnp_irq(%struct.pnp_dev* %26, i32 0)
  %28 = getelementptr inbounds %struct.tpm_info, %struct.tpm_info* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.tpm_info, %struct.tpm_info* %6, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %32, i32 0, i32 0
  %34 = call i32 @tpm_tis_init(i32* %33, %struct.tpm_info* %6)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pnp_irq_valid(%struct.pnp_dev*, i32) #2

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #2

declare dso_local i32 @tpm_tis_init(i32*, %struct.tpm_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
