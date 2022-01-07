; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_epoll_wait.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_epoll_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.pollfd* }
%struct.pollfd = type { i32, i32 }
%struct.epoll_event = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @epoll_wait(%struct.TYPE_3__* %0, %struct.epoll_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.epoll_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pollfd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.epoll_event, align 4
  %17 = alloca %struct.pollfd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @_SET_FDS_MSGS(i32 %18, i32 1, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.pollfd*, %struct.pollfd** %25, align 8
  store %struct.pollfd* %26, %struct.pollfd** %11, align 8
  %27 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @poll(%struct.pollfd* %27, i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %125

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @_NFDS(i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @_NMSGS(i32 %38)
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %120, %35
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %47, %41
  %56 = phi i1 [ false, %47 ], [ false, %41 ], [ %54, %51 ]
  br i1 %56, label %57, label %123

57:                                               ; preds = %55
  %58 = load %struct.pollfd*, %struct.pollfd** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %58, i64 %60
  store %struct.pollfd* %61, %struct.pollfd** %17, align 8
  %62 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %63 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %57
  br label %120

72:                                               ; preds = %66
  %73 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %74 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %16, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %16, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @POLLIN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %72
  %88 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %89 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @POLLOUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %13, align 4
  br label %110

97:                                               ; preds = %87, %72
  %98 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %99 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @POLLIN, align 4
  %102 = load i32, i32* @POLLOUT, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %97
  br label %110

110:                                              ; preds = %109, %94
  %111 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %112 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  %113 = load %struct.epoll_event*, %struct.epoll_event** %7, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %113, i64 %116
  %118 = bitcast %struct.epoll_event* %117 to i8*
  %119 = bitcast %struct.epoll_event* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  br label %120

120:                                              ; preds = %110, %71
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %41

123:                                              ; preds = %55
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %33
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @_SET_FDS_MSGS(i32, i32, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @_NFDS(i32) #1

declare dso_local i32 @_NMSGS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
