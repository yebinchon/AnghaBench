; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_lstat.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_uv_fs_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_FS_LSTAT = common dso_local global i32 0, align 4
@POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fs_lstat(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @UV_FS_LSTAT, align 4
  %12 = call i32 @INIT(i32 %11)
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @fs__capture_path(i32* %13, i8* %14, i32* null, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @uv_translate_sys_error(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @POST, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @INIT(i32) #1

declare dso_local i32 @fs__capture_path(i32*, i8*, i32*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
