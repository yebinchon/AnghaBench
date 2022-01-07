; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_set_in_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_set_in_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_hub_nmi_s = type { i32, i32, i32 }

@uv_in_nmi = common dso_local global i32 0, align 4
@uv_nmi_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uv_hub_nmi_s*)* @uv_set_in_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_set_in_nmi(i32 %0, %struct.uv_hub_nmi_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uv_hub_nmi_s*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.uv_hub_nmi_s* %1, %struct.uv_hub_nmi_s** %4, align 8
  %6 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %4, align 8
  %7 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %6, i32 0, i32 2
  %8 = call i32 @atomic_add_unless(i32* %7, i32 1, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %4, align 8
  %13 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %12, i32 0, i32 1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @atomic_set(i32* %13, i32 %14)
  %16 = call i32 @atomic_add_unless(i32* @uv_in_nmi, i32 1, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @atomic_set(i32* @uv_nmi_cpu, i32 %19)
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %4, align 8
  %23 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
