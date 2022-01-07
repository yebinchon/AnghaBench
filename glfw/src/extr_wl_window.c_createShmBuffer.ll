; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createShmBuffer.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createShmBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wl_buffer = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.wl_shm_pool = type { i32 }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Wayland: Creating a buffer file for %d B failed: %m\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Wayland: mmap failed: %m\00", align 1
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@WL_SHM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wl_buffer* (%struct.TYPE_6__*)* @createShmBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wl_buffer* @createShmBuffer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.wl_buffer*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.wl_shm_pool*, align 8
  %5 = alloca %struct.wl_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @createAnonymousFile(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32)
  store %struct.wl_buffer* null, %struct.wl_buffer** %2, align 8
  br label %133

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PROT_READ, align 4
  %37 = load i32, i32* @PROT_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MAP_SHARED, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @mmap(i32* null, i32 %35, i32 %38, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %47 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @close(i32 %48)
  store %struct.wl_buffer* null, %struct.wl_buffer** %2, align 8
  br label %133

50:                                               ; preds = %34
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.wl_shm_pool* @wl_shm_create_pool(i32 %51, i32 %52, i32 %53)
  store %struct.wl_shm_pool* %54, %struct.wl_shm_pool** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %111, %50
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = icmp slt i32 %63, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %62
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %13, align 4
  %82 = mul i32 %80, %81
  %83 = udiv i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  store i8 %84, i8* %85, align 1
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* %13, align 4
  %92 = mul i32 %90, %91
  %93 = udiv i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = mul i32 %100, %101
  %103 = udiv i32 %102, 255
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* %13, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %12, align 8
  store i8 %108, i8* %109, align 1
  br label %111

111:                                              ; preds = %72
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8* %115, i8** %11, align 8
  br label %62

116:                                              ; preds = %62
  %117 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %4, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @WL_SHM_FORMAT_ARGB8888, align 4
  %126 = call %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool* %117, i32 0, i32 %120, i32 %123, i32 %124, i32 %125)
  store %struct.wl_buffer* %126, %struct.wl_buffer** %5, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @munmap(i8* %127, i32 %128)
  %130 = load %struct.wl_shm_pool*, %struct.wl_shm_pool** %4, align 8
  %131 = call i32 @wl_shm_pool_destroy(%struct.wl_shm_pool* %130)
  %132 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  store %struct.wl_buffer* %132, %struct.wl_buffer** %2, align 8
  br label %133

133:                                              ; preds = %116, %45, %30
  %134 = load %struct.wl_buffer*, %struct.wl_buffer** %2, align 8
  ret %struct.wl_buffer* %134
}

declare dso_local i32 @createAnonymousFile(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.wl_shm_pool* @wl_shm_create_pool(i32, i32, i32) #1

declare dso_local %struct.wl_buffer* @wl_shm_pool_create_buffer(%struct.wl_shm_pool*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @wl_shm_pool_destroy(%struct.wl_shm_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
