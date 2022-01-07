; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_readdir.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dir_entry = type { i32, i32 }

@MAX_PTYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.dir_entry*)* @devpts_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_readdir(%struct.fd* %0, %struct.dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %5, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.fd*, %struct.fd** %4, align 8
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_PTYS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @devpts_pty_exists(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %17

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_PTYS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %50

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.fd*, %struct.fd** %4, align 8
  %40 = getelementptr inbounds %struct.fd, %struct.fd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %42 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 3
  %48 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %49 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %36, %35
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @devpts_pty_exists(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
