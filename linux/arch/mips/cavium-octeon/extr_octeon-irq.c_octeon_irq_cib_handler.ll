; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.octeon_irq_cib_host_data* }
%struct.octeon_irq_cib_host_data = type { i32, i32, i32, i32 }
%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ERROR: CIB bit %d@%llx IRQ unhandled, disabling\0A\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @octeon_irq_cib_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_cib_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_domain*, align 8
  %11 = alloca %struct.octeon_irq_cib_host_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.irq_desc*, align 8
  %14 = alloca %struct.irq_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.irq_domain*
  store %struct.irq_domain* %16, %struct.irq_domain** %10, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 0
  %19 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %18, align 8
  store %struct.octeon_irq_cib_host_data* %19, %struct.octeon_irq_cib_host_data** %11, align 8
  %20 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %21 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @cvmx_read_csr(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %25 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @cvmx_read_csr(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %109, %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %34 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %112

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %109

45:                                               ; preds = %37
  %46 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @irq_find_mapping(%struct.irq_domain* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %54 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %58 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %57, i32 0, i32 2
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @raw_spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %62 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @cvmx_read_csr(i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %5, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %5, align 8
  %71 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %72 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @cvmx_write_csr(i32 %73, i64 %74)
  %76 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %77 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = call i32 @cvmx_write_csr(i32 %78, i64 %81)
  %83 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %84 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %83, i32 0, i32 2
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @raw_spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %108

87:                                               ; preds = %45
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.irq_desc* @irq_to_desc(i32 %88)
  store %struct.irq_desc* %89, %struct.irq_desc** %13, align 8
  %90 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %91 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %90)
  store %struct.irq_data* %91, %struct.irq_data** %14, align 8
  %92 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %93 = call i32 @irqd_get_trigger_type(%struct.irq_data* %92)
  %94 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %11, align 8
  %99 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = shl i64 1, %102
  %104 = call i32 @cvmx_write_csr(i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %97, %87
  %106 = load %struct.irq_desc*, %struct.irq_desc** %13, align 8
  %107 = call i32 @generic_handle_irq_desc(%struct.irq_desc* %106)
  br label %108

108:                                              ; preds = %105, %51
  br label %109

109:                                              ; preds = %108, %44
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %31

112:                                              ; preds = %31
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %113
}

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @generic_handle_irq_desc(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
