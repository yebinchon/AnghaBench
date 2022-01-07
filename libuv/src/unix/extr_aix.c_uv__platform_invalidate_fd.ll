; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv__platform_invalidate_fd.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv__platform_invalidate_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64* }
%struct.pollfd = type { i32 }
%struct.poll_ctl = type { i32, i32, i32 }

@PS_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv__platform_invalidate_fd(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.poll_ctl, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.pollfd*
  store %struct.pollfd* %27, %struct.pollfd** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %38 = icmp ne %struct.pollfd* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %45, i64 %46
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %53, i64 %54
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %40

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %2
  %63 = getelementptr inbounds %struct.poll_ctl, %struct.poll_ctl* %8, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @PS_DELETE, align 4
  %65 = getelementptr inbounds %struct.poll_ctl, %struct.poll_ctl* %8, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = getelementptr inbounds %struct.poll_ctl, %struct.poll_ctl* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @pollset_ctl(i64 %75, %struct.poll_ctl* %8, i32 1)
  br label %77

77:                                               ; preds = %72, %62
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pollset_ctl(i64, %struct.poll_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
