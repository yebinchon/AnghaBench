; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_add_e820ext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_add_e820ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.setup_data = type { i32, i64, i32 }

@SETUP_E820_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.boot_params*, %struct.setup_data*, i32)* @add_e820ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_e820ext(%struct.boot_params* %0, %struct.setup_data* %1, i32 %2) #0 {
  %4 = alloca %struct.boot_params*, align 8
  %5 = alloca %struct.setup_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.setup_data*, align 8
  store %struct.boot_params* %0, %struct.boot_params** %4, align 8
  store %struct.setup_data* %1, %struct.setup_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @SETUP_E820_EXT, align 4
  %9 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %10 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %16 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %18 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %20 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.setup_data*
  store %struct.setup_data* %23, %struct.setup_data** %7, align 8
  br label %24

24:                                               ; preds = %34, %3
  %25 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %26 = icmp ne %struct.setup_data* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %29 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %36 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.setup_data*
  store %struct.setup_data* %38, %struct.setup_data** %7, align 8
  br label %24

39:                                               ; preds = %32
  %40 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %41 = icmp ne %struct.setup_data* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %44 = ptrtoint %struct.setup_data* %43 to i64
  %45 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %46 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %49 = ptrtoint %struct.setup_data* %48 to i64
  %50 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %51 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
