; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_alloc_new_cluster.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_alloc_new_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Allocating new cluster\0A\00", align 1
@BINLOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_BINLOG_SIZE = common dso_local global i32 0, align 4
@CRC64_ARRAY_STEP_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cluster* @alloc_new_cluster() #0 {
  %1 = alloca %struct.cluster*, align 8
  %2 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %3 = call %struct.cluster* @zmalloc0(i32 40)
  store %struct.cluster* %3, %struct.cluster** %1, align 8
  %4 = load i32, i32* @BINLOG_BUFFER_SIZE, align 4
  %5 = mul nsw i32 %4, 2
  %6 = call i8* @malloc(i32 %5)
  %7 = load %struct.cluster*, %struct.cluster** %1, align 8
  %8 = getelementptr inbounds %struct.cluster, %struct.cluster* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.cluster*, %struct.cluster** %1, align 8
  %10 = getelementptr inbounds %struct.cluster, %struct.cluster* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load %struct.cluster*, %struct.cluster** %1, align 8
  %14 = getelementptr inbounds %struct.cluster, %struct.cluster* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @BINLOG_BUFFER_SIZE, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %15, i64 %18
  %20 = load %struct.cluster*, %struct.cluster** %1, align 8
  %21 = getelementptr inbounds %struct.cluster, %struct.cluster* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.cluster*, %struct.cluster** %1, align 8
  %23 = getelementptr inbounds %struct.cluster, %struct.cluster* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.cluster*, %struct.cluster** %1, align 8
  %26 = getelementptr inbounds %struct.cluster, %struct.cluster* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.cluster*, %struct.cluster** %1, align 8
  %28 = getelementptr inbounds %struct.cluster, %struct.cluster* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.cluster*, %struct.cluster** %1, align 8
  %31 = getelementptr inbounds %struct.cluster, %struct.cluster* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @MAX_BINLOG_SIZE, align 4
  %33 = load i32, i32* @CRC64_ARRAY_STEP_LOG, align 4
  %34 = ashr i32 %32, %33
  %35 = mul nsw i32 %34, 8
  %36 = call i8* @malloc(i32 %35)
  %37 = load %struct.cluster*, %struct.cluster** %1, align 8
  %38 = getelementptr inbounds %struct.cluster, %struct.cluster* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.cluster*, %struct.cluster** %1, align 8
  %40 = getelementptr inbounds %struct.cluster, %struct.cluster* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @assert(i8* %41)
  %43 = load %struct.cluster*, %struct.cluster** %1, align 8
  ret %struct.cluster* %43
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local %struct.cluster* @zmalloc0(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
