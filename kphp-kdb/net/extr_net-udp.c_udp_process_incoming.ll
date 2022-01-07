; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_process_incoming.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_process_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { %struct.udp_message*, %struct.udp_message*, i64, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.udp_message = type { i32, %struct.udp_message* }
%struct.TYPE_2__ = type { i32 (%struct.udp_socket*, %struct.udp_message*)*, i32 (%struct.udp_socket*, %struct.udp_message*)* }

@.str = private unnamed_addr constant [105 x i8] c"udp_process_incoming(%d): %d messages in receive queue (%d bytes); %d messages in send queue (%d bytes)\0A\00", align 1
@UMF_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_process_incoming(%struct.udp_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_socket*, align 8
  %4 = alloca %struct.udp_message*, align 8
  %5 = alloca %struct.udp_message*, align 8
  %6 = alloca i32, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %3, align 8
  %7 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %8 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %11 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %14 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %17 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %20 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12, i64 %15, i32 %18, i32 %21)
  %23 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %24 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %23, i32 0, i32 1
  %25 = load %struct.udp_message*, %struct.udp_message** %24, align 8
  store %struct.udp_message* %25, %struct.udp_message** %5, align 8
  %26 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %27 = icmp ne %struct.udp_message* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %68, %29
  %31 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  store %struct.udp_message* %31, %struct.udp_message** %4, align 8
  %32 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %33 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %32, i32 0, i32 1
  %34 = load %struct.udp_message*, %struct.udp_message** %33, align 8
  store %struct.udp_message* %34, %struct.udp_message** %5, align 8
  %35 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %36 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %35, i32 0, i32 1
  store %struct.udp_message* null, %struct.udp_message** %36, align 8
  %37 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %38 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @UMF_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %30
  %44 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %45 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.udp_socket*, %struct.udp_message*)*, i32 (%struct.udp_socket*, %struct.udp_message*)** %47, align 8
  %49 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %50 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %51 = call i32 %48(%struct.udp_socket* %49, %struct.udp_message* %50)
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %30
  %53 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %54 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.udp_socket*, %struct.udp_message*)*, i32 (%struct.udp_socket*, %struct.udp_message*)** %56, align 8
  %58 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %59 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %60 = call i32 %57(%struct.udp_socket* %58, %struct.udp_message* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.udp_message*, %struct.udp_message** %4, align 8
  %66 = call i32 @free_udp_message(%struct.udp_message* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.udp_message*, %struct.udp_message** %5, align 8
  %70 = icmp ne %struct.udp_message* %69, null
  br i1 %70, label %30, label %71

71:                                               ; preds = %68
  %72 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %73 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %75 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %77 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %76, i32 0, i32 0
  store %struct.udp_message* null, %struct.udp_message** %77, align 8
  %78 = load %struct.udp_socket*, %struct.udp_socket** %3, align 8
  %79 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %78, i32 0, i32 1
  store %struct.udp_message* null, %struct.udp_message** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %71, %28
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @free_udp_message(%struct.udp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
