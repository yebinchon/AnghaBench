; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_mem.c_mem_open.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_mem.c_mem_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_ops = type { i32 (i32, i32, %struct.fd*)*, i32 }
%struct.fd = type { i32* }

@mem_devs = common dso_local global %struct.dev_ops** null, align 8
@_ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.fd*)* @mem_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_open(i32 %0, i32 %1, %struct.fd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd*, align 8
  %8 = alloca %struct.dev_ops*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.fd* %2, %struct.fd** %7, align 8
  %9 = load %struct.dev_ops**, %struct.dev_ops*** @mem_devs, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dev_ops*, %struct.dev_ops** %9, i64 %11
  %13 = load %struct.dev_ops*, %struct.dev_ops** %12, align 8
  store %struct.dev_ops* %13, %struct.dev_ops** %8, align 8
  %14 = load %struct.dev_ops*, %struct.dev_ops** %8, align 8
  %15 = icmp eq %struct.dev_ops* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @_ENXIO, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.dev_ops*, %struct.dev_ops** %8, align 8
  %20 = getelementptr inbounds %struct.dev_ops, %struct.dev_ops* %19, i32 0, i32 1
  %21 = load %struct.fd*, %struct.fd** %7, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.dev_ops*, %struct.dev_ops** %8, align 8
  %24 = getelementptr inbounds %struct.dev_ops, %struct.dev_ops* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, %struct.fd*)*, i32 (i32, i32, %struct.fd*)** %24, align 8
  %26 = icmp ne i32 (i32, i32, %struct.fd*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.dev_ops*, %struct.dev_ops** %8, align 8
  %30 = getelementptr inbounds %struct.dev_ops, %struct.dev_ops* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, %struct.fd*)*, i32 (i32, i32, %struct.fd*)** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.fd*, %struct.fd** %7, align 8
  %35 = call i32 %31(i32 %32, i32 %33, %struct.fd* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %27, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
