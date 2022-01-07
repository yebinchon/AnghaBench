; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_crash_fadump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_crash_fadump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 (%struct.fadump_crash_info_header*, i8*)* }
%struct.fadump_crash_info_header = type { i32, %struct.pt_regs, i32 }
%struct.pt_regs = type { i32 }

@crashing_cpu = common dso_local global i32 0, align 4
@fw_dump = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cpu_online_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crash_fadump(%struct.pt_regs* %0, i8* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fadump_crash_info_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.fadump_crash_info_header* null, %struct.fadump_crash_info_header** %5, align 8
  %8 = call i32 (...) @should_fadump_crash()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @cmpxchg(i32* @crashing_cpu, i32 -1, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %21, %17
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_dump, i32 0, i32 2), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @cpu_relax()
  br label %18

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %11
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_dump, i32 0, i32 1), align 8
  %26 = call %struct.fadump_crash_info_header* @__va(i32 %25)
  store %struct.fadump_crash_info_header* %26, %struct.fadump_crash_info_header** %5, align 8
  %27 = load i32, i32* @crashing_cpu, align 4
  %28 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %29 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @crash_save_vmcoreinfo()
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = icmp ne %struct.pt_regs* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %35 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %34, i32 0, i32 1
  %36 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %37 = bitcast %struct.pt_regs* %35 to i8*
  %38 = bitcast %struct.pt_regs* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %43

39:                                               ; preds = %24
  %40 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %41 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %40, i32 0, i32 1
  %42 = call i32 @ppc_save_regs(%struct.pt_regs* %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32*, i32** @cpu_online_mask, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %47 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_dump, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.fadump_crash_info_header*, i8*)*, i32 (%struct.fadump_crash_info_header*, i8*)** %49, align 8
  %51 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 %50(%struct.fadump_crash_info_header* %51, i8* %52)
  br label %54

54:                                               ; preds = %43, %23, %10
  ret void
}

declare dso_local i32 @should_fadump_crash(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local %struct.fadump_crash_info_header* @__va(i32) #1

declare dso_local i32 @crash_save_vmcoreinfo(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ppc_save_regs(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
