; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___load_ucode_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_amd.c___load_ucode_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio_data = type { i32 }
%struct.ucode_cpu_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CONFIG_X86_32 = common dso_local global i32 0, align 4
@ucode_cpu_info = common dso_local global i8* null, align 8
@ucode_path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cpio_data*)* @__load_ucode_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__load_ucode_amd(i32 %0, %struct.cpio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpio_data*, align 8
  %5 = alloca %struct.ucode_cpu_info*, align 8
  %6 = alloca %struct.cpio_data, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpio_data, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cpio_data* %1, %struct.cpio_data** %4, align 8
  %10 = load i32, i32* @CONFIG_X86_32, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** @ucode_cpu_info, align 8
  %15 = call i64 @__pa_nodebug(i8* %14)
  %16 = inttoptr i64 %15 to %struct.ucode_cpu_info*
  store %struct.ucode_cpu_info* %16, %struct.ucode_cpu_info** %5, align 8
  %17 = load i8*, i8** @ucode_path, align 8
  %18 = call i64 @__pa_nodebug(i8* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i8*, i8** @ucode_cpu_info, align 8
  %22 = bitcast i8* %21 to %struct.ucode_cpu_info*
  store %struct.ucode_cpu_info* %22, %struct.ucode_cpu_info** %5, align 8
  %23 = load i8*, i8** @ucode_path, align 8
  store i8* %23, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @x86_family(i32 %25)
  %27 = call i32 @get_builtin_microcode(%struct.cpio_data* %6, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @find_microcode_in_initrd(i8* %30, i32 %31)
  %33 = getelementptr inbounds %struct.cpio_data, %struct.cpio_data* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.cpio_data* %6 to i8*
  %35 = bitcast %struct.cpio_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %5, align 8
  %39 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.cpio_data*, %struct.cpio_data** %4, align 8
  %42 = bitcast %struct.cpio_data* %41 to i8*
  %43 = bitcast %struct.cpio_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @__pa_nodebug(i8*) #1

declare dso_local i32 @get_builtin_microcode(%struct.cpio_data*, i32) #1

declare dso_local i32 @x86_family(i32) #1

declare dso_local i32 @find_microcode_in_initrd(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
