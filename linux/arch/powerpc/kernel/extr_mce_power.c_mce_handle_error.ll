; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }
%struct.mce_derror_table = type { i32 }
%struct.mce_ierror_table = type { i32 }
%struct.mce_error_info = type { i64, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@MCE_ERROR_TYPE_UE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*, %struct.mce_derror_table*, %struct.mce_ierror_table*)* @mce_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mce_handle_error(%struct.pt_regs* %0, %struct.mce_derror_table* %1, %struct.mce_ierror_table* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mce_derror_table*, align 8
  %6 = alloca %struct.mce_ierror_table*, align 8
  %7 = alloca %struct.mce_error_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.mce_derror_table* %1, %struct.mce_derror_table** %5, align 8
  store %struct.mce_ierror_table* %2, %struct.mce_ierror_table** %6, align 8
  %12 = bitcast %struct.mce_error_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @ULONG_MAX, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @SRR1_MC_LOADSTORE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = load %struct.mce_derror_table*, %struct.mce_derror_table** %5, align 8
  %23 = call i64 @mce_handle_derror(%struct.pt_regs* %21, %struct.mce_derror_table* %22, %struct.mce_error_info* %7, i32* %8, i32* %9)
  store i64 %23, i64* %11, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = load %struct.mce_ierror_table*, %struct.mce_ierror_table** %6, align 8
  %27 = call i64 @mce_handle_ierror(%struct.pt_regs* %25, %struct.mce_ierror_table* %26, %struct.mce_error_info* %7, i32* %8, i32* %9)
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MCE_ERROR_TYPE_UE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = call i64 @mce_handle_ue_error(%struct.pt_regs* %37, %struct.mce_error_info* %7)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %36, %31, %28
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @save_mce_event(%struct.pt_regs* %40, i64 %41, %struct.mce_error_info* %7, i32 %44, i32 %45, i32 %46)
  %48 = load i64, i64* %11, align 8
  ret i64 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SRR1_MC_LOADSTORE(i32) #2

declare dso_local i64 @mce_handle_derror(%struct.pt_regs*, %struct.mce_derror_table*, %struct.mce_error_info*, i32*, i32*) #2

declare dso_local i64 @mce_handle_ierror(%struct.pt_regs*, %struct.mce_ierror_table*, %struct.mce_error_info*, i32*, i32*) #2

declare dso_local i64 @mce_handle_ue_error(%struct.pt_regs*, %struct.mce_error_info*) #2

declare dso_local i32 @save_mce_event(%struct.pt_regs*, i64, %struct.mce_error_info*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
