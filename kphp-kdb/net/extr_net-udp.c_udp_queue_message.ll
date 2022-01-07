; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_queue_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32, %struct.TYPE_4__*, i32, i32, %struct.udp_message*, %struct.udp_message* }
%struct.TYPE_4__ = type { i32 }
%struct.udp_message = type { %struct.udp_message*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@RM_INIT_MAGIC = common dso_local global i64 0, align 8
@MAX_UDP_SEND_DATAGRAM = common dso_local global i64 0, align 8
@U_WORKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_queue_message(%struct.udp_socket* %0, %struct.udp_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.udp_socket*, align 8
  %5 = alloca %struct.udp_message*, align 8
  %6 = alloca i32, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %4, align 8
  store %struct.udp_message* %1, %struct.udp_message** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %8 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RM_INIT_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %16 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RM_INIT_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %23 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAX_UDP_SEND_DATAGRAM, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %89

29:                                               ; preds = %21
  %30 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %31 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %30, i32 0, i32 5
  %32 = load %struct.udp_message*, %struct.udp_message** %31, align 8
  %33 = icmp ne %struct.udp_message* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %36 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %37 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %36, i32 0, i32 4
  store %struct.udp_message* %35, %struct.udp_message** %37, align 8
  %38 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %39 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %38, i32 0, i32 5
  store %struct.udp_message* %35, %struct.udp_message** %39, align 8
  store i32 1, i32* %6, align 4
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %42 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %43 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %42, i32 0, i32 4
  %44 = load %struct.udp_message*, %struct.udp_message** %43, align 8
  %45 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %44, i32 0, i32 0
  store %struct.udp_message* %41, %struct.udp_message** %45, align 8
  %46 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %47 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %48 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %47, i32 0, i32 4
  store %struct.udp_message* %46, %struct.udp_message** %48, align 8
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %51 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %55 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %61 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %65 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %64, i32 0, i32 0
  store %struct.udp_message* null, %struct.udp_message** %65, align 8
  %66 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %67 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @U_WORKING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %77 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load %struct.udp_socket*, %struct.udp_socket** %4, align 8
  %84 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @put_event_into_heap(%struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %82, %75, %72
  br label %88

88:                                               ; preds = %87, %49
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %28
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @put_event_into_heap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
