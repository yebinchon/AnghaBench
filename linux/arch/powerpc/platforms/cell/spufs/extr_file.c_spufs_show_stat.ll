; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_show_stat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_show_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.spu_context* }
%struct.spu_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"%s %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu %llu\0A\00", align 1
@ctx_state_names = common dso_local global i32* null, align 8
@SPU_UTIL_USER = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4
@SPU_UTIL_IOWAIT = common dso_local global i32 0, align 4
@SPU_UTIL_IDLE_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @spufs_show_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_show_stat(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.spu_context*, %struct.spu_context** %9, align 8
  store %struct.spu_context* %10, %struct.spu_context** %6, align 8
  %11 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %12 = call i32 @spu_acquire(%struct.spu_context* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load i32*, i32** @ctx_state_names, align 8
  %20 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %27 = load i32, i32* @SPU_UTIL_USER, align 4
  %28 = call i32 @spufs_acct_time(%struct.spu_context* %26, i32 %27)
  %29 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %30 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %31 = call i32 @spufs_acct_time(%struct.spu_context* %29, i32 %30)
  %32 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %33 = load i32, i32* @SPU_UTIL_IOWAIT, align 4
  %34 = call i32 @spufs_acct_time(%struct.spu_context* %32, i32 %33)
  %35 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %36 = load i32, i32* @SPU_UTIL_IDLE_LOADED, align 4
  %37 = call i32 @spufs_acct_time(%struct.spu_context* %35, i32 %36)
  %38 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %47 = call i32 @spufs_slb_flts(%struct.spu_context* %46)
  %48 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %49 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %53 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %57 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %61 = call i32 @spufs_class2_intrs(%struct.spu_context* %60)
  %62 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %63 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %41, i32 %45, i32 %47, i32 %51, i32 %55, i32 %59, i32 %61, i32 %65)
  %67 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %68 = call i32 @spu_release(%struct.spu_context* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %17, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spufs_acct_time(%struct.spu_context*, i32) #1

declare dso_local i32 @spufs_slb_flts(%struct.spu_context*) #1

declare dso_local i32 @spufs_class2_intrs(%struct.spu_context*) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
