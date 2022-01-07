; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_check_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_crb.c_crb_check_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.resource = type { i32* }
%struct.resource_win = type { %struct.resource }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @crb_check_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crb_check_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_resource*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource_win, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.resource*
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %6, i32 0, i32 0
  store %struct.resource* %10, %struct.resource** %7, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %12 = load %struct.resource*, %struct.resource** %7, align 8
  %13 = call i64 @acpi_dev_resource_memory(%struct.acpi_resource* %11, %struct.resource* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %17 = call i64 @acpi_dev_resource_address_space(%struct.acpi_resource* %16, %struct.resource_win* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %2
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = load %struct.resource*, %struct.resource** %7, align 8
  %22 = bitcast %struct.resource* %20 to i8*
  %23 = bitcast %struct.resource* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %15
  ret i32 1
}

declare dso_local i64 @acpi_dev_resource_memory(%struct.acpi_resource*, %struct.resource*) #1

declare dso_local i64 @acpi_dev_resource_address_space(%struct.acpi_resource*, %struct.resource_win*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
