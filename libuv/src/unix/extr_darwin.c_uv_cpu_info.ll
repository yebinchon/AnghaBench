; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64* }

@_SC_CLK_TCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"machdep.cpu.brand_string\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hw.model\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"hw.cpufrequency\00", align 1
@PROCESSOR_CPU_LOAD_INFO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_7__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32, i32* @_SC_CLK_TCK, align 4
  %17 = call i64 @sysconf(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = udiv i32 1000, %19
  store i32 %20, i32* %7, align 4
  store i64 512, i64* %10, align 8
  %21 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), [512 x i8]* %8, i64* %10, i8* null, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), [512 x i8]* %8, i64* %10, i8* null, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @UV__ERR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %150

29:                                               ; preds = %23, %2
  store i64 4, i64* %10, align 8
  %30 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %9, i64* %10, i8* null, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @UV__ERR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %150

35:                                               ; preds = %29
  %36 = call i32 (...) @mach_host_self()
  %37 = load i32, i32* @PROCESSOR_CPU_LOAD_INFO, align 4
  %38 = bitcast %struct.TYPE_8__** %14 to i32*
  %39 = call i64 @host_processor_info(i32 %36, i32 %37, i32* %12, i32* %38, i32* %13)
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @UV_EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %150

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 32
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_7__* @uv__malloc(i32 %48)
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = call i32 (...) @mach_task_self()
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = ptrtoint %struct.TYPE_8__* %56 to i32
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @vm_deallocate(i32 %55, i32 %57, i32 %58)
  %60 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %60, i32* %3, align 4
  br label %150

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %141, %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %144

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %15, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %7, align 4
  %84 = mul i32 %82, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 3
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %7, align 4
  %98 = mul i32 %96, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %7, align 4
  %112 = mul i32 %110, %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 2
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %7, align 4
  %126 = mul i32 %124, %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %134 = call i32 @uv__strdup(i8* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = udiv i32 %137, 1000000
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %68
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %64

144:                                              ; preds = %64
  %145 = call i32 (...) @mach_task_self()
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %147 = ptrtoint %struct.TYPE_8__* %146 to i32
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @vm_deallocate(i32 %145, i32 %147, i32 %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %54, %42, %32, %26
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @sysctlbyname(i8*, ...) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i64 @host_processor_info(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local %struct.TYPE_7__* @uv__malloc(i32) #1

declare dso_local i32 @vm_deallocate(i32, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @uv__strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
