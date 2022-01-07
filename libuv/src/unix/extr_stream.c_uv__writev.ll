; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__writev.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iovec*, i64)* @uv__writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__writev(i32 %0, %struct.iovec* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.iovec*, %struct.iovec** %6, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iovec*, %struct.iovec** %6, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @write(i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.iovec*, %struct.iovec** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @writev(i32 %20, %struct.iovec* %21, i64 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %10
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
