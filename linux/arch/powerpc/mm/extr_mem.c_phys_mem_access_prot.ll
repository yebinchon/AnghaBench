; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mem.c_phys_mem_access_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mem.c_phys_mem_access_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.file*, i64, i64, i32)* }
%struct.file = type { i32 }

@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phys_mem_access_prot(%struct.file* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %11 = icmp ne i32 (%struct.file*, i64, i64, i32)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32 (%struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 %13(%struct.file* %14, i64 %15, i64 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @page_is_ram(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pgprot_noncached(i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @page_is_ram(i64) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
