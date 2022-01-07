; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_image.c_kexec_file_add_kernel_image.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_image.c_kexec_file_add_kernel_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kimage = type { i64, i64, i64 }
%struct.s390_load_data = type { i32, i32, i64, i64, i64 }
%struct.kexec_buf = type { i64, i64, i64, i64, %struct.kimage* }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@crashk_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PARMAREA = common dso_local global i64 0, align 8
@IPL_RB_COMPONENT_FLAG_SIGNED = common dso_local global i32 0, align 4
@IPL_RB_COMPONENT_FLAG_VERIFIED = common dso_local global i32 0, align 4
@IPL_RB_CERT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.s390_load_data*)* @kexec_file_add_kernel_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_file_add_kernel_image(%struct.kimage* %0, %struct.s390_load_data* %1) #0 {
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca %struct.s390_load_data*, align 8
  %5 = alloca %struct.kexec_buf, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  store %struct.s390_load_data* %1, %struct.s390_load_data** %4, align 8
  %6 = load %struct.kimage*, %struct.kimage** %3, align 8
  %7 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 4
  store %struct.kimage* %6, %struct.kimage** %7, align 8
  %8 = load %struct.kimage*, %struct.kimage** %3, align 8
  %9 = getelementptr inbounds %struct.kimage, %struct.kimage* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 3
  store i64 %10, i64* %11, align 8
  %12 = load %struct.kimage*, %struct.kimage** %3, align 8
  %13 = getelementptr inbounds %struct.kimage, %struct.kimage* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.kimage*, %struct.kimage** %3, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crashk_res, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %23
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.kimage*, %struct.kimage** %3, align 8
  %32 = getelementptr inbounds %struct.kimage, %struct.kimage* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.s390_load_data*, %struct.s390_load_data** %4, align 8
  %35 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.s390_load_data*, %struct.s390_load_data** %4, align 8
  %39 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.kimage*, %struct.kimage** %3, align 8
  %41 = getelementptr inbounds %struct.kimage, %struct.kimage* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PARMAREA, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.s390_load_data*, %struct.s390_load_data** %4, align 8
  %46 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.s390_load_data*, %struct.s390_load_data** %4, align 8
  %50 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.s390_load_data*, %struct.s390_load_data** %4, align 8
  %56 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IPL_RB_COMPONENT_FLAG_SIGNED, align 4
  %59 = load i32, i32* @IPL_RB_COMPONENT_FLAG_VERIFIED, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IPL_RB_CERT_UNKNOWN, align 4
  %62 = call i32 @ipl_report_add_component(i32 %57, %struct.kexec_buf* %5, i32 %60, i32 %61)
  %63 = call i32 @kexec_add_buffer(%struct.kexec_buf* %5)
  ret i32 %63
}

declare dso_local i32 @ipl_report_add_component(i32, %struct.kexec_buf*, i32, i32) #1

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
