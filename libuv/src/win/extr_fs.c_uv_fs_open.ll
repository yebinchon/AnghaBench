; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_open.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@UV_FS_OPEN = common dso_local global i32 0, align 4
@POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_open(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @UV_FS_OPEN, align 4
  %16 = call i32 @INIT(i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @fs__capture_path(%struct.TYPE_8__* %17, i8* %18, i32* null, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @uv_translate_sys_error(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @POST, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @INIT(i32) #1

declare dso_local i32 @fs__capture_path(%struct.TYPE_8__*, i8*, i32*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
