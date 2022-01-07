; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_setattr_num.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_setattr_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tty** }
%struct.tty = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.attr = type { i32, i32, i32, i32 }

@_EROFS = common dso_local global i32 0, align 4
@attr_size = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@ttys_lock = common dso_local global i32 0, align 4
@pty_slave = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @devpts_setattr_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_setattr_num(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = bitcast %struct.attr* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 4
  store i32 %0, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @_EROFS, align 4
  store i32 %14, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @attr_size, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @_EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %15
  %23 = call i32 @lock(i32* @ttys_lock)
  %24 = load %struct.tty**, %struct.tty*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pty_slave, i32 0, i32 0), align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tty*, %struct.tty** %24, i64 %26
  %28 = load %struct.tty*, %struct.tty** %27, align 8
  store %struct.tty* %28, %struct.tty** %7, align 8
  %29 = load %struct.tty*, %struct.tty** %7, align 8
  %30 = icmp ne %struct.tty* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.tty*, %struct.tty** %7, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 0
  %35 = call i32 @lock(i32* %34)
  %36 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %56 [
    i32 128, label %38
    i32 130, label %44
    i32 129, label %50
  ]

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tty*, %struct.tty** %7, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  br label %56

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tty*, %struct.tty** %7, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  br label %56

50:                                               ; preds = %22
  %51 = getelementptr inbounds %struct.attr, %struct.attr* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tty*, %struct.tty** %7, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %22, %50, %44, %38
  %57 = load %struct.tty*, %struct.tty** %7, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 0
  %59 = call i32 @unlock(i32* %58)
  %60 = call i32 @unlock(i32* @ttys_lock)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %20, %13
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
