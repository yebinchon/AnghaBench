; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_sbus_handler_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_sbus_handler_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bucket = type { i32, %struct.irq_bucket* }

@irq_map = common dso_local global %struct.irq_bucket** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4d_sbus_handler_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4d_sbus_handler_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_bucket*, align 8
  %11 = alloca %struct.irq_bucket*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @bw_get_intr_mask(i32 %12)
  %14 = and i32 %13, 262143
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @bw_clear_intr_mask(i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = shl i32 %18, 2
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %86, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %86

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SBI2DEVID(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 15, %31
  %33 = call i32 @acquire_sbi(i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 15, %34
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %80, %28
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %80

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @sun4d_encode_irq(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.irq_bucket**, %struct.irq_bucket*** @irq_map, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.irq_bucket*, %struct.irq_bucket** %58, i64 %60
  %62 = load %struct.irq_bucket*, %struct.irq_bucket** %61, align 8
  store %struct.irq_bucket* %62, %struct.irq_bucket** %10, align 8
  br label %63

63:                                               ; preds = %66, %49
  %64 = load %struct.irq_bucket*, %struct.irq_bucket** %10, align 8
  %65 = icmp ne %struct.irq_bucket* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.irq_bucket*, %struct.irq_bucket** %10, align 8
  %68 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %67, i32 0, i32 1
  %69 = load %struct.irq_bucket*, %struct.irq_bucket** %68, align 8
  store %struct.irq_bucket* %69, %struct.irq_bucket** %11, align 8
  %70 = load %struct.irq_bucket*, %struct.irq_bucket** %10, align 8
  %71 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @generic_handle_irq(i32 %72)
  %74 = load %struct.irq_bucket*, %struct.irq_bucket** %11, align 8
  store %struct.irq_bucket* %74, %struct.irq_bucket** %10, align 8
  br label %63

75:                                               ; preds = %63
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @SBI2DEVID(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @release_sbi(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %48
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %40

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85, %27
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = lshr i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %20

91:                                               ; preds = %20
  ret void
}

declare dso_local i32 @bw_get_intr_mask(i32) #1

declare dso_local i32 @bw_clear_intr_mask(i32, i32) #1

declare dso_local i32 @acquire_sbi(i32, i32) #1

declare dso_local i32 @SBI2DEVID(i32) #1

declare dso_local i32 @sun4d_encode_irq(i32, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @release_sbi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
