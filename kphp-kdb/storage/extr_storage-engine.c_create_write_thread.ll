; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_create_write_thread.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_create_write_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_data = type { i64, i8*, i32, i32, %struct.gather_data*, %struct.gather_data*, i32, i32, i8*, i8*, i64, i32*, %struct.connection* }
%struct.connection = type { i32 }

@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@active_gathers = common dso_local global i32 0, align 4
@write_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"create_write_thread: pthread_create failed. %m\0A\00", align 1
@active_write_threads = common dso_local global %struct.gather_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_write_thread(%struct.connection* %0, i64 %1, i32* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.connection*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gather_data*, align 8
  %20 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = call i32 @pthread_attr_init(i32* %18)
  %22 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %23 = call i32 @pthread_attr_setdetachstate(i32* %18, i32 %22)
  %24 = call i32 @pthread_attr_setstacksize(i32* %18, i32 4194304)
  %25 = load i32, i32* @active_gathers, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @active_gathers, align 4
  %27 = call %struct.gather_data* @zmalloc0(i32 88)
  store %struct.gather_data* %27, %struct.gather_data** %19, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %30 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.connection*, %struct.connection** %10, align 8
  %32 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %33 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %32, i32 0, i32 12
  store %struct.connection* %31, %struct.connection** %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %36 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %35, i32 0, i32 11
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %40 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %39, i32 0, i32 10
  store i64 %38, i64* %40, align 8
  %41 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %42 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i8* @tszmalloc(i64 %44)
  %46 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %47 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %46, i32 0, i32 9
  store i8* %45, i8** %47, align 8
  %48 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %49 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %48, i32 0, i32 9
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %8
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 %57, 1
  %59 = call i8* @tszmalloc(i64 %58)
  %60 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %61 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %63 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %62, i32 0, i32 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @strcpy(i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %55, %8
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %70 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %73 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %76 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %78 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %77, i32 0, i32 7
  %79 = load i32, i32* @write_thread, align 4
  %80 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %81 = bitcast %struct.gather_data* %80 to i8*
  %82 = call i32 @pthread_create(i32* %78, i32* %18, i32 %79, i8* %81)
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %67
  %86 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @pthread_attr_destroy(i32* %18)
  %88 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %89 = call i32 @free_gather(%struct.gather_data* %88)
  store i32 -1, i32* %9, align 4
  br label %116

90:                                               ; preds = %67
  %91 = call i32 @pthread_attr_destroy(i32* %18)
  %92 = call i32 (...) @mytime()
  %93 = load %struct.connection*, %struct.connection** %10, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %96 = call i64 @rpc_mode(%struct.gather_data* %95)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 (%struct.gather_data*, %struct.connection*, double)* @rpc_create_inbound_query, i32 (%struct.gather_data*, %struct.connection*, double)* @create_inbound_query
  %100 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %101 = load %struct.connection*, %struct.connection** %10, align 8
  %102 = call i32 %99(%struct.gather_data* %100, %struct.connection* %101, double 6.000000e+02)
  %103 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %104 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.gather_data*, %struct.gather_data** @active_write_threads, align 8
  %106 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %107 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %106, i32 0, i32 5
  store %struct.gather_data* %105, %struct.gather_data** %107, align 8
  %108 = load %struct.gather_data*, %struct.gather_data** @active_write_threads, align 8
  %109 = icmp ne %struct.gather_data* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %90
  %111 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  %112 = load %struct.gather_data*, %struct.gather_data** @active_write_threads, align 8
  %113 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %112, i32 0, i32 4
  store %struct.gather_data* %111, %struct.gather_data** %113, align 8
  br label %114

114:                                              ; preds = %110, %90
  %115 = load %struct.gather_data*, %struct.gather_data** %19, align 8
  store %struct.gather_data* %115, %struct.gather_data** @active_write_threads, align 8
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %85
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i32) #1

declare dso_local %struct.gather_data* @zmalloc0(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @tszmalloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @free_gather(%struct.gather_data*) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i64 @rpc_mode(%struct.gather_data*) #1

declare dso_local i32 @rpc_create_inbound_query(%struct.gather_data*, %struct.connection*, double) #1

declare dso_local i32 @create_inbound_query(%struct.gather_data*, %struct.connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
