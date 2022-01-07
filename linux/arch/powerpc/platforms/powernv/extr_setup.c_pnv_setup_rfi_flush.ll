; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_setup.c_pnv_setup_rfi_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_setup.c_pnv_setup_rfi_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@L1D_FLUSH_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ibm,opal\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fw-features\00", align 1
@SEC_FTR_L1D_FLUSH_TRIG2 = common dso_local global i32 0, align 4
@L1D_FLUSH_MTTRIG = common dso_local global i32 0, align 4
@SEC_FTR_L1D_FLUSH_ORI30 = common dso_local global i32 0, align 4
@L1D_FLUSH_ORI = common dso_local global i32 0, align 4
@SEC_FTR_FAVOUR_SECURITY = common dso_local global i32 0, align 4
@SEC_FTR_L1D_FLUSH_PR = common dso_local global i32 0, align 4
@SEC_FTR_L1D_FLUSH_HV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pnv_setup_rfi_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_setup_rfi_flush() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @L1D_FLUSH_FALLBACK, align 4
  store i32 %5, i32* %3, align 4
  %6 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %6, %struct.device_node** %1, align 8
  %7 = load %struct.device_node*, %struct.device_node** %1, align 8
  %8 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %2, align 8
  %9 = load %struct.device_node*, %struct.device_node** %1, align 8
  %10 = call i32 @of_node_put(%struct.device_node* %9)
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %0
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = call i32 @init_fw_feat_flags(%struct.device_node* %14)
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = call i32 @of_node_put(%struct.device_node* %16)
  %18 = load i32, i32* @SEC_FTR_L1D_FLUSH_TRIG2, align 4
  %19 = call i64 @security_ftr_enabled(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @L1D_FLUSH_MTTRIG, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i32, i32* @SEC_FTR_L1D_FLUSH_ORI30, align 4
  %25 = call i64 @security_ftr_enabled(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @L1D_FLUSH_ORI, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, i32* @SEC_FTR_FAVOUR_SECURITY, align 4
  %32 = call i64 @security_ftr_enabled(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @SEC_FTR_L1D_FLUSH_PR, align 4
  %36 = call i64 @security_ftr_enabled(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @SEC_FTR_L1D_FLUSH_HV, align 4
  %40 = call i64 @security_ftr_enabled(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ true, %34 ], [ %41, %38 ]
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i1 [ false, %30 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @setup_rfi_flush(i32 %47, i32 %48)
  %50 = call i32 (...) @setup_count_cache_flush()
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @init_fw_feat_flags(%struct.device_node*) #1

declare dso_local i64 @security_ftr_enabled(i32) #1

declare dso_local i32 @setup_rfi_flush(i32, i32) #1

declare dso_local i32 @setup_count_cache_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
