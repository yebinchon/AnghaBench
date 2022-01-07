; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_run_benchmarks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_run_benchmarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.benchmarks = type { i32, i8*, i32, i32, i64, i32* }

@benchmark_nop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@benchmark_pushpop1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"stmdb\09sp!, {r3-r11,lr}\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ldmia\09sp!, {r3-r11,pc}\00", align 1
@benchmark_pushpop2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"stmdb\09sp!, {r0-r8,lr}\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ldmia\09sp!, {r0-r8,pc}\00", align 1
@benchmark_pushpop3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"stmdb\09sp!, {r4,lr}\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ldmia\09sp!, {r4,pc}\00", align 1
@benchmark_pushpop4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"stmdb\09sp!, {r0,lr}\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ldmia\09sp!, {r0,pc}\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"    %dns for kprobe %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@benchmark_pushpop_thumb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_benchmarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_benchmarks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x %struct.benchmarks], align 16
  %4 = alloca %struct.benchmarks*, align 8
  %5 = getelementptr inbounds [10 x %struct.benchmarks], [10 x %struct.benchmarks]* %3, i64 0, i64 0
  %6 = bitcast %struct.benchmarks* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 40, i1 false)
  %7 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %5, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_nop to i32), i32* %7, align 8
  %8 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %5, i32 0, i32 2
  store i32 ptrtoint ([4 x i8]* @.str to i32), i32* %8, align 8
  %9 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %5, i64 1
  %10 = bitcast %struct.benchmarks* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %9, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop1 to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %9, i32 0, i32 2
  store i32 ptrtoint ([23 x i8]* @.str.1 to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %9, i64 1
  %14 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop1 to i32), i32* %14, align 8
  %15 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %15, align 8
  %16 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 2
  store i32 ptrtoint ([23 x i8]* @.str.2 to i32), i32* %16, align 8
  %17 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i32 0, i32 5
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %13, i64 1
  %21 = bitcast %struct.benchmarks* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %20, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop2 to i32), i32* %22, align 8
  %23 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %20, i32 0, i32 2
  store i32 ptrtoint ([22 x i8]* @.str.3 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %20, i64 1
  %25 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop2 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 2
  store i32 ptrtoint ([22 x i8]* @.str.4 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %24, i64 1
  %32 = bitcast %struct.benchmarks* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 40, i1 false)
  %33 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %31, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop3 to i32), i32* %33, align 8
  %34 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %31, i32 0, i32 2
  store i32 ptrtoint ([19 x i8]* @.str.5 to i32), i32* %34, align 8
  %35 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %31, i64 1
  %36 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop3 to i32), i32* %36, align 8
  %37 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %37, align 8
  %38 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 2
  store i32 ptrtoint ([19 x i8]* @.str.6 to i32), i32* %38, align 8
  %39 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %35, i64 1
  %43 = bitcast %struct.benchmarks* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 40, i1 false)
  %44 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %42, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop4 to i32), i32* %44, align 8
  %45 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %42, i32 0, i32 2
  store i32 ptrtoint ([19 x i8]* @.str.7 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %42, i64 1
  %47 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 0
  store i32 ptrtoint (i32* @benchmark_pushpop4 to i32), i32* %47, align 8
  %48 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 2
  store i32 ptrtoint ([19 x i8]* @.str.8 to i32), i32* %49, align 8
  %50 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i32 0, i32 5
  store i32* null, i32** %52, align 8
  %53 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %46, i64 1
  %54 = bitcast %struct.benchmarks* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 40, i1 false)
  %55 = getelementptr inbounds [10 x %struct.benchmarks], [10 x %struct.benchmarks]* %3, i64 0, i64 0
  store %struct.benchmarks* %55, %struct.benchmarks** %4, align 8
  br label %56

56:                                               ; preds = %79, %0
  %57 = load %struct.benchmarks*, %struct.benchmarks** %4, align 8
  %58 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.benchmarks*, %struct.benchmarks** %4, align 8
  %63 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.benchmarks*, %struct.benchmarks** %4, align 8
  %66 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kprobe_benchmark(i64 %64, i32 %67)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %2, align 4
  store i32 %72, i32* %1, align 4
  br label %84

73:                                               ; preds = %61
  %74 = load i32, i32* %2, align 4
  %75 = load %struct.benchmarks*, %struct.benchmarks** %4, align 8
  %76 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load %struct.benchmarks*, %struct.benchmarks** %4, align 8
  %81 = getelementptr inbounds %struct.benchmarks, %struct.benchmarks* %80, i32 1
  store %struct.benchmarks* %81, %struct.benchmarks** %4, align 8
  br label %56

82:                                               ; preds = %56
  %83 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %82, %71
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kprobe_benchmark(i64, i32) #2

declare dso_local i32 @pr_info(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
