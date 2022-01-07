; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_nested_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_nested_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i64 0, align 8
@KVMPPC_NR_LPIDS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@pseries_partition_tb = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"kvm-hv: failed to allocated nested partition table\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@H_SET_PARTITION_TABLE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"kvm-hv: Parent hypervisor does not support nesting (rc=%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmhv_nested_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @kvmhv_on_pseries()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %55

8:                                                ; preds = %0
  %9 = call i32 (...) @radix_enabled()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @ENODEV, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %1, align 8
  br label %55

14:                                               ; preds = %8
  %15 = load i64, i64* @KVMPPC_NR_LPIDS, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @__ilog2(i64 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i64 8, i64* %2, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %2, align 8
  %25 = shl i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kmalloc(i32 %26, i32 %27)
  store i32* %28, i32** @pseries_partition_tb, align 8
  %29 = load i32*, i32** @pseries_partition_tb, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %1, align 8
  br label %55

35:                                               ; preds = %23
  %36 = load i32*, i32** @pseries_partition_tb, align 8
  %37 = call i64 @__pa(i32* %36)
  %38 = load i64, i64* %2, align 8
  %39 = sub nsw i64 %38, 8
  %40 = or i64 %37, %39
  store i64 %40, i64* %3, align 8
  %41 = load i32, i32* @H_SET_PARTITION_TABLE, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @plpar_hcall_norets(i32 %41, i64 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @H_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** @pseries_partition_tb, align 8
  %51 = call i32 @kfree(i32* %50)
  store i32* null, i32** @pseries_partition_tb, align 8
  %52 = load i64, i64* @ENODEV, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %1, align 8
  br label %55

54:                                               ; preds = %35
  store i64 0, i64* %1, align 8
  br label %55

55:                                               ; preds = %54, %47, %31, %11, %7
  %56 = load i64, i64* %1, align 8
  ret i64 %56
}

declare dso_local i32 @kvmhv_on_pseries(...) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @__ilog2(i64) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local i64 @plpar_hcall_norets(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
