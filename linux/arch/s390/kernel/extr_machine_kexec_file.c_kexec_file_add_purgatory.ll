; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_add_purgatory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_add_purgatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kimage = type { i64 }
%struct.s390_load_data = type { i32 }
%struct.kexec_buf = type { i64, i32, %struct.kimage* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@crashk_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.s390_load_data*)* @kexec_file_add_purgatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_file_add_purgatory(%struct.kimage* %0, %struct.s390_load_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca %struct.s390_load_data*, align 8
  %6 = alloca %struct.kexec_buf, align 8
  %7 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store %struct.s390_load_data* %1, %struct.s390_load_data** %5, align 8
  %8 = load %struct.kimage*, %struct.kimage** %4, align 8
  %9 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  store %struct.kimage* %8, %struct.kimage** %9, align 8
  %10 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %11 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @ALIGN(i32 %12, i32 %13)
  %15 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %16 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %18 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.kimage*, %struct.kimage** %4, align 8
  %22 = getelementptr inbounds %struct.kimage, %struct.kimage* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crashk_res, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.kimage*, %struct.kimage** %4, align 8
  %35 = call i32 @kexec_load_purgatory(%struct.kimage* %34, %struct.kexec_buf* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %44 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.kimage*, %struct.kimage** %4, align 8
  %50 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %51 = call i32 @kexec_file_update_purgatory(%struct.kimage* %49, %struct.s390_load_data* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %38
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @kexec_load_purgatory(%struct.kimage*, %struct.kexec_buf*) #1

declare dso_local i32 @kexec_file_update_purgatory(%struct.kimage*, %struct.s390_load_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
