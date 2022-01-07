; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_getaddrinfo.c_uv__getaddrinfo_translate_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_getaddrinfo.c_uv__getaddrinfo_translate_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EAI_ADDRFAMILY = common dso_local global i32 0, align 4
@UV_EAI_AGAIN = common dso_local global i32 0, align 4
@UV_EAI_BADFLAGS = common dso_local global i32 0, align 4
@UV_EAI_BADHINTS = common dso_local global i32 0, align 4
@UV_EAI_CANCELED = common dso_local global i32 0, align 4
@UV_EAI_FAIL = common dso_local global i32 0, align 4
@UV_EAI_FAMILY = common dso_local global i32 0, align 4
@UV_EAI_MEMORY = common dso_local global i32 0, align 4
@UV_EAI_NODATA = common dso_local global i32 0, align 4
@UV_EAI_NONAME = common dso_local global i32 0, align 4
@UV_EAI_OVERFLOW = common dso_local global i32 0, align 4
@UV_EAI_PROTOCOL = common dso_local global i32 0, align 4
@UV_EAI_SERVICE = common dso_local global i32 0, align 4
@UV_EAI_SOCKTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown EAI_* error code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__getaddrinfo_translate_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %37 [
    i32 0, label %5
    i32 142, label %6
    i32 141, label %8
    i32 140, label %10
    i32 139, label %12
    i32 138, label %14
    i32 137, label %16
    i32 136, label %18
    i32 135, label %20
    i32 134, label %22
    i32 133, label %24
    i32 132, label %26
    i32 131, label %28
    i32 130, label %30
    i32 129, label %32
    i32 128, label %34
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

6:                                                ; preds = %1
  %7 = load i32, i32* @UV_EAI_ADDRFAMILY, align 4
  store i32 %7, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  %9 = load i32, i32* @UV_EAI_AGAIN, align 4
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* @UV_EAI_BADFLAGS, align 4
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* @UV_EAI_BADHINTS, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load i32, i32* @UV_EAI_CANCELED, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @UV_EAI_FAIL, align 4
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load i32, i32* @UV_EAI_FAMILY, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* @UV_EAI_MEMORY, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load i32, i32* @UV_EAI_NODATA, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load i32, i32* @UV_EAI_NONAME, align 4
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load i32, i32* @UV_EAI_OVERFLOW, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load i32, i32* @UV_EAI_PROTOCOL, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %1
  %31 = load i32, i32* @UV_EAI_SERVICE, align 4
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* @UV_EAI_SOCKTYPE, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @UV__ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %1
  %38 = call i32 @assert(i32 0)
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
