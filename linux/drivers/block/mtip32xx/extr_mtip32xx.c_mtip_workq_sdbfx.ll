; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_workq_sdbfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_workq_sdbfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i64*, %struct.driver_data* }
%struct.driver_data = type { i64, i32 }
%struct.mtip_cmd = type { i32 }

@MTIP_TAG_INTERNAL = common dso_local global i32 0, align 4
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*, i32, i32)* @mtip_workq_sdbfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_workq_sdbfx(%struct.mtip_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.driver_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtip_cmd*, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %12 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %11, i32 0, i32 1
  %13 = load %struct.driver_data*, %struct.driver_data** %12, align 8
  store %struct.driver_data* %13, %struct.driver_data** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  br label %80

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %25 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @writel(i32 %23, i64 %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %65, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %68

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 5
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %65

56:                                               ; preds = %44
  %57 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.mtip_cmd* @mtip_cmd_from_tag(%struct.driver_data* %57, i32 %58)
  store %struct.mtip_cmd* %59, %struct.mtip_cmd** %10, align 8
  %60 = load %struct.mtip_cmd*, %struct.mtip_cmd** %10, align 8
  %61 = call i32 @mtip_complete_command(%struct.mtip_cmd* %60, i32 0)
  br label %62

62:                                               ; preds = %56, %40
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %32

68:                                               ; preds = %38
  %69 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %70 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %69, i32 0, i32 1
  %71 = call i64 @atomic_dec_return(i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %75 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HOST_IRQ_STAT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 -1, i64 %78)
  br label %80

80:                                               ; preds = %16, %73, %68
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mtip_cmd* @mtip_cmd_from_tag(%struct.driver_data*, i32) #1

declare dso_local i32 @mtip_complete_command(%struct.mtip_cmd*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
