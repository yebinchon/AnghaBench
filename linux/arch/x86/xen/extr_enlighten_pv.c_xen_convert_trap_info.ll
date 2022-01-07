; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_convert_trap_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_convert_trap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_ptr = type { i32, i64 }
%struct.trap_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_ptr*, %struct.trap_info*)* @xen_convert_trap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_convert_trap_info(%struct.desc_ptr* %0, %struct.trap_info* %1) #0 {
  %3 = alloca %struct.desc_ptr*, align 8
  %4 = alloca %struct.trap_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.desc_ptr* %0, %struct.desc_ptr** %3, align 8
  store %struct.trap_info* %1, %struct.trap_info** %4, align 8
  %9 = load %struct.desc_ptr*, %struct.desc_ptr** %3, align 8
  %10 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %16, 256
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %44, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load %struct.desc_ptr*, %struct.desc_ptr** %3, align 8
  %26 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.trap_info*, %struct.trap_info** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %34, i64 %36
  %38 = call i64 @cvt_gate_to_trap(i32 %32, i32* %33, %struct.trap_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.trap_info*, %struct.trap_info** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %48, i64 %50
  %52 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @cvt_gate_to_trap(i32, i32*, %struct.trap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
