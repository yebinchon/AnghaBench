; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i32 }
%struct.tl_saved_query = type { i32, i32, %struct.aio_connection** }

@Connections = common dso_local global i32* null, align 8
@default_tl_aio_metafile_query_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Creating aio for rpc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_aio_start(%struct.aio_connection** %0, i32 %1, double %2, %struct.tl_saved_query* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aio_connection**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.tl_saved_query*, align 8
  %10 = alloca i32, align 4
  store %struct.aio_connection** %0, %struct.aio_connection*** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store %struct.tl_saved_query* %3, %struct.tl_saved_query** %9, align 8
  %11 = load %struct.tl_saved_query*, %struct.tl_saved_query** %9, align 8
  %12 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %11, i32 0, i32 2
  %13 = load %struct.aio_connection**, %struct.aio_connection*** %12, align 8
  %14 = ptrtoint %struct.aio_connection** %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.tl_saved_query*, %struct.tl_saved_query** %9, align 8
  %17 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

27:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.aio_connection**, %struct.aio_connection*** %6, align 8
  %34 = ptrtoint %struct.aio_connection** %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.aio_connection**, %struct.aio_connection*** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.aio_connection*, %struct.aio_connection** %36, i64 %38
  %40 = load %struct.aio_connection*, %struct.aio_connection** %39, align 8
  %41 = load i32*, i32** @Connections, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load double, double* %8, align 8
  %44 = load %struct.tl_saved_query*, %struct.tl_saved_query** %9, align 8
  %45 = call i32 @tl_create_aio_query(%struct.aio_connection* %40, i32* %42, double %43, i32* @default_tl_aio_metafile_query_type, %struct.tl_saved_query* %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tl_saved_query*, %struct.tl_saved_query** %9, align 8
  %52 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.tl_saved_query*, %struct.tl_saved_query** %9, align 8
  %57 = getelementptr inbounds %struct.tl_saved_query, %struct.tl_saved_query* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_create_aio_query(%struct.aio_connection*, i32*, double, i32*, %struct.tl_saved_query*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
