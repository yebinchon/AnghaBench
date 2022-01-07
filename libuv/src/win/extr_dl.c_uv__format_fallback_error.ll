; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv__format_fallback_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv__format_fallback_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@uv__format_fallback_error.fallback_error = internal constant [13 x i8] c"error: %1!d!\00", align 1
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @uv__format_fallback_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__format_fallback_error(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i64], align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %10 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = ptrtoint i32* %15 to i32
  %17 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  %18 = bitcast i64* %17 to i32*
  %19 = call i32 @FormatMessageA(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @uv__format_fallback_error.fallback_error, i64 0, i64 0), i32 0, i32 0, i32 %16, i32 0, i32* %18)
  ret void
}

declare dso_local i32 @FormatMessageA(i32, i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
