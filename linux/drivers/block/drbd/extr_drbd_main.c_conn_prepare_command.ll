; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_prepare_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_prepare_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.drbd_socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conn_prepare_command(%struct.drbd_connection* %0, %struct.drbd_socket* %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  %5 = alloca i8*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store %struct.drbd_socket* %1, %struct.drbd_socket** %4, align 8
  %6 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %7 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %10 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %11 = call i8* @__conn_prepare_command(%struct.drbd_connection* %9, %struct.drbd_socket* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %5, align 8
  ret i8* %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @__conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
