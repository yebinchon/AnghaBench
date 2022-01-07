; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_port_user.c_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_port_user.c_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_chan = type { i8*, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8**)* @port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_open(i32 %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.port_chan*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.port_chan*
  store %struct.port_chan* %16, %struct.port_chan** %12, align 8
  %17 = load %struct.port_chan*, %struct.port_chan** %12, align 8
  %18 = getelementptr inbounds %struct.port_chan, %struct.port_chan* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @port_wait(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %5
  %24 = load %struct.port_chan*, %struct.port_chan** %12, align 8
  %25 = getelementptr inbounds %struct.port_chan, %struct.port_chan* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.port_chan*, %struct.port_chan** %12, align 8
  %31 = getelementptr inbounds %struct.port_chan, %struct.port_chan* %30, i32 0, i32 1
  %32 = call i32 @tcgetattr(i32 %29, i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = call i32 @CATCH_EINTR(i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %52

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @raw(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %52

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %23, %5
  %47 = load %struct.port_chan*, %struct.port_chan** %12, align 8
  %48 = getelementptr inbounds %struct.port_chan, %struct.port_chan* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8**, i8*** %11, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %43, %36
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @port_wait(i32) #1

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @tcgetattr(i32, i32*) #1

declare dso_local i32 @raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
