; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv__getaddrinfo_translate_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv__getaddrinfo_translate_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EAI_AGAIN = common dso_local global i32 0, align 4
@UV_EAI_BADFLAGS = common dso_local global i32 0, align 4
@UV_EAI_FAIL = common dso_local global i32 0, align 4
@UV_EAI_FAMILY = common dso_local global i32 0, align 4
@UV_EAI_MEMORY = common dso_local global i32 0, align 4
@UV_EAI_NONAME = common dso_local global i32 0, align 4
@UV_EAI_SERVICE = common dso_local global i32 0, align 4
@UV_EAI_SOCKTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__getaddrinfo_translate_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 130, label %6
    i32 134, label %8
    i32 131, label %10
    i32 135, label %12
    i32 128, label %14
    i32 132, label %16
    i32 129, label %18
    i32 133, label %20
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

6:                                                ; preds = %1
  %7 = load i32, i32* @UV_EAI_AGAIN, align 4
  store i32 %7, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @UV_EAI_BADFLAGS, align 4
  store i32 %9, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @UV_EAI_FAIL, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @UV_EAI_FAMILY, align 4
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @UV_EAI_MEMORY, align 4
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @UV_EAI_NONAME, align 4
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @UV_EAI_SERVICE, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @UV_EAI_SOCKTYPE, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @uv_translate_sys_error(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
