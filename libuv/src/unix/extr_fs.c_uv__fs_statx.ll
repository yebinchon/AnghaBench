; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_statx.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_fs.c_uv__fs_statx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.uv__statx = type { i32, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@UV_ENOSYS = common dso_local global i32 0, align 4
@uv__fs_statx.no_statx = internal global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.TYPE_19__*)* @uv__fs_statx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__fs_statx(i32 %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.uv__statx, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  %17 = load i32, i32* @UV_ENOSYS, align 4
  %18 = icmp ne i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = call i32 @STATIC_ASSERT(i32 %19)
  %21 = load i32, i32* @uv__fs_statx.no_statx, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %24, i32* %6, align 4
  br label %161

25:                                               ; preds = %5
  %26 = load i32, i32* @AT_FDCWD, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 4095, i32* %15, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, 4096
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @uv__statx(i32 %41, i8* %42, i32 %43, i32 %44, %struct.uv__statx* %12)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EINVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EPERM, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOSYS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %161

61:                                               ; preds = %56, %52, %48
  store i32 1, i32* @uv__fs_statx.no_statx, align 4
  %62 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %62, i32* %6, align 4
  br label %161

63:                                               ; preds = %40
  %64 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 256, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 14
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %67, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 15
  store i64 %70, i64* %72, align 8
  %73 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 14
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 11
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = getelementptr inbounds %struct.uv__statx, %struct.uv__statx* %12, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %63, %61, %60, %23
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @STATIC_ASSERT(i32) #1

declare dso_local i32 @uv__statx(i32, i8*, i32, i32, %struct.uv__statx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
