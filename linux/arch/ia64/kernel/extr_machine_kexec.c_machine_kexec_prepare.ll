; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_machine_kexec.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_machine_kexec.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@relocate_new_kernel = common dso_local global i32 0, align 4
@relocate_new_kernel_size = common dso_local global i64 0, align 8
@ia64_kimage = common dso_local global %struct.kimage* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  store i64* bitcast (i32* @relocate_new_kernel to i64*), i64** %4, align 8
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @page_address(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i64, i64* @relocate_new_kernel_size, align 8
  %15 = call i32 @memcpy(i8* %9, i8* %13, i64 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* @relocate_new_kernel_size, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @flush_icache_range(i64 %17, i64 %21)
  %23 = load %struct.kimage*, %struct.kimage** %2, align 8
  store %struct.kimage* %23, %struct.kimage** @ia64_kimage, align 8
  ret i32 0
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
