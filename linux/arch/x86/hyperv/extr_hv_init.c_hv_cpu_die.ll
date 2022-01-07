; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_cpu_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_reenlightenment_control = type { i64 }

@hyperv_pcpu_input_arg = common dso_local global i32 0, align 4
@hv_vp_assist_page = common dso_local global i64* null, align 8
@HV_X64_MSR_VP_ASSIST_PAGE = common dso_local global i32 0, align 4
@hv_reenlightenment_cb = common dso_local global i32* null, align 8
@HV_X64_MSR_REENLIGHTENMENT_CONTROL = common dso_local global i32 0, align 4
@hv_vp_index = common dso_local global i64* null, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_cpu_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_cpu_die(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_reenlightenment_control, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* @hyperv_pcpu_input_arg, align 4
  %12 = call i64 @this_cpu_ptr(i32 %11)
  %13 = inttoptr i64 %12 to i8**
  store i8** %13, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @local_irq_restore(i64 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i32 @free_page(i64 %20)
  %22 = load i64*, i64** @hv_vp_assist_page, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i64*, i64** @hv_vp_assist_page, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @HV_X64_MSR_VP_ASSIST_PAGE, align 4
  %33 = call i32 @wrmsrl(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %31, %24, %1
  %35 = load i32*, i32** @hv_reenlightenment_cb, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %66

38:                                               ; preds = %34
  %39 = load i32, i32* @HV_X64_MSR_REENLIGHTENMENT_CONTROL, align 4
  %40 = bitcast %struct.hv_reenlightenment_control* %4 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rdmsrl(i32 %39, i32 %41)
  %43 = getelementptr inbounds %struct.hv_reenlightenment_control, %struct.hv_reenlightenment_control* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @hv_vp_index, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %38
  %52 = load i32, i32* @cpu_online_mask, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @cpumask_any_but(i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i64*, i64** @hv_vp_index, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.hv_reenlightenment_control, %struct.hv_reenlightenment_control* %4, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* @HV_X64_MSR_REENLIGHTENMENT_CONTROL, align 4
  %62 = bitcast %struct.hv_reenlightenment_control* %4 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wrmsrl(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %51, %38
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @this_cpu_ptr(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @cpumask_any_but(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
