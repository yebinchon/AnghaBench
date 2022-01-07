; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i32 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@relocate_kernel = common dso_local global i32 0, align 4
@relocate_kernel_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i8*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %5 = load %struct.kimage*, %struct.kimage** %3, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @machine_kexec_prepare_kdump()
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.kimage*, %struct.kimage** %3, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.kimage*, %struct.kimage** %3, align 8
  %23 = getelementptr inbounds %struct.kimage, %struct.kimage* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @page_to_phys(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @relocate_kernel, align 4
  %29 = load i32, i32* @relocate_kernel_len, align 4
  %30 = call i32 @memcpy(i8* %27, i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %21, %18, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @machine_kexec_prepare_kdump(...) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
