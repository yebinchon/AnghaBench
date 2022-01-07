; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec.c__kexec_image_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec.c__kexec_image_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s:%d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  kexec kimage info:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    type:        %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    start:       %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"    head:        %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"    nr_segments: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.kimage*)* @_kexec_image_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_kexec_image_info(i8* %0, i32 %1, %struct.kimage* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kimage*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kimage* %2, %struct.kimage** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.kimage*, %struct.kimage** %6, align 8
  %13 = getelementptr inbounds %struct.kimage, %struct.kimage* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load %struct.kimage*, %struct.kimage** %6, align 8
  %17 = getelementptr inbounds %struct.kimage, %struct.kimage* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load %struct.kimage*, %struct.kimage** %6, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.kimage*, %struct.kimage** %6, align 8
  %25 = getelementptr inbounds %struct.kimage, %struct.kimage* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %26)
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %75, %3
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.kimage*, %struct.kimage** %6, align 8
  %31 = getelementptr inbounds %struct.kimage, %struct.kimage* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.kimage*, %struct.kimage** %6, align 8
  %37 = getelementptr inbounds %struct.kimage, %struct.kimage* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kimage*, %struct.kimage** %6, align 8
  %44 = getelementptr inbounds %struct.kimage, %struct.kimage* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kimage*, %struct.kimage** %6, align 8
  %51 = getelementptr inbounds %struct.kimage, %struct.kimage* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %49, %56
  %58 = load %struct.kimage*, %struct.kimage** %6, align 8
  %59 = getelementptr inbounds %struct.kimage, %struct.kimage* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kimage*, %struct.kimage** %6, align 8
  %66 = getelementptr inbounds %struct.kimage, %struct.kimage* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sdiv i32 %71, %72
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %35, i32 %42, i32 %57, i32 %64, i32 %73)
  br label %75

75:                                               ; preds = %34
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %28

78:                                               ; preds = %28
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
