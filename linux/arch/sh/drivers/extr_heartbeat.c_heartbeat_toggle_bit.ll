; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_toggle_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/extr_heartbeat.c_heartbeat_toggle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heartbeat_data = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.heartbeat_data*, i32, i32)* @heartbeat_toggle_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_toggle_bit(%struct.heartbeat_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.heartbeat_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.heartbeat_data* %0, %struct.heartbeat_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %9 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %23 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %28 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %64 [
    i32 32, label %30
    i32 16, label %47
  ]

30:                                               ; preds = %21
  %31 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %32 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ioread32(i32 %33)
  %35 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %36 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %44 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @iowrite32(i32 %42, i32 %45)
  br label %81

47:                                               ; preds = %21
  %48 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %49 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ioread16(i32 %50)
  %52 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %53 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %61 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @iowrite16(i32 %59, i32 %62)
  br label %81

64:                                               ; preds = %21
  %65 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %66 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ioread8(i32 %67)
  %69 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %70 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.heartbeat_data*, %struct.heartbeat_data** %4, align 8
  %78 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iowrite8(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %64, %47, %30
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
