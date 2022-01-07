; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare_page_tables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare_page_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kimage*)* @machine_kexec_prepare_page_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_kexec_prepare_page_tables(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.kimage*, %struct.kimage** %2, align 8
  %6 = getelementptr inbounds %struct.kimage, %struct.kimage* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @page_address(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.kimage*, %struct.kimage** %2, align 8
  %10 = getelementptr inbounds %struct.kimage, %struct.kimage* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.kimage*, %struct.kimage** %2, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @__pa(i8* %20)
  %22 = call i32 @machine_kexec_page_table_set_one(i32 %12, i32* %13, i32 %17, i64 %19, i64 %21)
  %23 = load %struct.kimage*, %struct.kimage** %2, align 8
  %24 = getelementptr inbounds %struct.kimage, %struct.kimage* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.kimage*, %struct.kimage** %2, align 8
  %29 = getelementptr inbounds %struct.kimage, %struct.kimage* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @__pa(i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @__pa(i8* %34)
  %36 = call i32 @machine_kexec_page_table_set_one(i32 %26, i32* %27, i32 %31, i64 %33, i64 %35)
  ret void
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @machine_kexec_page_table_set_one(i32, i32*, i32, i64, i64) #1

declare dso_local i64 @__pa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
