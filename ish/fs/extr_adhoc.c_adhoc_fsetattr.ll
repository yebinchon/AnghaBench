; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_adhoc.c_adhoc_fsetattr.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_adhoc.c_adhoc_fsetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.attr = type { i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i64, i64)* @adhoc_fsetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adhoc_fsetattr(%struct.fd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.attr, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = bitcast %struct.attr* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 4
  store %struct.fd* %0, %struct.fd** %6, align 8
  %10 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %42 [
    i32 128, label %12
    i32 131, label %18
    i32 130, label %24
    i32 129, label %40
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fd*, %struct.fd** %6, align 8
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  br label %42

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fd*, %struct.fd** %6, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.fd*, %struct.fd** %6, align 8
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S_IFMT, align 4
  %30 = and i32 %28, %29
  %31 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = or i32 %30, %35
  %37 = load %struct.fd*, %struct.fd** %6, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @_EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %3, %24, %18, %12
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
