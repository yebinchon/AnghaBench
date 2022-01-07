; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_findInterface.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_android-ifaddrs.c_findInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifaddrs* (i32, %struct.ifaddrs**, i32)* @findInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifaddrs* @findInterface(i32 %0, %struct.ifaddrs** %1, i32 %2) #0 {
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifaddrs**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ifaddrs** %1, %struct.ifaddrs*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ifaddrs**, %struct.ifaddrs*** %6, align 8
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %9, align 8
  br label %14

14:                                               ; preds = %34, %3
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %25 = bitcast %struct.ifaddrs* %24 to i8*
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @memcpy(i32* %11, i8* %27, i32 4)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  store %struct.ifaddrs* %33, %struct.ifaddrs** %4, align 8
  br label %41

34:                                               ; preds = %23
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 0
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %36, align 8
  store %struct.ifaddrs* %37, %struct.ifaddrs** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %14

40:                                               ; preds = %21
  store %struct.ifaddrs* null, %struct.ifaddrs** %4, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  ret %struct.ifaddrs* %42
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
