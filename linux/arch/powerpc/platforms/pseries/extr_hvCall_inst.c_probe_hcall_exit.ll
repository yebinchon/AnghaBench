; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_probe_hcall_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_probe_hcall_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hcall_stats = type { i64, i32, i64, i32, i32 }

@MAX_HCALL_OPCODE = common dso_local global i64 0, align 8
@hcall_stats = common dso_local global i32* null, align 8
@SPRN_PURR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64*)* @probe_hcall_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_hcall_exit(i8* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.hcall_stats*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MAX_HCALL_OPCODE, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %47

14:                                               ; preds = %4
  %15 = load i32*, i32** @hcall_stats, align 8
  %16 = load i64, i64* %6, align 8
  %17 = udiv i64 %16, 4
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call %struct.hcall_stats* @this_cpu_ptr(i32* %18)
  store %struct.hcall_stats* %19, %struct.hcall_stats** %9, align 8
  %20 = load %struct.hcall_stats*, %struct.hcall_stats** %9, align 8
  %21 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = call i64 (...) @mftb()
  %25 = load %struct.hcall_stats*, %struct.hcall_stats** %9, align 8
  %26 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.hcall_stats*, %struct.hcall_stats** %9, align 8
  %30 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load i32, i32* @SPRN_PURR, align 4
  %36 = call i64 @mfspr(i32 %35)
  %37 = load %struct.hcall_stats*, %struct.hcall_stats** %9, align 8
  %38 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.hcall_stats*, %struct.hcall_stats** %9, align 8
  %42 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  br label %47

47:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.hcall_stats* @this_cpu_ptr(i32*) #1

declare dso_local i64 @mftb(...) #1

declare dso_local i64 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
