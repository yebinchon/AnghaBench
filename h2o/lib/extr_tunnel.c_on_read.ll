; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_tunnel.c_on_read.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_tunnel.c_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.st_h2o_tunnel_t* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.st_h2o_tunnel_t = type { %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32, i32 }

@on_write_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_read(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_tunnel_t*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %9, align 8
  store %struct.st_h2o_tunnel_t* %10, %struct.st_h2o_tunnel_t** %5, align 8
  %11 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %12 = icmp ne %struct.st_h2o_tunnel_t* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %16 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = icmp eq %struct.TYPE_9__* %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %24 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = icmp eq %struct.TYPE_9__* %27, %28
  br label %30

30:                                               ; preds = %22, %2
  %31 = phi i1 [ true, %2 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %38 = call i32 @close_connection(%struct.st_h2o_tunnel_t* %37)
  br label %85

39:                                               ; preds = %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %85

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = call i32 @h2o_socket_read_stop(%struct.TYPE_9__* %46)
  %48 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %49 = call i32 @reset_timeout(%struct.st_h2o_tunnel_t* %48)
  %50 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %51 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = icmp eq %struct.TYPE_9__* %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %59 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %6, align 8
  br label %69

63:                                               ; preds = %45
  %64 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %65 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %6, align 8
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = load i32, i32* @on_write_complete, align 4
  %84 = call i32 @h2o_socket_write(%struct.TYPE_9__* %82, %struct.TYPE_10__* %7, i32 1, i32 %83)
  br label %85

85:                                               ; preds = %69, %44, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close_connection(%struct.st_h2o_tunnel_t*) #1

declare dso_local i32 @h2o_socket_read_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @reset_timeout(%struct.st_h2o_tunnel_t*) #1

declare dso_local i32 @h2o_socket_write(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
