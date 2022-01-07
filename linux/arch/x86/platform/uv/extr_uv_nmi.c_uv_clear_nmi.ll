; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_clear_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_clear_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_hub_nmi_s = type { i32, i64, i32, i32 }

@uv_hub_nmi = common dso_local global %struct.uv_hub_nmi_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uv_clear_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_clear_nmi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uv_hub_nmi_s*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** @uv_hub_nmi, align 8
  store %struct.uv_hub_nmi_s* %4, %struct.uv_hub_nmi_s** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %3, align 8
  %7 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %6, i32 0, i32 3
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %3, align 8
  %12 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %11, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 -1)
  %14 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %3, align 8
  %15 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %14, i32 0, i32 2
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %3, align 8
  %18 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 (...) @uv_local_mmr_clear_nmi()
  br label %25

23:                                               ; preds = %10
  %24 = call i32 (...) @uv_reassert_nmi()
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %3, align 8
  %27 = getelementptr inbounds %struct.uv_hub_nmi_s, %struct.uv_hub_nmi_s* %26, i32 0, i32 0
  %28 = call i32 @raw_spin_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @uv_local_mmr_clear_nmi(...) #1

declare dso_local i32 @uv_reassert_nmi(...) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
