; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_get_segment_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_get_segment_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.desc_struct = type { i32 }

@SEGMENT_TI_MASK = common dso_local global i32 0, align 4
@SEGMENT_LDT = common dso_local global i32 0, align 4
@GDT_ENTRIES = common dso_local global i32 0, align 4
@gdt_page = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_segment_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_segment_base(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.desc_struct*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = lshr i32 %6, 3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SEGMENT_TI_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SEGMENT_LDT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GDT_ENTRIES, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, i64* %2, align 8
  br label %28

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gdt_page, i32 0, i32 0), align 4
  %21 = call %struct.desc_struct* @raw_cpu_ptr(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %21, i64 %23
  store %struct.desc_struct* %24, %struct.desc_struct** %4, align 8
  br label %25

25:                                               ; preds = %19
  %26 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %27 = call i64 @get_desc_base(%struct.desc_struct* %26)
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %25, %18, %13
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local %struct.desc_struct* @raw_cpu_ptr(i32) #1

declare dso_local i64 @get_desc_base(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
