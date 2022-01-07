; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_alloc_lookup_fw_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_alloc_lookup_fw_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware_cache = type { i32, i32 }
%struct.fw_priv = type { i32, i32 }

@FW_OPT_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"batched request - sharing the same struct fw_priv and lookup for multiple requests\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.firmware_cache*, %struct.fw_priv**, i8*, i64, i32)* @alloc_lookup_fw_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_lookup_fw_priv(i8* %0, %struct.firmware_cache* %1, %struct.fw_priv** %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.firmware_cache*, align 8
  %10 = alloca %struct.fw_priv**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_priv*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.firmware_cache* %1, %struct.firmware_cache** %9, align 8
  store %struct.fw_priv** %2, %struct.fw_priv*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.firmware_cache*, %struct.firmware_cache** %9, align 8
  %16 = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @FW_OPT_NOCACHE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.fw_priv* @__lookup_fw_priv(i8* %23)
  store %struct.fw_priv* %24, %struct.fw_priv** %14, align 8
  %25 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %26 = icmp ne %struct.fw_priv* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %29 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %28, i32 0, i32 1
  %30 = call i32 @kref_get(i32* %29)
  %31 = load %struct.firmware_cache*, %struct.firmware_cache** %9, align 8
  %32 = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %35 = load %struct.fw_priv**, %struct.fw_priv*** %10, align 8
  store %struct.fw_priv* %34, %struct.fw_priv** %35, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %75

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.firmware_cache*, %struct.firmware_cache** %9, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call %struct.fw_priv* @__allocate_fw_priv(i8* %39, %struct.firmware_cache* %40, i8* %41, i64 %42)
  store %struct.fw_priv* %43, %struct.fw_priv** %14, align 8
  %44 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %45 = icmp ne %struct.fw_priv* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %48 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %47, i32 0, i32 0
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @FW_OPT_NOCACHE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %56 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %55, i32 0, i32 0
  %57 = load %struct.firmware_cache*, %struct.firmware_cache** %9, align 8
  %58 = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %54, %46
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.firmware_cache*, %struct.firmware_cache** %9, align 8
  %63 = getelementptr inbounds %struct.firmware_cache, %struct.firmware_cache* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %66 = load %struct.fw_priv**, %struct.fw_priv*** %10, align 8
  store %struct.fw_priv* %65, %struct.fw_priv** %66, align 8
  %67 = load %struct.fw_priv*, %struct.fw_priv** %14, align 8
  %68 = icmp ne %struct.fw_priv* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 0, %69 ], [ %72, %70 ]
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %27
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fw_priv* @__lookup_fw_priv(i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.fw_priv* @__allocate_fw_priv(i8*, %struct.firmware_cache*, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
