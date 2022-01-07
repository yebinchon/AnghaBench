; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_create_stdio.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_create_stdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8** }
%struct.fd = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@O_RDWR_ = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@DEV_CHAR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_stdio(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @O_RDWR_, align 4
  %12 = call %struct.fd* @generic_open(i8* %10, i32 %11, i32 0)
  store %struct.fd* %12, %struct.fd** %8, align 8
  %13 = load %struct.fd*, %struct.fd** %8, align 8
  %14 = call i64 @IS_ERR(%struct.fd* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = call %struct.fd* @adhoc_fd_create(i32* null)
  store %struct.fd* %17, %struct.fd** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_make(i32 %18, i32 %19)
  %21 = load %struct.fd*, %struct.fd** %8, align 8
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @S_IFCHR, align 4
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.fd*, %struct.fd** %8, align 8
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @O_RDWR_, align 4
  %31 = load %struct.fd*, %struct.fd** %8, align 8
  %32 = getelementptr inbounds %struct.fd, %struct.fd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DEV_CHAR, align 4
  %36 = load %struct.fd*, %struct.fd** %8, align 8
  %37 = call i32 @dev_open(i32 %33, i32 %34, i32 %35, %struct.fd* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %70

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.fd*, %struct.fd** %8, align 8
  %45 = getelementptr inbounds %struct.fd, %struct.fd* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.fd*, %struct.fd** %8, align 8
  %47 = call i8* @fd_retain(%struct.fd* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %47, i8** %53, align 8
  %54 = load %struct.fd*, %struct.fd** %8, align 8
  %55 = call i8* @fd_retain(%struct.fd* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %55, i8** %61, align 8
  %62 = load %struct.fd*, %struct.fd** %8, align 8
  %63 = call i8* @fd_retain(%struct.fd* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  store i8* %63, i8** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %43, %40
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.fd* @generic_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fd*) #1

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

declare dso_local i32 @dev_make(i32, i32) #1

declare dso_local i32 @dev_open(i32, i32, i32, %struct.fd*) #1

declare dso_local i8* @fd_retain(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
