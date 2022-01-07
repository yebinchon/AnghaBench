; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_fd.c_fd_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_fd.c_fd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_chan = type { i32, i8*, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8**)* @fd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_open(i32 %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.fd_chan*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.fd_chan*
  store %struct.fd_chan* %15, %struct.fd_chan** %12, align 8
  %16 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %17 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %5
  %21 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %22 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @isatty(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %28 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %31 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %30, i32 0, i32 2
  %32 = call i32 @tcgetattr(i32 %29, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = call i32 @CATCH_EINTR(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %63

38:                                               ; preds = %26
  %39 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %40 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @raw(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %63

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %20, %5
  %49 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %50 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %53 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %57 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %11, align 8
  store i8* %58, i8** %59, align 8
  %60 = load %struct.fd_chan*, %struct.fd_chan** %12, align 8
  %61 = getelementptr inbounds %struct.fd_chan, %struct.fd_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %48, %45, %36
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @CATCH_EINTR(i32) #1

declare dso_local i32 @tcgetattr(i32, i32*) #1

declare dso_local i32 @raw(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
