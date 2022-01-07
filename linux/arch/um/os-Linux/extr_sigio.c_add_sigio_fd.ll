; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_sigio.c_add_sigio_fd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_sigio.c_add_sigio_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.pollfd* }
%struct.pollfd = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.pollfd* }

@all_sigio_fds = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@current_poll = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@next_poll = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_sigio_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pollfd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = call i32 (...) @sigio_lock()
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @all_sigio_fds, i32 0, i32 0), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @all_sigio_fds, i32 0, i32 1), align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i64 %15
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @all_sigio_fds, i32 0, i32 0), align 8
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %80

31:                                               ; preds = %26
  %32 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @all_sigio_fds, i32 0, i32 1), align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i64 %34
  store %struct.pollfd* %35, %struct.pollfd** %3, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %51, %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_poll, i32 0, i32 0), align 8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_poll, i32 0, i32 1), align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %80

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_poll, i32 0, i32 0), align 8
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @need_poll(%struct.TYPE_6__* @next_poll, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %80

62:                                               ; preds = %54
  %63 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @next_poll, i32 0, i32 1), align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_poll, i32 0, i32 1), align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_poll, i32 0, i32 0), align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(%struct.pollfd* %63, %struct.TYPE_7__* %64, i32 %68)
  %70 = load %struct.pollfd*, %struct.pollfd** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @next_poll, i32 0, i32 1), align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i64 %72
  %74 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %75 = bitcast %struct.pollfd* %73 to i8*
  %76 = bitcast %struct.pollfd* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @next_poll, i32 0, i32 0), align 8
  %79 = call i32 (...) @update_thread()
  br label %80

80:                                               ; preds = %62, %61, %49, %30
  %81 = call i32 (...) @sigio_unlock()
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @sigio_lock(...) #1

declare dso_local i32 @need_poll(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(%struct.pollfd*, %struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_thread(...) #1

declare dso_local i32 @sigio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
