; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_64.c_default_machine_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_machine_kexec_64.c_default_machine_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.kimage = type { i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"kexec: Starting switchover sequence.\0A\00", align 1
@HARDIRQ_OFFSET = common dso_local global i32 0, align 4
@kexec_paca = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"kexec: Unshared all shared pages.\0A\00", align 1
@paca_ptrs = common dso_local global %struct.TYPE_6__** null, align 8
@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@FW_FEATURE_PS3_LV1 = common dso_local global i32 0, align 4
@kexec_stack = common dso_local global i32 0, align 4
@mmu_cleanup_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_machine_kexec(%struct.kimage* %0) #0 {
  %2 = alloca %struct.kimage*, align 8
  %3 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %2, align 8
  %4 = call i32 (...) @kdump_in_progress()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @kexec_prepare_cpus()
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.TYPE_7__* (...) @current_thread_info()
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @HARDIRQ_OFFSET, align 4
  %13 = call %struct.TYPE_7__* (...) @current_thread_info()
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = call i32 (...) @get_paca()
  %16 = call i32 @memcpy(%struct.TYPE_6__* @kexec_paca, i32 %15, i32 4)
  store i32 -554766610, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kexec_paca, i32 0, i32 0), align 8
  %17 = call i64 (...) @is_secure_guest()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %8
  %20 = load %struct.kimage*, %struct.kimage** %2, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.kimage*, %struct.kimage** %2, align 8
  %26 = getelementptr inbounds %struct.kimage, %struct.kimage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = call i32 (...) @uv_unshare_all_pages()
  %32 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %24, %19, %8
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @paca_ptrs, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kexec_paca, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %35
  store %struct.TYPE_6__* @kexec_paca, %struct.TYPE_6__** %36, align 8
  %37 = call i32 @setup_paca(%struct.TYPE_6__* @kexec_paca)
  %38 = call i64 (...) @radix_enabled()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %42 = call i64 @firmware_has_feature(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @FW_FEATURE_PS3_LV1, align 4
  %46 = call i64 @firmware_has_feature(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %48, %33
  %52 = phi i1 [ true, %33 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load %struct.kimage*, %struct.kimage** %2, align 8
  %55 = getelementptr inbounds %struct.kimage, %struct.kimage* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kimage*, %struct.kimage** %2, align 8
  %58 = load %struct.kimage*, %struct.kimage** %2, align 8
  %59 = getelementptr inbounds %struct.kimage, %struct.kimage* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @page_address(i32 %60)
  %62 = load i32, i32* @mmu_cleanup_all, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @kexec_sequence(i32* @kexec_stack, i32 %56, %struct.kimage* %57, i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @kdump_in_progress(...) #1

declare dso_local i32 @kexec_prepare_cpus(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.TYPE_7__* @current_thread_info(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @get_paca(...) #1

declare dso_local i64 @is_secure_guest(...) #1

declare dso_local i32 @uv_unshare_all_pages(...) #1

declare dso_local i32 @setup_paca(%struct.TYPE_6__*) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @kexec_sequence(i32*, i32, %struct.kimage*, i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
