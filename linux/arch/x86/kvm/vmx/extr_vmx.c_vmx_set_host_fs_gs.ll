; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_host_fs_gs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_host_fs_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs_host_state = type { i32, i32, i64, i64 }

@HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_BASE = common dso_local global i32 0, align 4
@HOST_GS_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_host_fs_gs(%struct.vmcs_host_state* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.vmcs_host_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vmcs_host_state* %0, %struct.vmcs_host_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %13 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vmcs_write16(i32 %24, i32 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %29 = call i32 @vmcs_write16(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %33 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %5
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %37 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 7
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @vmcs_write16(i32 %48, i32 %49)
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %53 = call i32 @vmcs_write16(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %57 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %34
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %61 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32, i32* @HOST_FS_BASE, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @vmcs_writel(i32 %68, i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %73 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %58
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %77 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* @HOST_GS_BASE, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @vmcs_writel(i32 %84, i64 %85)
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %89 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %74
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
