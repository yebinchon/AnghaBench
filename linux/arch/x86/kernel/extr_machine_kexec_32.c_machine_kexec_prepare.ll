; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %5 = load %struct.kimage*, %struct.kimage** %3, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @page_address(i32 %7)
  %9 = call i32 @set_memory_x(i64 %8, i32 1)
  %10 = load %struct.kimage*, %struct.kimage** %3, align 8
  %11 = call i32 @machine_kexec_alloc_page_tables(%struct.kimage* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.kimage*, %struct.kimage** %3, align 8
  %18 = call i32 @machine_kexec_prepare_page_tables(%struct.kimage* %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @set_memory_x(i64, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @machine_kexec_alloc_page_tables(%struct.kimage*) #1

declare dso_local i32 @machine_kexec_prepare_page_tables(%struct.kimage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
