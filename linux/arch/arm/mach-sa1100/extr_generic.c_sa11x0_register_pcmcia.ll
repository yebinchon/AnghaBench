; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_pcmcia.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_pcmcia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiod_lookup_table = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sa11x0-pcmcia\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa11x0_register_pcmcia(i32 %0, %struct.gpiod_lookup_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiod_lookup_table*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gpiod_lookup_table* %1, %struct.gpiod_lookup_table** %4, align 8
  %5 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %4, align 8
  %6 = icmp ne %struct.gpiod_lookup_table* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %4, align 8
  %9 = call i32 @gpiod_add_lookup_table(%struct.gpiod_lookup_table* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @platform_device_register_simple(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null, i32 0)
  ret void
}

declare dso_local i32 @gpiod_add_lookup_table(%struct.gpiod_lookup_table*) #1

declare dso_local i32 @platform_device_register_simple(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
