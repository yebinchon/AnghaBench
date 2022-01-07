; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_tunnel.c_on_write_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_tunnel.c_on_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.st_h2o_tunnel_t* }
%struct.TYPE_6__ = type { i32 }
%struct.st_h2o_tunnel_t = type { %struct.TYPE_5__** }

@on_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @on_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_write_complete(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_tunnel_t*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %8, align 8
  store %struct.st_h2o_tunnel_t* %9, %struct.st_h2o_tunnel_t** %5, align 8
  %10 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %11 = icmp ne %struct.st_h2o_tunnel_t* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %15 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %23 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = icmp eq %struct.TYPE_5__* %26, %27
  br label %29

29:                                               ; preds = %21, %2
  %30 = phi i1 [ true, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %37 = call i32 @close_connection(%struct.st_h2o_tunnel_t* %36)
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %40 = call i32 @reset_timeout(%struct.st_h2o_tunnel_t* %39)
  %41 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %42 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = icmp eq %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %50 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %6, align 8
  br label %60

54:                                               ; preds = %38
  %55 = load %struct.st_h2o_tunnel_t*, %struct.st_h2o_tunnel_t** %5, align 8
  %56 = getelementptr inbounds %struct.st_h2o_tunnel_t, %struct.st_h2o_tunnel_t* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %57, i64 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %6, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @h2o_buffer_consume(%struct.TYPE_6__** %62, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = load i32, i32* @on_read, align 4
  %71 = call i32 @h2o_socket_read_start(%struct.TYPE_5__* %69, i32 %70)
  br label %72

72:                                               ; preds = %60, %35
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close_connection(%struct.st_h2o_tunnel_t*) #1

declare dso_local i32 @reset_timeout(%struct.st_h2o_tunnel_t*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
