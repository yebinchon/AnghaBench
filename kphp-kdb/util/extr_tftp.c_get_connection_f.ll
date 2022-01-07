; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_get_connection_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_get_connection_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@C = common dso_local global %struct.TYPE_9__** null, align 8
@tftp_udp_connections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @get_connection_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 65535
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %61

13:                                               ; preds = %9
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @C, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %14, i64 %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %3, align 8
  br label %61

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* @tftp_udp_connections, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @tftp_udp_connections, align 4
  %29 = call %struct.TYPE_9__* @zmalloc0(i32 8)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %6, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 512, i32* %31, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @C, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %35
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %36, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %3, align 8
  br label %61

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load i32, i32* @tftp_udp_connections, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @tftp_udp_connections, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @fd_close(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @tftp_conn_close_handles(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32 @zfree(%struct.TYPE_9__* %53, i32 8)
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @C, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %55, i64 %57
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %58, align 8
  br label %59

59:                                               ; preds = %44, %37
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %3, align 8
  br label %61

61:                                               ; preds = %59, %26, %21, %12
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %62
}

declare dso_local %struct.TYPE_9__* @zmalloc0(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fd_close(i32*) #1

declare dso_local i32 @tftp_conn_close_handles(%struct.TYPE_9__*) #1

declare dso_local i32 @zfree(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
