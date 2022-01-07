; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_check_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_check_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_integrity_info = type { i32, i32, i32, i32 }

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_db_integrity_walk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Verified %u namespace nodes with %u Objects\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_check_integrity() #0 {
  %1 = alloca %struct.acpi_integrity_info, align 4
  %2 = bitcast %struct.acpi_integrity_info* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false)
  %3 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %4 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %5 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %6 = load i32, i32* @acpi_db_integrity_walk, align 4
  %7 = bitcast %struct.acpi_integrity_info* %1 to i8*
  %8 = call i32 @acpi_walk_namespace(i32 %3, i32 %4, i32 %5, i32 %6, i32* null, i8* %7, i32* null)
  %9 = getelementptr inbounds %struct.acpi_integrity_info, %struct.acpi_integrity_info* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.acpi_integrity_info, %struct.acpi_integrity_info* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, i8*, i32*) #2

declare dso_local i32 @acpi_os_printf(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
