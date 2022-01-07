; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_hc_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hvCall_inst.c_hc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hcall_stats* }
%struct.hcall_stats = type { i32, i64, i32 }

@CPU_FTR_PURR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%lu %lu %lu %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%lu %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hcall_stats*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.hcall_stats*, %struct.hcall_stats** %10, align 8
  store %struct.hcall_stats* %11, %struct.hcall_stats** %6, align 8
  %12 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %12, i64 %13
  %15 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = load i32, i32* @CPU_FTR_PURR, align 4
  %20 = call i64 @cpu_has_feature(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = shl i64 %24, 2
  %26 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %26, i64 %27
  %29 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %31, i64 %32
  %34 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %36, i64 %37
  %39 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30, i32 %35, i32 %40)
  br label %57

42:                                               ; preds = %18
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = shl i64 %44, 2
  %46 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %46, i64 %47
  %49 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hcall_stats*, %struct.hcall_stats** %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %51, i64 %52
  %54 = getelementptr inbounds %struct.hcall_stats, %struct.hcall_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i64, i64, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %50, i32 %55)
  br label %57

57:                                               ; preds = %42, %22
  br label %58

58:                                               ; preds = %57, %2
  ret i32 0
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
