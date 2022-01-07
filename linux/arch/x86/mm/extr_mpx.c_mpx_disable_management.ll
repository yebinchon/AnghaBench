; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_disable_management.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_disable_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@X86_FEATURE_MPX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MPX_INVALID_BOUNDS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpx_disable_management() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mm_struct*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %5, %struct.mm_struct** %2, align 8
  %6 = load i32, i32* @X86_FEATURE_MPX, align 4
  %7 = call i32 @cpu_feature_enabled(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %23

12:                                               ; preds = %0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load i32, i32* @MPX_INVALID_BOUNDS_DIR, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @up_write(i32* %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @cpu_feature_enabled(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
