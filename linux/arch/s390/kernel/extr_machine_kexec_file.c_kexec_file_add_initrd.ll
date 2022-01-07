; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_add_initrd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_add_initrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.kimage = type { i64, i64, i32 }
%struct.s390_load_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.kexec_buf = type { i64, i32, i64, i32, %struct.kimage* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@crashk_res = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.s390_load_data*)* @kexec_file_add_initrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_file_add_initrd(%struct.kimage* %0, %struct.s390_load_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca %struct.s390_load_data*, align 8
  %6 = alloca %struct.kexec_buf, align 8
  %7 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store %struct.s390_load_data* %1, %struct.s390_load_data** %5, align 8
  %8 = load %struct.kimage*, %struct.kimage** %4, align 8
  %9 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 4
  store %struct.kimage* %8, %struct.kimage** %9, align 8
  %10 = load %struct.kimage*, %struct.kimage** %4, align 8
  %11 = getelementptr inbounds %struct.kimage, %struct.kimage* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load %struct.kimage*, %struct.kimage** %4, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  store i64 %16, i64* %17, align 8
  %18 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %19 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @ALIGN(i32 %20, i32 %21)
  %23 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %24 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %26 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load %struct.kimage*, %struct.kimage** %4, align 8
  %30 = getelementptr inbounds %struct.kimage, %struct.kimage* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @crashk_res, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %35
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  br label %41

41:                                               ; preds = %34, %2
  %42 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %48 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 8
  %51 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %54 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %60 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = call i32 @kexec_add_buffer(%struct.kexec_buf* %6)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %41
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %41
  %71 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %72 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ipl_report_add_component(i32 %73, %struct.kexec_buf* %6, i32 0, i32 0)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %68
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

declare dso_local i32 @ipl_report_add_component(i32, %struct.kexec_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
