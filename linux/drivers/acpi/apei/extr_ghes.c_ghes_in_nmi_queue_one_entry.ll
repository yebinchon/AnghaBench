; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_ghes_in_nmi_queue_one_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_ghes_in_nmi_queue_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes = type { i32 }
%struct.acpi_hest_generic_status = type { i32 }
%struct.ghes_estatus_node = type { i32, i32, %struct.ghes* }

@CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ghes_estatus_pool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GHES_SEV_PANIC = common dso_local global i32 0, align 4
@ghes_estatus_llist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ghes*, i32)* @ghes_in_nmi_queue_one_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghes_in_nmi_queue_one_entry(%struct.ghes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ghes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_hest_generic_status*, align 8
  %7 = alloca %struct.acpi_hest_generic_status, align 4
  %8 = alloca %struct.ghes_estatus_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ghes* %0, %struct.ghes** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load %struct.ghes*, %struct.ghes** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @__ghes_peek_estatus(%struct.ghes* %21, %struct.acpi_hest_generic_status* %7, i32* %11, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ghes*, %struct.ghes** %4, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ghes_clear_estatus(%struct.ghes* %27, %struct.acpi_hest_generic_status* %7, i32 %28, i32 %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %118

32:                                               ; preds = %20
  %33 = load %struct.ghes*, %struct.ghes** %4, align 8
  %34 = call i32 @__ghes_check_estatus(%struct.ghes* %33, %struct.acpi_hest_generic_status* %7)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ghes*, %struct.ghes** %4, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ghes_clear_estatus(%struct.ghes* %38, %struct.acpi_hest_generic_status* %7, i32 %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %32
  %44 = call i32 @cper_estatus_len(%struct.acpi_hest_generic_status* %7)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @GHES_ESTATUS_NODE_LEN(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @ghes_estatus_pool, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @gen_pool_alloc(i32 %47, i32 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.ghes_estatus_node*
  store %struct.ghes_estatus_node* %51, %struct.ghes_estatus_node** %8, align 8
  %52 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %53 = icmp ne %struct.ghes_estatus_node* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %118

57:                                               ; preds = %43
  %58 = load %struct.ghes*, %struct.ghes** %4, align 8
  %59 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %60 = getelementptr inbounds %struct.ghes_estatus_node, %struct.ghes_estatus_node* %59, i32 0, i32 2
  store %struct.ghes* %58, %struct.ghes** %60, align 8
  %61 = load %struct.ghes*, %struct.ghes** %4, align 8
  %62 = getelementptr inbounds %struct.ghes, %struct.ghes* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %65 = getelementptr inbounds %struct.ghes_estatus_node, %struct.ghes_estatus_node* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %67 = call %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_NODE(%struct.ghes_estatus_node* %66)
  store %struct.acpi_hest_generic_status* %67, %struct.acpi_hest_generic_status** %6, align 8
  %68 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @__ghes_read_estatus(%struct.acpi_hest_generic_status* %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %57
  %75 = load %struct.ghes*, %struct.ghes** %4, align 8
  %76 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ghes_clear_estatus(%struct.ghes* %75, %struct.acpi_hest_generic_status* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %111

82:                                               ; preds = %57
  %83 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %6, align 8
  %84 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ghes_severity(i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @GHES_SEV_PANIC, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = call i32 (...) @ghes_print_queued_estatus()
  %92 = load %struct.ghes*, %struct.ghes** %4, align 8
  %93 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @__ghes_panic(%struct.ghes* %92, %struct.acpi_hest_generic_status* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %82
  %98 = load %struct.ghes*, %struct.ghes** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ghes_clear_estatus(%struct.ghes* %98, %struct.acpi_hest_generic_status* %7, i32 %99, i32 %100)
  %102 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %6, align 8
  %103 = call i64 @ghes_estatus_cached(%struct.acpi_hest_generic_status* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %111

106:                                              ; preds = %97
  %107 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %108 = getelementptr inbounds %struct.ghes_estatus_node, %struct.ghes_estatus_node* %107, i32 0, i32 0
  %109 = call i32 @llist_add(i32* %108, i32* @ghes_estatus_llist)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %3, align 4
  br label %118

111:                                              ; preds = %105, %74
  %112 = load i32, i32* @ghes_estatus_pool, align 4
  %113 = load %struct.ghes_estatus_node*, %struct.ghes_estatus_node** %8, align 8
  %114 = ptrtoint %struct.ghes_estatus_node* %113 to i64
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @gen_pool_free(i32 %112, i64 %114, i32 %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %111, %106, %54, %37, %26, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @__ghes_peek_estatus(%struct.ghes*, %struct.acpi_hest_generic_status*, i32*, i32) #1

declare dso_local i32 @ghes_clear_estatus(%struct.ghes*, %struct.acpi_hest_generic_status*, i32, i32) #1

declare dso_local i32 @__ghes_check_estatus(%struct.ghes*, %struct.acpi_hest_generic_status*) #1

declare dso_local i32 @cper_estatus_len(%struct.acpi_hest_generic_status*) #1

declare dso_local i32 @GHES_ESTATUS_NODE_LEN(i32) #1

declare dso_local i64 @gen_pool_alloc(i32, i32) #1

declare dso_local %struct.acpi_hest_generic_status* @GHES_ESTATUS_FROM_NODE(%struct.ghes_estatus_node*) #1

declare dso_local i64 @__ghes_read_estatus(%struct.acpi_hest_generic_status*, i32, i32, i32) #1

declare dso_local i32 @ghes_severity(i32) #1

declare dso_local i32 @ghes_print_queued_estatus(...) #1

declare dso_local i32 @__ghes_panic(%struct.ghes*, %struct.acpi_hest_generic_status*, i32, i32) #1

declare dso_local i64 @ghes_estatus_cached(%struct.acpi_hest_generic_status*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
